unit UBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, Gauges, FileCtrl, Shellapi;

type
  TfrmBackup = class(TForm)
    Bevel1: TBevel;
    Bevel3: TBevel;
    btnEdit: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Panel1: TPanel;
    prog: TGauge;
    file_1: TFileListBox;
    btnSair: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackup: TfrmBackup;

implementation


{$R *.dfm}

procedure TfrmBackup.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure ExecutePrograma(Nome, Parametros: String);
Var
 Comando: Array[0..1024] of Char;
 Parms: Array[0..1024] of Char;
begin
  StrPCopy (Comando, Nome);
  StrPCopy (Parms, Parametros);
  ShellExecute (0, Nil, Comando, Parms, Nil, SW_ShowNormal);
end;

procedure TfrmBackup.btnEditClick(Sender: TObject);
var
 a:integer;
begin
     if not fileexists('C:\Arquivos de programas\HF-Software\Back Up\Contesto\Contesto.bck') then
     begin
     Application.MessageBox('Não há arquivo de Back Up à ser restaurado!', 'Informação', mb_Ok + mb_IconError);
     end
     else
     begin
     deletefile('C:\Arquivos de programas\HF-Software\BancoDados\CONTESTO.GDB');
     Panel1.Visible := True;
     for a:=0 to file_1.Items.Count do
     prog.progress:=(a*100) div file_1.Items.Count;
     CopyFile('C:\Arquivos de programas\HF-Software\Back Up\Contesto\Contesto.bck','C:\Arquivos de programas\HF-Software\BancoDados\CONTESTO.GDB',True);
     begin
     if prog.MaxValue = (100) then
     begin
     Application.MessageBox('Restauração do Back Up, realizada com sucesso!', 'Informação', mb_Ok + mb_IconInformation);
     Application.MessageBox('O Sistema será iniciado automaticamente, caso o mesmo não seja, favor inicia-lo manualmente!', 'Informação', mb_Ok + mb_IconExclamation);
     Executeprograma('C:\Arquivos de programas\HF-Software\Contesto\Estoque.exe','');
     Self.Close;
     end
end;
end;
end;


procedure TfrmBackup.Button1Click(Sender: TObject);
begin
     deletefile('C:\Arquivos de programas\HF-Software\DFI\Dados\BD.mdb');
end;

end.
