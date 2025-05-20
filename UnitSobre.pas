unit UnitSobre;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, CJVLinkLabel, Registry;

type
  TFrmSobre = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    Label11: TLabel;
    CJVLinkLabel1: TCJVLinkLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
  procedure ValidarBasedeDados;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSobre: TFrmSobre;

implementation

{$R *.dfm}

procedure TFrmSobre.FormShow(Sender: TObject);
begin
MessageBeep(0);
end;

procedure TFrmSobre.SpeedButton1Click(Sender: TObject);
begin
Close;
end;

Procedure TFrmSobre.ValidarBasedeDados;
var IniFile: TRegIniFile;
    Chave: String;
begin
    IniFile:=TRegIniFile.Create('Software\HF Softwares');
    chave:=IniFile.ReadString('Contesto','CaminhoDados',chave);
    Label13.Caption := (Chave);
end;

procedure TFrmSobre.FormActivate(Sender: TObject);
begin
ValidarBasedeDados;
end;


end.

