unit UnitDMPrincipal;

interface

uses
  SysUtils, Classes, DB, ADODB, IBCustomDataSet, IBTable, IBDatabase;

type
  TDMPrincipal = class(TDataModule)
    DManutencao: TDataSource;
    DEssencia: TDataSource;
    DFornecedor: TDataSource;
    TManutencao: TIBTable;
    TEssencia: TIBTable;
    TFornecedor: TIBTable;
    TManutencaoCODIGOEMPRESA: TIntegerField;
    TManutencaoNOMEEMPRESA: TIBStringField;
    TManutencaoNOMEFANTASIA: TIBStringField;
    TManutencaoENDERECO: TIBStringField;
    TManutencaoNUMERO: TIBStringField;
    TManutencaoCOMPLEMENTO: TIBStringField;
    TManutencaoBAIRRO: TIBStringField;
    TManutencaoCEP: TIBStringField;
    TManutencaoCX: TIBStringField;
    TManutencaoCIDADE: TIBStringField;
    TManutencaoCIDADEUF: TIBStringField;
    TManutencaoFONE: TIBStringField;
    TManutencaoFAX: TIBStringField;
    TManutencaoEMAIL: TIBStringField;
    TManutencaoWEB: TIBStringField;
    TManutencaoCNPJ: TIBStringField;
    TManutencaoINSCESTADUAL: TIBStringField;
    TManutencaoREGIBAMA: TIBStringField;
    TManutencaoINSCMUNICIPAL: TIBStringField;
    TManutencaoINSCJUNTA: TIBStringField;
    TManutencaoDATAREGJUNTA: TIBStringField;
    TManutencaoINIATIVIDADE: TIBStringField;
    TManutencaoCAPITALSOCIAL: TFloatField;
    TManutencaoCANE: TIBStringField;
    TManutencaoCNAEDESCRICAO: TIBStringField;
    TManutencaoNATESTABELECIMENTO: TIBStringField;
    TManutencaoRESPONSAVELEMPRESA: TIBStringField;
    TManutencaoCPFRESPONSAVEL: TIBStringField;
    TManutencaoCONTADOR: TIBStringField;
    TManutencaoCPFCONTADOR: TIBStringField;
    TManutencaoCRCCONTADOR: TIBStringField;
    TManutencaoNOMEFILIAL: TIBStringField;
    TManutencaoCNPJFILIAL: TIBStringField;
    TManutencaoNOME: TIBStringField;
    TFornecedorCODIGOFORNECEDOR: TIntegerField;
    TFornecedorNOMEFORNECEDOR: TIBStringField;
    TFornecedorNOMEFANTASIA: TIBStringField;
    TFornecedorENDERECO: TIBStringField;
    TFornecedorNUMERO: TIBStringField;
    TFornecedorCOMPLEMENTO: TIBStringField;
    TFornecedorBAIRRO: TIBStringField;
    TFornecedorCEP: TIBStringField;
    TFornecedorCX: TIBStringField;
    TFornecedorCIDADE: TIBStringField;
    TFornecedorCIDADEUF: TIBStringField;
    TFornecedorFONE: TIBStringField;
    TFornecedorFAX: TIBStringField;
    TFornecedorEMAIL: TIBStringField;
    TFornecedorWEB: TIBStringField;
    TFornecedorCNPJ: TIBStringField;
    TFornecedorREGIBAMA: TIBStringField;
    TFornecedorCNAE: TIBStringField;
    TFornecedorCNAEDESCRICAO: TIBStringField;
    TFornecedorNATESTABELECIMENTO: TIBStringField;
    TFornecedorINSCESTADUAL: TIntegerField;
    TManutencaoCNAE: TIBStringField;
    TFornecedorCONTATO: TIntegerField;
    TFornecedorCONTATOFONE: TIBStringField;
    TFornecedorCONTATOFAX: TIBStringField;
    TFornecedorCONTATORAMAL: TIBStringField;
    TFornecedorCONTATOEMAIL: TIBStringField;
    TEssenciaCODIGO: TIntegerField;
    TEssenciaESSENCIA: TIBStringField;
    TEssenciaTINICIALCAPA: TFloatField;
    TEssenciaTINICIALMIOLO: TFloatField;
    TEssenciaEENTRADAS: TFloatField;
    TEssenciaEPRODUCAO: TFloatField;
    TEssenciaTPRODUCAO: TFloatField;
    TEssenciaTVENDAS: TFloatField;
    TFornecedorLOGRADOURO: TIBStringField;
    TManutencaoLOGRADOURO: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPrincipal: TDMPrincipal;

implementation

uses UnitDM;

{$R *.dfm}

end.
