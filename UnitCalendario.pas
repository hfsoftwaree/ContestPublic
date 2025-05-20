unit UnitCalendario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls;

type
  TfrmCalendario = class(TForm)
    CALENDARIO: TMonthCalendar;
    MainMenu1: TMainMenu;
    Configurao1: TMenuItem;
    N1mes1: TMenuItem;
    N2meses1: TMenuItem;
    N4Mses1: TMenuItem;
    N6Mses1: TMenuItem;
    N8Mses1: TMenuItem;
    N12Mses1: TMenuItem;
    sAIR1: TMenuItem;
    procedure N2meses1Click(Sender: TObject);
    procedure N1mes1Click(Sender: TObject);
    procedure N4Mses1Click(Sender: TObject);
    procedure N6Mses1Click(Sender: TObject);
    procedure N8Mses1Click(Sender: TObject);
    procedure N12Mses1Click(Sender: TObject);
    procedure sAIR1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalendario: TfrmCalendario;

implementation

uses UnitPrincipal;

{$R *.dfm}

procedure TfrmCalendario.N2meses1Click(Sender: TObject);
begin
Self.AutoSize := False;
Self.Height := 207;
Self.Width := 394;
Self.Position := poScreenCenter;
end;

procedure TfrmCalendario.N1mes1Click(Sender: TObject);
begin
Self.AutoSize := False;
Self.Height := 207;
Self.Width := 198;
Self.Position := poScreenCenter;
end;

procedure TfrmCalendario.N4Mses1Click(Sender: TObject);
begin
Self.AutoSize := False;
Self.Height := 349;
Self.Width := 394;
Self.Position := poScreenCenter;
end;

procedure TfrmCalendario.N6Mses1Click(Sender: TObject);
begin
Self.AutoSize := False;
Self.Height := 491;
Self.Width := 394;
Self.Position := poScreenCenter;
end;

procedure TfrmCalendario.N8Mses1Click(Sender: TObject);
begin
Self.AutoSize := False;
Self.Height := 349;
Self.Width := 786;
Self.Position := poScreenCenter;
end;

procedure TfrmCalendario.N12Mses1Click(Sender: TObject);
begin
Self.AutoSize := False;
Self.Height := 491;
Self.Width := 786;
Self.Position := poScreenCenter;
end;

procedure TfrmCalendario.sAIR1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmCalendario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
Action := Cafree;
end;

procedure TfrmCalendario.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;
CALENDARIO.Date:=(Now);
end;

end.
