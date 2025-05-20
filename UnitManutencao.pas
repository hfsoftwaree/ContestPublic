unit UnitManutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, ImgList, Buttons,
  Grids, DBGrids, EDBDate, EDBZero, EChkIE, EChkCNPJ, EChkCPF, EDBNum,
  EKeyNav, XPMenu;

type
  TfrmManutencao = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton11: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit4: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBComboBox3: TDBComboBox;
    MaskEdit4: TMaskEdit;
    DBComboBox4: TDBComboBox;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    TabSheet2: TTabSheet;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit35: TDBEdit;
    MaskEdit7: TMaskEdit;
    MaskEdit11: TMaskEdit;
    DBComboBox5: TDBComboBox;
    TabSheet3: TTabSheet;
    Label41: TLabel;
    Label42: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    MaskEdit2: TMaskEdit;
    EvCheckCNPJ1: TEvCheckCNPJ;
    EvCheckIE1: TEvCheckIE;
    DBEdit8: TDBEdit;
    MaskEdit3: TMaskEdit;
    DBEdit17: TEvDBZeroEdit;
    MaskEdit9: TEvDBDateEdit;
    MaskEdit10: TEvDBDateEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    EvCheckCPF2: TEvCheckCPF;
    DBEdit21: TEvDBZeroEdit;
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure MaskEdit5Change(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure MaskEdit6Change(Sender: TObject);
    procedure MaskEdit4Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
    procedure MaskEdit7Change(Sender: TObject);
    procedure MaskEdit11Change(Sender: TObject);
    procedure MaskEdit2Change(Sender: TObject);
    procedure DBEdit37Change(Sender: TObject);
    procedure MaskEdit7Exit(Sender: TObject);
    procedure MaskEdit3Change(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);
    procedure EvCheckIE1Error(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure MaskEdit5Exit(Sender: TObject);
    procedure MaskEdit6Exit(Sender: TObject);
    procedure MaskEdit11Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManutencao: TfrmManutencao;


implementation

uses UnitPrincipal, UnitDM;

{$R *.dfm}

procedure TfrmManutencao.SpeedButton4Click(Sender: TObject);
begin
DM.TManutencao.Cancel;
Close;
end;

procedure TfrmManutencao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := CaFree;
frmPrincipal.Enabled := True;
DM.TManutencao.Close;
end;

procedure TfrmManutencao.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;
DM.TManutencao.Close;
DM.TManutencao.Open;
DM.TManutencao.Edit;
PageControl1.ActivePage := TabSheet1;
DBEdit2.SetFocus;
end;

procedure TfrmManutencao.SpeedButton9Click(Sender: TObject);
begin
DBEdit2.SetFocus;
DM.TManutencao.Close;
DM.TManutencao.Open;
DM.TManutencao.Append;
end;

procedure TfrmManutencao.SpeedButton10Click(Sender: TObject);
begin
DBEdit2.SetFocus;
DM.TManutencao.Close;
DM.TManutencao.Edit;
end;

procedure TfrmManutencao.SpeedButton11Click(Sender: TObject);
begin
if DM.TManutencao.RecordCount <> 0 then
begin
if Application.MessageBox ('Confirma Exclusão?','Confirmação', mb_YesNo +
MB_ICONQUESTION) = idYes then
begin
PageControl1.ActivePage := TabSheet1;
DBEdit2.SetFocus;
DM.TManutencao.Delete;
DM.TManutencao.Refresh;
end
else
DBEdit2.SetFocus;
end
else
Application.MessageBox('Não há registros para exclusão!', 'Informação', mb_Ok + mb_IconExclamation);
PageControl1.ActivePage := TabSheet1;
DBEdit2.SetFocus;
end;

procedure TfrmManutencao.SpeedButton1Click(Sender: TObject);
begin
	if DBEdit2.Text='' then
   	begin
         Application.MessageBox('Nome da Empresa deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
         PageControl1.ActivePage := TabSheet1;
         DBEdit2.SetFocus;
      end
   else
    begin
	if DBEdit4.Text='' then
   	begin
         Application.MessageBox('Nome de fantasia deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
         PageControl1.ActivePage := TabSheet1;
         DBEdit4.SetFocus;
      end
   else
   	begin
	if DBComboBox3.Text='' then
   	begin
         Application.MessageBox('Logradouro deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
         PageControl1.ActivePage := TabSheet1;
         DBComboBox3.SetFocus;
      end
   else
   	begin
         if DBEDIT12.Text = '' then
				begin
               Application.MessageBox('Endereço deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               DBEDIT12.SetFocus;
      		end
         else
      		begin
               if DBEDIT17.Text = '' then
   					begin
            		Application.MessageBox('Numero deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
                PageControl1.ActivePage := TabSheet1;
                        DBEDIT17.SetFocus;
                        end
         else
   	begin
         if DBEDIT19.Text = '' then
				begin
               Application.MessageBox('Bairro deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               DBEDIT19.SetFocus;
      		end
          else
   	begin
         if DBEDIT13.Text = '' then
				begin
               Application.MessageBox('CEP deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               MASKEDIT4.SetFocus;
      		end
         else
   	begin
         if DBEDIT22.Text = '' then
				begin
               Application.MessageBox('Cidade deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               DBEDIT22.SetFocus;
      		end
         else
   	begin
         if DBComboBox4.Text = '' then
				begin
               Application.MessageBox('UF deve ser informado!', 'Dados Basicos', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet1;
               DBComboBox4.SetFocus;
      		end
         else
   	begin
         if DBEDIT7.Text = '' then
				begin
               Application.MessageBox('CNPJ deve ser informado!', 'Inscrições', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet2;
               MASKEDIT7.SetFocus;
      		end
         else
   	begin
         if DBEDIT8.Text = '' then
				begin
               Application.MessageBox('Inscrição Estadual deve ser informada!', 'Inscrições', mb_Ok + mb_IconInformation);
               PageControl1.ActivePage := TabSheet2;
               MaskEdit3.SetFocus;
      		end
                end;
                end;
                end;
                end;
                end;
                end;
                end;
                end;
                end;
                end;

if (DBEDIT2.Text <> '') and (DBEdit4.Text <> '')and (DBComboBox3.Text <> '') and (DBEDIT12.Text <> '')and (DBEdit17.Text <> '')and (DBEdit19.Text <> '') and (DBEdit13.Text <> '') and (DBEdit22.Text <> '') and (DBComboBox4.Text <> '') and (DBEdit7.Text <> '') and (DBEdit8.Text <> '') then

begin
If Application.MessageBox('Confirma a Inclusão?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
DM.TManutencao.Post;
Self.Close;
end
else
begin
PageControl1.ActivePage := TabSheet1;
DBEdit2.SetFocus;
end
end
end;

procedure TfrmManutencao.SpeedButton2Click(Sender: TObject);
begin
PageControl1.ActivePage := TabSheet1;
DBEdit2.SetFocus;
DM.TManutencao.Cancel;
end;

procedure TfrmManutencao.MaskEdit5Change(Sender: TObject);
begin
DBEdit5.Text := MaskEdit5.Text; 
end;

procedure TfrmManutencao.DBEdit5Change(Sender: TObject);
begin
MaskEdit5.Text := DBEdit5.Text; 
end;

procedure TfrmManutencao.MaskEdit6Change(Sender: TObject);
begin
DBEdit6.Text := MaskEdit6.Text;
end;

procedure TfrmManutencao.MaskEdit4Change(Sender: TObject);
begin
DBEdit13.Text := MaskEdit4.Text;
end;

procedure TfrmManutencao.DBEdit6Change(Sender: TObject);
begin
MaskEdit6.Text := DBEdit6.Text;
end;

procedure TfrmManutencao.DBEdit13Change(Sender: TObject);
begin
MaskEdit4.Text := DBEdit13.Text;
end;

procedure TfrmManutencao.DBEdit7Change(Sender: TObject);
begin
MaskEdit7.Text := DBEdit7.Text;
end;

procedure TfrmManutencao.DBEdit11Change(Sender: TObject);
begin
MaskEdit11.Text := DBEdit11.Text;
end;

procedure TfrmManutencao.MaskEdit7Change(Sender: TObject);
begin
DBEdit7.Text := MaskEdit7.Text;
end;

procedure TfrmManutencao.MaskEdit11Change(Sender: TObject);
begin
DBEdit11.Text := MaskEdit11.Text;
end;

procedure TfrmManutencao.MaskEdit2Change(Sender: TObject);
begin
DBEdit37.Text := MaskEdit2.Text;
end;

procedure TfrmManutencao.DBEdit37Change(Sender: TObject);
begin
MaskEdit2.Text := DBEdit37.Text;
end;

procedure TfrmManutencao.MaskEdit7Exit(Sender: TObject);
begin
Application.MessageBox('CNPJ inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmManutencao.MaskEdit3Change(Sender: TObject);
begin
DBEdit8.Text := MaskEdit3.Text;
end;

procedure TfrmManutencao.DBEdit8Change(Sender: TObject);
begin
MaskEdit3.Text := DBEdit8.Text;
end;

procedure TfrmManutencao.EvCheckIE1Error(Sender: TObject);
begin
Application.MessageBox('Inscrição Estadual inválida ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmManutencao.MaskEdit2Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmManutencao.MaskEdit1Exit(Sender: TObject);
begin
Application.MessageBox('CPF inválido ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmManutencao.MaskEdit3Exit(Sender: TObject);
begin
Application.MessageBox('Inscrição Estadual inválida ou digitada incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
end;

procedure TfrmManutencao.MaskEdit4Exit(Sender: TObject);
begin
if MaskEdit4.Text = '' then
begin
exit;
end
else
begin
if length (MaskEdit4.Text) < 8 then
begin
Application.MessageBox('Campo preenchido incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
MaskEdit4.SetFocus;
end
else
exit;
end;
end;

procedure TfrmManutencao.MaskEdit5Exit(Sender: TObject);
begin
if MaskEdit5.Text = '' then
begin
exit;
end
else
begin
if length (MaskEdit5.Text) < 9 then
begin
Application.MessageBox('Campo preenchido incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
MaskEdit5.SetFocus;
end
else
exit;
end;
end;

procedure TfrmManutencao.MaskEdit6Exit(Sender: TObject);
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

procedure TfrmManutencao.MaskEdit11Exit(Sender: TObject);
begin
if MaskEdit11.Text = '' then
begin
exit;
end
else
begin
if length (MaskEdit11.Text) < 7 then
begin
Application.MessageBox('Campo preenchido incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
MaskEdit11.SetFocus;
end
else
exit;
end;
end;

end.
