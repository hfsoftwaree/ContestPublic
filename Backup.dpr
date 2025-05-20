program Backup;

uses
  Forms,
  UBackup in 'UBackup.pas' {frmBackup};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Backup';
  Application.CreateForm(TfrmBackup, frmBackup);
  Application.Run;
end.
