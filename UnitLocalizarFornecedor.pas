unit UnitLocalizarFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TfrmLocalizarFornecedor = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Bevel3: TBevel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizarFornecedor: TfrmLocalizarFornecedor;


implementation

uses UnitDM, UnitFornecedores;

{$R *.dfm}

procedure TfrmLocalizarFornecedor.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmLocalizarFornecedor.BitBtn2Click(Sender: TObject);
begin
	with DM.Qfornecedor do
   	begin
         Close;
         SQL.Clear;
         SQL.Add('Select * from Fornecedores Where UPPER(NOMEEMPRESA) LIKE UPPER(''%'' + :1 + ''%'')');
         Open;
         end;
          if DM.Qfornecedor.RecordCount = 0 then
         	begin
          Application.MessageBox('Fornecedor não cadastrado ou digitado incorretamente, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
          begin
          Self.Close;
          frmFornecedores.DBEdit2.SetFocus;
          end
          end
end;

procedure TfrmLocalizarFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := CaFree;
frmFornecedores.Enabled := True;
end;

procedure TfrmLocalizarFornecedor.FormShow(Sender: TObject);
begin
frmFornecedores.Enabled := False;
end;

end.
