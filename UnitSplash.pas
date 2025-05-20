unit UnitSplash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, jpeg, ComCtrls, EAppProt, CJVBlinkLabel,
  CJVScrollLabel;

type
  TfrmSplash = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    Panel2: TPanel;
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.DFM}

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
Self.Close;
end;


end.
