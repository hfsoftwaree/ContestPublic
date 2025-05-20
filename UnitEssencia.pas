unit UnitEssencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, ImgList, Buttons,
  Grids, DBGrids, DB, DBTables, DBXpress, FMTBcd, DBClient, Provider,
  SqlExpr;

type
  TfrmEssencia = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label3: TLabel;
    SpeedButton12: TSpeedButton;
    TINICIALCAPA: TDBEdit;
    TINICIALMIOLO: TDBEdit;
    TPRODUCAO: TDBEdit;
    EENTRADAS: TDBEdit;
    EPRODUCAO: TDBEdit;
    TVENDAS: TDBEdit;
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEssencia: TfrmEssencia;


implementation

uses UnitPrincipal, UnitDM;


{$R *.dfm}

procedure TfrmEssencia.SpeedButton4Click(Sender: TObject);
begin
DM.TEssencia.Cancel;
DM.TEssencia.Close;
Close;
end;

procedure TfrmEssencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := CaFree;
frmPrincipal.Enabled := True;
frmPrincipal.EvKeyNavigator1.Active := True;
end;


procedure TfrmEssencia.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;
frmPrincipal.EvKeyNavigator1.Active := False;
DBEdit2.SetFocus;
DM.TEssencia.Open;
DM.TEssencia.Refresh;
DM.TEssencia.IndexName := ('INDESSENCIA');
DM.TEssencia.First;
DM.TEssencia.Edit;
end;

procedure TfrmEssencia.SpeedButton3Click(Sender: TObject);
begin
if DM.TEssencia.RecordCount <> 0 then
begin
Self.Tag := 1;
SpeedButton3.Visible := False;
SpeedButton12.Visible := True;
Label2.Visible := False;
DBEdit2.Visible := False;
Label3.Visible := True;
Edit1.Visible := True;
Edit1.Clear;
Edit1.SetFocus;
end
else
begin
if DM.TEssencia.RecordCount = 0 then
begin
Application.MessageBox('Não há Essência cadastrada para pesquisa!', 'Informação', mb_Ok + mb_IconExclamation);
DBEdit2.SetFocus;
end;
end;
end;

procedure TfrmEssencia.SpeedButton9Click(Sender: TObject);
begin
if Self.Tag = 1 then
begin
end
else
begin
if Self.Tag <> 1 then
begin
DBEdit2.SetFocus;
DM.TEssencia.Append;
end
end
end;

procedure TfrmEssencia.SpeedButton1Click(Sender: TObject);
begin
if Self.Tag = 1 then
begin

end
else
begin
if DBEDIT2.Text = '' then
begin
Application.MessageBox('Essência deve ser informada!', 'Inscrições', mb_Ok + mb_IconInformation);
DBEdit2.SetFocus;
end;
if (DBEDIT2.Text <> '')  then
begin
If Application.MessageBox('Confirma Inclusão?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
  try
TINICIALCAPA.Text := '0';
TINICIALMIOLO.Text := '0';
TPRODUCAO.Text := '0';
EENTRADAS.Text := '0';
EPRODUCAO.Text := '0';
TVENDAS.Text := '0';

    DM.TEssencia.Post;
    DM.TEssencia.Refresh;
    If Application.MessageBox('Gostaria de incluir outra Essência?', 'Confirmação',
    mb_YesNo + mb_ICONQUESTION) = idYes then DM.TEssencia.Append
  except
    Application.MessageBox('Essência já Cadastrada!', 'Essência', mb_Ok + mb_IconExclamation);
  end;
  DBEdit2.SetFocus;
  end;
end;
end;
end;

procedure TfrmEssencia.SpeedButton2Click(Sender: TObject);
begin
if Self.Tag = 1 then
begin
end
else
begin
if Self.Tag <> 1 then
begin
DBEdit2.SetFocus;
DM.TEssencia.Cancel;
end
end
end;

procedure TfrmEssencia.Edit1Change(Sender: TObject);
begin
DM.TEssencia.Locate('ESSENCIA',Edit1.text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmEssencia.DBEdit2Change(Sender: TObject);
begin
if DBEdit2.Text <> '' then
begin
SpeedButton1.Enabled := True;
end
end;

procedure TfrmEssencia.SpeedButton12Click(Sender: TObject);
begin
SpeedButton12.Visible := False;
SpeedButton3.Visible := True;
Label3.Visible := False;
Edit1.Clear; 
Edit1.Visible := False;
Label2.Visible := True;
DBEdit2.Visible := True;
DBEdit2.SetFocus;
Self.Tag :=0;
end;

procedure TfrmEssencia.SpeedButton5Click(Sender: TObject);
begin
DM.TEssencia.First;
end;

procedure TfrmEssencia.SpeedButton6Click(Sender: TObject);
begin
DM.TEssencia.Prior;
end;

procedure TfrmEssencia.SpeedButton7Click(Sender: TObject);
begin
DM.TEssencia.Next;
end;

procedure TfrmEssencia.SpeedButton8Click(Sender: TObject);
begin
DM.TEssencia.Last;
end;


procedure TfrmEssencia.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  SpeedButton1.Click;
end;






end.
