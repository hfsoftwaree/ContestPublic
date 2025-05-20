unit UnitSelecaoImpressao8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls;

type
  TfrmSelecaoImpressao8 = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    frmSelecaoCapaTotalPeriodo: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    Label3: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecaoImpressao8: TfrmSelecaoImpressao8;

implementation

uses UnitPrincipal;

{$R *.dfm}

procedure TfrmSelecaoImpressao8.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprincipal.Enabled := true;
Action := CaFree;
end;

procedure TfrmSelecaoImpressao8.FormShow(Sender: TObject);
begin
frmprincipal.Enabled := False;
end;

procedure TfrmSelecaoImpressao8.BitBtn3Click(Sender: TObject);
begin
Close;
end;

end.
