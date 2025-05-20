unit UnitGraficoEntradaMiolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, DbChart, StdCtrls, Buttons,
  DB, ADODB, TeeFunci, Series, Mask, DBCtrls, IBCustomDataSet, IBDatabase,
  IBTable;

type
  TfrmGraficoEntradaMiolo = class(TForm)
    DBCGrafico: TDBChart;
    Timer1: TTimer;
    Series1: TPieSeries;
    Series2: TBarSeries;
    Series3: TLineSeries;
    TeeFunction1: TSubtractTeeFunction;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGraficoEntradaMiolo: TfrmGraficoEntradaMiolo;
  var i : integer = 0;  

implementation

uses UnitDM, UnitPrincipal, UnitDMGrafico;

{$R *.dfm}

procedure TfrmGraficoEntradaMiolo.Timer1Timer(Sender: TObject);
begin
 if i < 360 then
    Series1.Rotate(i+10)
  else
   i := 0;
end;

procedure TfrmGraficoEntradaMiolo.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmGraficoEntradaMiolo.FormActivate(Sender: TObject);
begin
Timer1.Enabled := True;
end;

procedure TfrmGraficoEntradaMiolo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.TEntradaMiolo.Filtered := False;
DM.TEntradaMiolo.Close;
frmPrincipal.EvKeyNavigator1.Active := True;
Timer1.Enabled := False;
frmPrincipal.Enabled := True;
Action := CaFree;
end;


procedure TfrmGraficoEntradaMiolo.FormShow(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := False;
frmPrincipal.Enabled := False;
end;

end.
