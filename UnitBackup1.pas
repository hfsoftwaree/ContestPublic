unit UnitBackup1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, Gauges, FileCtrl;

type
  TfrmBackup1 = class(TForm)
    Bevel1: TBevel;
    Bevel3: TBevel;
    btnEdit: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Panel1: TPanel;
    prog: TGauge;
    Label1: TLabel;
    file_1: TFileListBox;
    btnSair: TBitBtn;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackup1: TfrmBackup1;

implementation

uses UnitBackup, UnitPrincipal;

{$R *.dfm}

procedure TfrmBackup1.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmBackup1.btnEditClick(Sender: TObject);
var
 a:integer;
begin
     if not directoryexists('C:\Arquivos de programas\HF-Software\Back Up') then
     CreateDir('C:\Arquivos de programas\HF-Software\Back Up');
     CreateDir('C:\Arquivos de programas\HF-Software\Back Up\Contesto');
     deletefile('C:\Arquivos de programas\HF-Software\Back Up\Contesto\Contesto.bck');
     Label1.Visible := True;
     Panel1.Visible := True;
     for a:=0 to file_1.Items.Count do
     prog.progress:=(a*100) div file_1.Items.Count;
     CopyFile('C:\Arquivos de programas\HF-Software\BancoDados\CONTESTO.GDB','C:\Arquivos de programas\HF-Software\Back Up\Contesto\Contesto.bck',True);
     begin
     if prog.MaxValue = (100) then
     begin
     Application.MessageBox('Back Up realizado com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
     Self.Close;
     end
     else
     Application.MessageBox('Erro ao efetuar Back Up!', 'Erro', mb_Ok + mb_IconError);
     Self.Close;
     end
end;

procedure TfrmBackup1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
Action := CaFree;
end;

procedure TfrmBackup1.FormShow(Sender: TObject);
begin
frmBackup.Close;
frmPrincipal.Enabled := False;
end;

end.
