unit UnitAnotacoes;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, DBCtrls;

type
  TfrmAnotacoes = class(TForm)
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnotacoes: TfrmAnotacoes;

implementation

uses UnitDMPrincipal, UnitPrincipal;

{$R *.dfm}

procedure TfrmAnotacoes.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;
end;

procedure TfrmAnotacoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
end;


end.

