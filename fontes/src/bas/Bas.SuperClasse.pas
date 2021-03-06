unit Bas.SuperClasse;

interface

uses
  Lib.Records,
  Hlp.ConexaoDB,
  System.SysUtils,
  Vcl.Forms,
  Data.SqlExpr;

type
  TSistema = class
  private
    FLogado: Boolean;
    FConexaoDB: TSQLConnection;
  public
    // Controla as dimens�es para abrir as telas na �rea de trabalho do sistema
    DimencoesAberturaTela: TDimencoesAberturaTela;
    property Logado: Boolean read FLogado write FLogado;
    property ConexaoDB: TSQLConnection read FConexaoDB write FConexaoDB;

    constructor Create;
    destructor Destroy; override;

  end;

var
  Sistema: TSistema;

implementation



{ TSistema }

constructor TSistema.Create;
begin
  FConexaoDB:= TSQLConnection.Create( Application );

end;



destructor TSistema.Destroy;
begin

  inherited;

  if (Assigned(FConexaoDB)) then
  begin
    if ( FConexaoDB.Connected ) then
      FConexaoDB.Close;
    FreeAndNil(FConexaoDB);
  end;

end;


initialization
  Sistema:= TSistema.Create;



end.
