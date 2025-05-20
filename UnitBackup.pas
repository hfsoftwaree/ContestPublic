unit UnitBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg;

type
  TfrmBackup = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    btnSair: TBitBtn;
    btnEdit: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackup: TfrmBackup;

implementation

uses UnitBackup1, UnitPrincipal;

{$R *.dfm}

procedure TfrmBackup.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmBackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
Action := CaFree;
end;

procedure TfrmBackup.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;
end;

procedure TfrmBackup.btnEditClick(Sender: TObject);
begin
Application.CreateForm(TfrmBackup1, frmBackup1);
frmBackup1.Show;
end;

end.
