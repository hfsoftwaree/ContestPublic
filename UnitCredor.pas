unit UnitCredor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, XP_MenuBar, StdCtrls, DBCtrls, Mask,
  EDBZero, ExtCtrls;

type
  TfrmCredor = class(TForm)
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Panel1: TPanel;
    DBEdit10: TEvDBZeroEdit;
    DBEdit6: TEvDBZeroEdit;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit2: TMaskEdit;
    DBComboBox2: TDBComboBox;
    MaskEdit1: TMaskEdit;
    DBComboBox1: TDBComboBox;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    DBEdit4: TDBEdit;
    procedure ToolButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCredor: TfrmCredor;

implementation

uses UnitPrincipal, UnitDM, UnitPesquisa2;

{$R *.dfm}

procedure TfrmCredor.ToolButton6Click(Sender: TObject);
begin
DM.TCredor.Close; 
Close;
end;

procedure TfrmCredor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM.TCredor.Close;
Action := Cafree;
frmprincipal.Enabled := True
end;

procedure TfrmCredor.FormShow(Sender: TObject);
begin
frmprincipal.Enabled := false;
end;

procedure TfrmCredor.ToolButton1Click(Sender: TObject);
begin
DBEdit2.SetFocus;
DM.TCredor.Open;
DM.TCredor.Append;
end;

procedure TfrmCredor.ToolButton4Click(Sender: TObject);
begin
	if DBEdit2.Text='' then
   	begin
         Application.MessageBox('Nome da Empresa deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
         DBEdit2.SetFocus;
    end;

if (DBEDIT2.Text <> '')  then
begin
If Application.MessageBox('Confirma a Inclusão/Alteração?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
  try
    DM.TCredor.Post;
    DM.TCredor.Append;
  except
    Application.MessageBox('Credor já Cadastrado!', 'Credor', mb_Ok + mb_IconExclamation);
  end;
DBEdit2.SetFocus;
end
else
DBEdit2.SetFocus;
end
end;

procedure TfrmCredor.ToolButton5Click(Sender: TObject);
begin
DM.TCredor.Cancel;
DM.TCredor.Close;
end;

procedure TfrmCredor.ToolButton2Click(Sender: TObject);
begin
DM.TCredor.Open;
if DM.TCredor.RecordCount = 0 then
begin
DM.TCredor.Close;
Application.MessageBox('Não hà creedores para serem Alterados!', 'Alteração', mb_Ok + mb_IconInformation);
end;

DM.TCredor.Open;
if DM.TCredor.RecordCount <> 0 then
begin
Self.Tag := 2;
DM.TCredor.Close;
Application.CreateForm (TfrmPesquisa2, frmPesquisa2);
frmPesquisa2.Show;
end;
end;

procedure TfrmCredor.ToolButton3Click(Sender: TObject);
begin
DM.TCredor.Open;
if DM.TCredor.RecordCount = 0 then
begin
DM.TCredor.Close;
Application.MessageBox('Não hà creedores para serem Excluídos!', 'Alteração', mb_Ok + mb_IconInformation);
end;

DM.TCredor.Open;
if DM.TCredor.RecordCount <> 0 then
begin
Self.Tag := 3;
DM.TCredor.Close;
Application.CreateForm (TfrmPesquisa2, frmPesquisa2);
frmPesquisa2.Show;
end;
end;

end.
