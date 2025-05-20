unit UnitFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, ImgList, Buttons,
  Grids, DBGrids, DB, ADODB, EDBZero, EChkIE, EChkCNPJ, EKeyNav;

type
  TfrmFornecedores = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    DBComboBox1: TDBComboBox;
    MaskEdit1: TMaskEdit;
    DBComboBox2: TDBComboBox;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit23: TDBEdit;
    Label26: TLabel;
    MaskEdit4: TMaskEdit;
    MaskEdit8: TMaskEdit;
    DBComboBox3: TDBComboBox;
    TabSheet6: TTabSheet;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    Edit1: TEdit;
    SpeedButton10: TSpeedButton;
    DBEdit6: TEvDBZeroEdit;
    DBEdit10: TEvDBZeroEdit;
    EvCheckCNPJ1: TEvCheckCNPJ;
    MaskEdit5: TMaskEdit;
    EvCheckIE1: TEvCheckIE;
    Label1: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit20: TDBEdit;
    MaskEdit6: TMaskEdit;
    EvDBZeroEdit1: TEvDBZeroEdit;
    DBEdit22: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    MaskEdit7: TMaskEdit;
    Label27: TLabel;
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
    procedure MaskEdit2Change(Sender: TObject);
    procedure DBEdit12Change(Sender: TObject);
    procedure MaskEdit3Change(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure DBEdit14Change(Sender: TObject);
    procedure MaskEdit4Change(Sender: TObject);
    procedure DBEdit17Change(Sender: TObject);
    procedure MaskEdit8Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure MaskEdit5Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure MaskEdit5Exit(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure MaskEdit6Change(Sender: TObject);
    procedure MaskEdit7Change(Sender: TObject);
    procedure DBEdit24Change(Sender: TObject);
    procedure DBEdit25Change(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    procedure MaskEdit8Exit(Sender: TObject);
    procedure MaskEdit6Exit(Sender: TObject);
    procedure MaskEdit7Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;


implementation

uses UnitPrincipal, UnitDM, UnitLocalizarFornecedor;


{$R *.dfm}

procedure TfrmFornecedores.SpeedButton4Click(Sender: TObject);
begin
DM.TFornecedor.Cancel;
DM.TFornecedor.Close;
Close;
end;

procedure TfrmFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := CaFree;
frmPrincipal.Enabled := True;
end;


procedure TfrmFornecedores.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;
PageControl1.ActivePage := TabSheet1;
DBEdit2.SetFocus;
DM.TFornecedor.Open;
DM.TFornecedor.Edit;
DM.TFornecedor.IndexName := ('INDNOMEFORNECEDOR');
end;

procedure TfrmFornecedores.SpeedButton5Click(Sender: TObject);
begin
DM.TFornecedor.First;
DM.TFornecedor.Edit;
end;

procedure TfrmFornecedores.SpeedButton6Click(Sender: TObject);
begin
DM.TFornecedor.Prior;
DM.TFornecedor.Edit;
end;

procedure TfrmFornecedores.SpeedButton7Click(Sender: TObject);
begin
DM.TFornecedor.Next;
DM.TFornecedor.Edit;
end;

procedure TfrmFornecedores.SpeedButton8Click(Sender: TObject);
begin
DM.TFornecedor.Last;
DM.TFornecedor.Edit;
end;

procedure TfrmFornecedores.MaskEdit1Change(Sender: TObject);
begin
DBEdit9.Text := MasKEdit1.Text;
end;

procedure TfrmFornecedores.DBEdit9Change(Sender: TObject);
begin
MaskEdit1.Text := DBEdit9.Text;
end;

procedure TfrmFornecedores.MaskEdit2Change(Sender: TObject);
begin
DBEdit12.Text := MaskEdit2.Text;
end;

procedure TfrmFornecedores.DBEdit12Change(Sender: TObject);
begin
MaskEdit2.Text := DBEdit12.Text; 
end;

procedure TfrmFornecedores.MaskEdit3Change(Sender: TObject);
begin
DBEdit13.Text := MaskEdit3.Text; 
end;

procedure TfrmFornecedores.DBEdit13Change(Sender: TObject);
begin
MaskEdit3.Text := DBEdit13.Text; 
end;

procedure TfrmFornecedores.DBEdit14Change(Sender: TObject);
begin
MaskEdit4.Text := DBEdit14.Text; 
end;

procedure TfrmFornecedores.MaskEdit4Change(Sender: TObject);
begin
DBEdit14.Text := MaskEdit4.Text;
end;

procedure TfrmFornecedores.DBEdit17Change(Sender: TObject);
begin
MaskEdit8.Text := DBEdit17.Text; 
end;

procedure TfrmFornecedores.MaskEdit8Change(Sender: TObject);
begin
DBEdit17.Text := MaskEdit8.Text; 
end;

procedure TfrmFornecedores.SpeedButton2Click(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet1;
DBEdit2.SetFocus;
DM.TFornecedor.Cancel;
DM.TFornecedor.Refresh;
end;

procedure TfrmFornecedores.SpeedButton11Click(Sender: TObject);
begin
if DM.TFornecedor.RecordCount <> 0 then
begin
if Application.MessageBox ('Confirma Exclusão?','Confirmação', mb_YesNo +
MB_ICONQUESTION) = idYes then
begin
PageControl1.ActivePage := TabSheet1;
DBEdit2.SetFocus;
DM.TFornecedor.Delete;
DM.TFornecedor.Close;
DM.TFornecedor.Open;
DM.TFornecedor.Edit;
end
else
DBEdit2.SetFocus;
end
else
Application.MessageBox('Não há Fornecedor cadastrado para exclusão!', 'Informação', mb_Ok + mb_IconExclamation);
DBEdit2.SetFocus;
end;

procedure TfrmFornecedores.SpeedButton10Click(Sender: TObject);
begin
SpeedButton10.Visible := False;
Edit1.Visible := False;
SpeedButton3.Visible := True;
DBEdit2.SetFocus;
Edit1.Clear; 
end;

procedure TfrmFornecedores.SpeedButton9Click(Sender: TObject);
begin
DM.TFornecedor.Append;
DBEdit2.SetFocus;
end;

procedure TfrmFornecedores.SpeedButton1Click(Sender: TObject);
begin
	if DBEdit2.Text='' then
   	begin
         Application.MessageBox('Nome da Empresa deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
         PageControl1.ActivePage := TabSheet1;
         DBEdit2.SetFocus;
      end
   else
   	begin
	if DBComboBox1.Text='' then
   	begin
         Application.MessageBox('Logradouro deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
         PageControl1.ActivePage := TabSheet1;
         DBComboBox1.SetFocus;
      end
   else
   	begin
         if DBEDIT5.Text = '' then
				begin
               Application.MessageBox('Endereço deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               DBEDIT5.SetFocus;
      		end
         else
      		begin
               if DBEDIT6.Text = '' then
   					begin
            		Application.MessageBox('Numero deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
                PageControl1.ActivePage := TabSheet1;
                        DBEDIT6.SetFocus;
                        end
         else
   	begin
         if DBEDIT8.Text = '' then
				begin
               Application.MessageBox('Bairro deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               DBEDIT8.SetFocus;
      		end
          else
   	begin
         if DBEDIT9.Text = '' then
				begin
               Application.MessageBox('CEP deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               MASKEDIT1.SetFocus;
      		end
         else
   	begin
         if DBEDIT11.Text = '' then
				begin
               Application.MessageBox('Cidade deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               DBEDIT11.SetFocus;
      		end
         else
   	begin
         if DBComboBox2.Text = '' then
				begin
               Application.MessageBox('UF deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               DBComboBox2.SetFocus;
                end;
                end;
                end;
                end;
                end;
                end;
                end;
                end;

if (DBEDIT2.Text <> '') and(DBComboBox1.Text <> '') and (DBEDIT5.Text <> '')and (DBEdit6.Text <> '')and (DBEdit8.Text <> '') and (DBEdit9.Text <> '') and (DBEdit11.Text <> '') and (DBComboBox2.Text <> '') then
begin
If Application.MessageBox('Confirma a Inclusão/Alteração?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
  try
    DM.TFornecedor.Post;
    DM.TFornecedor.Close;
    DM.TFornecedor.Open;
  except
    Application.MessageBox('Fornecedor já Cadastrado!', 'Fornecedor', mb_Ok + mb_IconExclamation);
  end;
PageControl1.ActivePage := TabSheet1;
DBEdit2.SetFocus;
end
else
PageControl1.ActivePage := TabSheet1;
DBEdit2.SetFocus;
end
end;

procedure TfrmFornecedores.SpeedButton3Click(Sender: TObject);
begin
if DM.TFornecedor.RecordCount <> 0 then
begin
SpeedButton3.Visible := False;
SpeedButton10.Visible := True;
Edit1.Visible := True;
Edit1.Clear;
Edit1.SetFocus;
end
else
begin
if DM.TFornecedor.RecordCount = 0 then
begin
Application.MessageBox('Não há Fornecedor cadastrado para pesquisa!', 'Informação', mb_Ok + mb_IconExclamation);
DBEdit2.SetFocus;
end;
end;
end;

procedure TfrmFornecedores.Edit1Change(Sender: TObject);
begin
DM.TFornecedor.Locate('NOMEFORNECEDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmFornecedores.MaskEdit5Change(Sender: TObject);
begin
DBEdit4.Text := MaskEdit5.Text;
end;

procedure TfrmFornecedores.DBEdit4Change(Sender: TObject);
begin
MaskEdit5.Text := DBEdit4.Text;
end;

procedure TfrmFornecedores.MaskEdit5Exit(Sender: TObject);
begin
Application.MessageBox('Inscrição Estadual inválida ou digitada incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmFornecedores.MaskEdit4Exit(Sender: TObject);
begin
Application.MessageBox('CNPJ inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmFornecedores.Edit1Exit(Sender: TObject);
begin
SpeedButton10.Visible := False;
Edit1.Visible := False;
SpeedButton3.Visible := True;
DBEdit2.SetFocus;
Edit1.Clear;
end;



procedure TfrmFornecedores.MaskEdit6Change(Sender: TObject);
begin
DBEdit24.Text := MaskEdit6.Text;  
end;

procedure TfrmFornecedores.MaskEdit7Change(Sender: TObject);
begin
DBEdit25.Text := MaskEdit7.Text;
end;

procedure TfrmFornecedores.DBEdit24Change(Sender: TObject);
begin
MaskEdit6.Text := DBEdit24.Text; 
end;

procedure TfrmFornecedores.DBEdit25Change(Sender: TObject);
begin
MaskEdit7.Text := DBEdit25.Text;
end;

procedure TfrmFornecedores.MaskEdit1Exit(Sender: TObject);
begin
if MaskEdit1.Text = '' then
begin
exit;
end
else
begin
if length (MaskEdit1.Text) < 8 then
begin
Application.MessageBox('Campo preenchido incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
MaskEdit1.SetFocus;
end
else
exit;
end;
end;

procedure TfrmFornecedores.MaskEdit2Exit(Sender: TObject);
begin
if MaskEdit2.Text = '' then
begin
exit;
end
else
begin
if length (MaskEdit2.Text) < 9 then
begin
Application.MessageBox('Campo preenchido incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
MaskEdit2.SetFocus;
end
else
exit;
end;
end;

procedure TfrmFornecedores.MaskEdit3Exit(Sender: TObject);
begin
if MaskEdit3.Text = '' then
begin
exit;
end
else
begin
if length (MaskEdit3.Text) < 9 then
begin
Application.MessageBox('Campo preenchido incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
MaskEdit3.SetFocus;
end
else
exit;
end;
end;

procedure TfrmFornecedores.MaskEdit8Exit(Sender: TObject);
begin
if MaskEdit8.Text = '' then
begin
exit;
end
else
begin
if length (MaskEdit8.Text) < 7 then
begin
Application.MessageBox('Campo preenchido incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
MaskEdit8.SetFocus;
end
else
exit;
end;
end;

procedure TfrmFornecedores.MaskEdit6Exit(Sender: TObject);
begin
if MaskEdit6.Text = '' then
begin
exit;
end
else
begin
if length (MaskEdit6.Text) < 9 then
begin
Application.MessageBox('Campo preenchido incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
MaskEdit6.SetFocus;
end
else
exit;
end;
end;

procedure TfrmFornecedores.MaskEdit7Exit(Sender: TObject);
begin
if MaskEdit7.Text = '' then
begin
exit;
end
else
begin
if length (MaskEdit7.Text) < 9 then
begin
Application.MessageBox('Campo preenchido incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
MaskEdit7.SetFocus;
end
else
exit;
end;
end;

end.
