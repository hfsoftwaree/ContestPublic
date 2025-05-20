unit UnitGraficoEntradaCapa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, DbChart, StdCtrls, Buttons,
  DB, ADODB, TeeFunci, Series, Mask, DBCtrls, IBCustomDataSet, IBDatabase,
  IBTable;

type
  TfrmGraficoEntradaCapa = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBEdit1: TDBEdit;
    DBCGrafico: TDBChart;
    BitBtn1: TBitBtn;
    Series1: TPieSeries;
    TeeFunction1: TSubtractTeeFunction;
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
  frmGraficoEntradaCapa: TfrmGraficoEntradaCapa;
  var i : integer = 0;  

implementation

uses UnitDM, UnitPrincipal, UnitDMGrafico;

{$R *.dfm}

procedure TfrmGraficoEntradaCapa.Timer1Timer(Sender: TObject);
begin
 if i < 360 then
    Series1.Rotate(i+10)
  else
   i := 0;
end;

procedure TfrmGraficoEntradaCapa.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmGraficoEntradaCapa.FormActivate(Sender: TObject);
begin
Timer1.Enabled := True;
end;

procedure TfrmGraficoEntradaCapa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.TEntradaCapa.Filtered := False;
DM.TEntradaCapa.Close; 
frmPrincipal.EvKeyNavigator1.Active := True;
Timer1.Enabled := False;
frmPrincipal.Enabled := True;
Action := CaFree;
end;


procedure TfrmGraficoEntradaCapa.FormShow(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := False;
frmPrincipal.Enabled := False;
end;

end.
