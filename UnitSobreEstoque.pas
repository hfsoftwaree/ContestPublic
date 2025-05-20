unit UnitSobreEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TfrmSobreEstoque = class(TForm)
    Bevel2: TBevel;
    Bevel1: TBevel;
    RichEdit1: TRichEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobreEstoque: TfrmSobreEstoque;

implementation

uses UnitPrincipal;

{$R *.dfm}

procedure TfrmSobreEstoque.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmSobreEstoque.Button1Click(Sender: TObject);
begin
RichEdit1.Print(RichEdit1.Lines.Text);
end;

procedure TfrmSobreEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
Action := CaFree;
end;

procedure TfrmSobreEstoque.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;
end;

end.
