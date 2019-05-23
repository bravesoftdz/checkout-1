unit backup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  stdCtrls, LZRW1KH, FileCtrl;

type
  TPercentage       = 0..100;
  TBackupMode       = (bmAll, bmIncremental);
  TRestoreMode      = (rmAll, rmNoOverwrite, rmNewer, rmExisting, rmExistingNewer);
  TProgressEvent    = procedure(Sender : TObject; Filename: String; Percent: TPercentage; var Continue: Boolean) of object;
  TNeedDiskEvent    = procedure(Sender : TObject; DiskID: word; var Continue: Boolean) of object;
  TRestoreFileEvent = procedure(Sender : TObject; var Filename: String; var DoRestore: Boolean) of object;

  TBackupFile = class(TComponent)
  private
    FBackupTitle: string;
    fMaxSize: Integer;
    fBackupMode: TBackupmode;
    fRestoreMode: TRestoremode;
    fSetArchiveFlag: Boolean;
    FilesTotal, SizeTotal, ProgressSize: Integer;
    CurrentFile: string;
    IsBusy, Continue: boolean;

    fRestoreFullPath : Boolean;
    fSaveFileID     : Boolean;

    fOnProgress: TProgressEvent;
    fOnNeedDisk: TNeedDiskEvent;
    fOnRestoreFile: TRestoreFileEvent;
    function  GetVersion: string;
    procedure SetVersion(dummy: string);
    procedure SetBackupMode(value: TBackupmode);
    procedure DeCompress(InStream, OutStream: TStream; DoWrite: Boolean);
  protected
  public
    function  Backup(const Filelist: TStrings; Target: string): boolean;
    function  Restore(Source: String; TargetPath: string): integer;
    function  GetArchiveTitle(Source: string): string;
    function  Busy: boolean;
    procedure Stop;
  published
    property Version: string read GetVersion write SetVersion;
    property BackupTitle: string read fBackupTitle write fBackupTitle;
    property BackupMode: TBackupmode read fBackupMode write SetBackupMode;
    property RestoreMode: TRestoremode read fRestoreMode write fRestoreMode;
    property MaxSize: Integer read fMaxSize write fMaxSize;
    property SetArchiveFlag: Boolean read fSetArchiveFlag write fSetArchiveFlag;
    property OnProgress: TProgressEvent read fOnProgress write fOnProgress;
    property OnNeedDisk: TNeedDiskEvent read fOnNeedDisk write fOnNeedDisk;
    property OnRestoreFile: TRestoreFileEvent read fOnRestoreFile write fOnRestoreFile;
    // below by Joao Paulo Antao
    property RestoreFullPath : Boolean  read fRestoreFullPath write fRestoreFullPath;
    property SaveFileID      : Boolean  read fSaveFileID write fSaveFileID;
  end;

const
  cVersion = '1.30';

  fSignature = 'ECS';
  errCantreadFile = 'Cannot read file';
  errCantwriteFile = 'Overwriting file failed';
  errCantreadArchive = 'Cannot read archive';
  errCantwriteArchive = 'Cannot write to archive';
  errInvalidfiletype = 'Invalid archive type';

procedure Register;

implementation


{ TBackupFile }

function TBackupFile.GetVersion: string;
begin
     result := cVersion;
end;
procedure TBackupFile.SetVersion(dummy: string);
begin
end;

procedure TBackupFile.SetBackupMode(value: TBackupmode);
begin
     if value <> fBackupMode then
     begin
          if value = bmIncremental then SetArchiveFlag := true;
          fBackupMode := value;
     end;
end;

function TBackupFile.Backup(const Filelist: TStrings; Target: string): boolean;
var
   CurDir     : String;
   PAux       : PChar;
   FileID     : TStringList;
   ext: string;

   // above by João Paulo.
   I,L: Integer;
   FA: integer;
   S: String;
   Files  : TStringlist;
   ActSize, Size: Longint;
   SStr, TStr: TFilestream;
   ArchiveNumber: Word;
   SR: TSearchRec;
   FindResult: Integer;

   procedure BackupFile;
   var
      InBuffer, OutBuffer: BufferArray;
      CompressedSize, BytesRead, FinalPos, SizePos, TotalSize,SizeBuf : LongInt;
   begin
      try
         TotalSize := 0;
         TStr.WriteBuffer(FSignature, SizeOf(FSignature));
         SizePos := TStr.Position;
         TStr.WriteBuffer(TotalSize, SizeOf(TotalSize));
         while (Size > 0) and Continue and ((TStr.position < (MaxSize-100)) or (MaxSize = 0)) do
         begin
              // Checa o espaço em disco independentimente.
              // Reserva 10k para FILE.ID
              if  (DiskFree(0)-10*1024) < size then break;

              BytesRead := SStr.Read(InBuffer, SizeOf(InBuffer)-10);
              CompressedSize := Compression(@InBuffer, @OutBuffer, BytesRead);
              TStr.WriteBuffer(CompressedSize, SizeOf(CompressedSize));
              TStr.WriteBuffer(OutBuffer, CompressedSize);
              TotalSize := TotalSize + CompressedSize + SizeOf(CompressedSize);
              Size := Size - (BytesRead);

              Application.processmessages;
              inc(ProgressSize, BytesRead);
              if assigned(fOnProgress) then fOnProgress(self, CurrentFile, (ProgressSize*100) div SizeTotal, Continue);
         end;
         FinalPos := TStr.Position;
         TStr.Position := SizePos;
         TStr.WriteBuffer(TotalSize, SizeOf(TotalSize));
         TStr.Position := FinalPos;

         if (Size > 0) and Continue then
         begin
                ext := ('00'+inttostr(ArchiveNumber));
                ext := copy(ext, length(ext)-2, 3);
                if fSaveFileID then
                begin
                     FileID.SaveToFile('FILE'+ext+'.ID');
                     FileID.Clear;
                     FileID.Add('DISK:'+IntToStr(ArchiveNumber+1));
                     FileID.Add('DATE:'+DateToStr(Date));
                     FileID.Add('TIME:'+TimeToStr(Time));
                end;

                inc(ArchiveNumber);
                ext := ('00'+inttostr(ArchiveNumber));
                ext := copy(ext, length(ext)-2, 3);

                S := 'NEXT:DISK'+Ext;
                L := length(s);
                TStr.writeBuffer(L, sizeof(L));    //Size of file name
                TStr.writeBuffer(PChar(s)^,L);     //file name

                TStr.free;

                if assigned(fOnNeedDisk) then fOnNeedDisk(self, ArchiveNumber, Continue)
                else Continue := MessageDlg('Por favor, insira o disco '+inttostr(ArchiveNumber), mtInformation, mbOKCancel, 0) = mrOK;

                if Continue then
                begin
                  Target := ChangeFileExt(target, '.'+ext);
                  TStr := TFilestream.create(Target, fmCreate);
                  TStr.seek(0, 0);
                end;
         end;
//       result := TotalSize + Sizeof(TotalSize) + Sizeof(FSignature);

      except
           raise Exception.create(errCantWriteArchive);
      end;
   end;
begin
     SetLength(CurDir,256);
     GetCurrentDirectory(256,PChar(CurDir));
     SetCurrentDirectory(PChar(ExtractFilepath(Target)));  //necessary for DiskFree(0)
     if fSaveFileID then FileID := TStringList.Create;
     // Above by Joao Paulo Antao

     IsBusy := true;
     Files := TStringlist.create;
     for I := 0 to Filelist.count-1 do
     begin
        FindResult := FindFirst(Filelist[i], faAnyFile, SR);
        while FindResult = 0 do
        begin
            if (SR.Name <> '.') and (SR.Name <> '..') then
            begin
              S := ExpandFilename(ExtractFilepath(Filelist[i])+SR.name);
              if BackupMode = bmAll then Files.add(S)
              else if (SR.Attr AND faArchive > 0)then Files.add(S);
            end;
            FindResult := FindNext(SR);
        end;
        FindClose(SR);
     end;
     result := false;
     Continue := true;
     if assigned(fOnProgress) then fOnProgress(self, '', 0, Continue);
     SizeTotal := 0;
     for I := 0 to files.count-1 do
         if Fileexists(files[i]) then
            try
               SStr := TFilestream.create(files[i], fmOpenRead or fmShareDenyNone);
               SizeTotal := SizeTotal + SStr.Size;
            finally
               SStr.free;
            end;

     try
       ArchiveNumber := 1;
       if fSaveFileID then
       begin
            FileID.Add('DISK:'+IntToStr(ArchiveNumber));
            FileID.Add('DATE:'+DateToStr(Date));
            FileID.Add('TIME:'+TimeToStr(Time));
            PAux:=AllocMem(50);
       end;

       TStr := TFilestream.create(Target, fmCreate);
       TStr.seek(0, 0);

       FilesTotal := files.count;
       L := length(fBackupTitle);
       TStr.writeBuffer(L, sizeof(L));    //Size of title
       TStr.writeBuffer(PChar(fBackupTitle)^,L);     //title
       TStr.writeBuffer(SizeTotal, sizeof(SizeTotal));    //Total Size of backup
       TStr.writeBuffer(FilesTotal, sizeof(FilesTotal));    //Total file count

       ProgressSize := 0;
     except
       raise Exception.create(errCantwriteArchive);
       Continue := false;
     end;

     for I := 0 to files.count-1 do
     begin
        if Fileexists(files[i]) and Continue then
        begin
             try
                CurrentFile := trim(files[i]);
                l := length(CurrentFile);
                TStr.writeBuffer(L, sizeof(L));    //Size of file name
                TStr.writeBuffer(PChar(Currentfile)^,L);     //file name

                try
                  SStr := TFilestream.create(Currentfile, fmOpenRead or fmShareDenyNone);
                  FA := FileGetDate(SStr.handle);
                  TStr.writeBuffer(FA, sizeof(FA));  //file age
                  Size := SStr.Size;
                  if fSaveFileID then
                  begin
                       StrPCopy(PAux,CurrentFile);
                       FillChar(PAux[Length(CurrentFile)],45-Length(CurrentFile),' ');
                       FileID.Add(StrPas(PAux)+' '+IntToStr(Size));
                  end;
                  while (Size > 0) and Continue do BackupFile;
                except
                  raise Exception.create(errCantReadfile);
                  continue := false;
                end;
                if not continue then break;
             finally
               SStr.free;
               if fSetArchiveFlag then FileSetAttr(files[i], FileGetAttr(files[i])- faArchive);
             end;
        end;
     end;
     if fSaveFileID then
     begin
          ext := ('00'+inttostr(ArchiveNumber));
          ext := copy(ext, length(ext)-2, 3);

          FileID.SaveToFile('FILE'+ext+'.ID');
          FileID.Clear;
     end;


     if Continue then
     begin
       L := 0;
       TStr.writeBuffer(L, sizeof(L));    //end backup
       result := true;
     end;
     TStr.free;
     Files.free;
     if assigned(fOnProgress) then fOnProgress(self, '', 100, Continue);
     IsBusy := false;
     // below by João Paulo
     SetCurrentDirectory(PChar(ExtractFilepath(CurDir)));
     if fSaveFileID then
     begin
          FileID.Free;
          FreeMem(PAux);
     end;
end;

function TBackupFile.Restore(Source: String; TargetPath: string): integer;
var
   L: Integer;
   FA, FAT: integer;
   S, Disk: String;
   SStr, TStr: TFilestream;
   DoRestore: Boolean;
begin
     if (TargetPath <> '') and (TargetPath[length(TargetPath)] <> '\') then TargetPath := TargetPath + '\';
     result := 0;
     Continue := true;
     if not Fileexists(Source) then exit;
     IsBusy := true;
     try
        SStr := TFilestream.create(Source, fmOpenRead or fmShareDenyNone);

        SStr.seek(0,0);
        SStr.readbuffer(L, sizeof(L));
        SetString(S, PChar(nil), L);
        SStr.ReadBuffer(PChar(S)^,L);  //Title
        SStr.readbuffer(SizeTotal, sizeof(SizeTotal));
        SStr.readbuffer(FilesTotal, sizeof(FilesTotal));
        ProgressSize := 0;
     except
        Raise Exception.Create(errCantreadArchive);
        IsBusy := false;
        exit;
     end;

     DoRestore := true;
     repeat
        SStr.readbuffer(L, sizeof(L)); // File size
        if L > 0 then
        begin
          SetString(S, PChar(nil), L);
          SStr.ReadBuffer(PChar(S)^,L);     //File name

          if copy(s,1,9) = 'NEXT:DISK' then
          begin
             SStr.free;
             SStr := nil;
             Disk := copy(S, 10, 3);
             while copy(disk,1,1) = '0' do Disk := copy(Disk, 2, length(Disk)-1);

             repeat
               if assigned(fOnNeedDisk) then fOnNeedDisk(self, strtoint(Disk), Continue)
               else Continue := MessageDlg('Please insert disk '+Disk, mtInformation, mbOKCancel, 0) = mrOK;
               Source := changeFileext(source, '.'+copy(S,10,3));
             until Fileexists(Source) or (not Continue);

             If Continue then
             try
                SStr := TFilestream.create(Source, fmOpenRead or fmShareDenyNone);
                SStr.seek(0,0);

                if DoRestore then
                begin
                     TStr := TFilestream.create(CurrentFile, fmOpenWrite);
                     TStr.seek(TStr.size, soFromBeginning);
                end;

                DeCompress(SStr, TStr, DoRestore);
             finally
                if DoRestore then
                begin
                  FileSetDate(TStr.handle, FA);  //set original file date + time
                  TStr.free;
                end;
             end;
          end
          else begin
               // Read file.
            SStr.ReadBuffer(FA, sizeof(FA));  //File age

            if TargetPath<>'' then CurrentFile:=TargetPath+ExtractFileName(s)
            else CurrentFile := S;
            // recondiciona nome do diretório, para que possa ser descompactado no local
            // certo.
            if fRestoreFullPath and (TargetPath<>'') then
            begin
                 // Retira 'c:\'
                 CurrentFile := TargetPath+copy(S,4,Length(s));
            end;

            FAT := FileAge(CurrentFile);
            case fRestoreMode of
              rmAll: DoRestore := true;
              rmNoOverwrite: DoRestore := not Fileexists(CurrentFile);
              rmNewer: DoRestore := not Fileexists(CurrentFile) or (FA > FAT);
              rmExisting: DoRestore := Fileexists(CurrentFile);
              rmExistingNewer: DoRestore := Fileexists(CurrentFile) and (FA > FAT);
            end;

            if assigned(fOnRestoreFile) then fOnRestoreFile(self, CurrentFile, doRestore);
            if DoRestore then
            begin
                 ForceDirectories(extractFileDir(CurrentFile));
                 DoRestore := DirectoryExists(extractFileDir(CurrentFile));
            end;
            if DoRestore then
            try
              try
                TStr := TFileStream.create(CurrentFile, fmCreate);
                TStr.seek(0, 0);
                DeCompress(SStr, TStr, true);
                inc(Result);
              except
                Raise Exception.create(errCantReadfile);
              end;
            finally
              FileSetDate(TStr.handle, FA);  //set original file date + time
              TStr.free;
            end
            else DeCompress(SStr, nil, false);
          end;
        end;
     until (L = 0) or (not Continue);

     if SStr <> nil then SStr.free;
     if assigned(fOnProgress) then fOnProgress(self, '', 100, Continue);
     IsBusy := false;
end;

function TBackupFile.Busy: boolean;
begin
   result := IsBusy;
end;

procedure TBackupFile.Stop;
begin
   Continue := false;
end;

function TBackupFile.GetArchiveTitle(Source: String): string;
var
   L: Integer;
   S: String;
   SStr: TFilestream;
begin
     result := '';
     if not Fileexists(Source) then exit;
     try
        SStr := TFilestream.create(Source, fmOpenRead or fmShareDenyNone);
        SStr.seek(0,0);
        SStr.readbuffer(L, sizeof(L));
        SetString(S, PChar(nil), L);
        SStr.ReadBuffer(PChar(S)^,L);  //Title
     except
        Raise Exception.Create(errCantreadArchive);
     end;
     SStr.free;
     result := S;
end;

procedure TBackupFile.DeCompress(InStream, OutStream: TStream; DoWrite: Boolean);
var InBuffer, OutBuffer: BufferArray;
    CompressedSize, UnCompressedSize, InSize: LongInt;
    Sig: array[0..SizeOf(FSignature)-1] of Char;
begin
  InStream.ReadBuffer(Sig, SizeOf(FSignature));
  if Sig <> FSignature then raise Exception.Create(errInvalidfiletype);
  InStream.ReadBuffer(InSize, SizeOf(InSize));
  while (InSize > 0) and Continue do
  begin
    InStream.ReadBuffer(CompressedSize, SizeOf(CompressedSize));
    InStream.ReadBuffer(InBuffer, CompressedSize);
    if DoWrite then
    begin
         UnCompressedSize := DeCompression(@InBuffer, @OutBuffer, CompressedSize);
         OutStream.WriteBuffer(OutBuffer, UnCompressedSize);
    end;
    InSize := InSize - CompressedSize - SizeOf(CompressedSize);

    Application.processmessages;
    inc(ProgressSize, UnCompressedSize);
    if assigned(fOnProgress) then fOnProgress(self, CurrentFile, (ProgressSize*100) div SizeTotal, Continue);
  end;
end;

procedure Register;
begin
  RegisterComponents('EC', [TBackupFile]);
end;

end.
