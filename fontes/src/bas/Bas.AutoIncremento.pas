{
Descri��o:
  Classe utilizada para gerar os c�digos das tabelas que possuem campos chaves.
  Essa classe utiliza os generators do DB

Hist�rico de altera��es:
  v1.00 - 24/06/2012
    - Cria��o da classe.
}

unit Bas.AutoIncremento;

interface

uses
  Data.SqlExpr,
  System.SysUtils, Lib.Funcoes, Lib.Recursos;

type
  TAutoIncremento = class
  type
    TTabela = (tblCLIENTES, tblAGENDAMENTOONLINE, tblBAIRROS, tblENDERECOCLIENTE,
      tblLOGRADOUROS, tblPROFISSOES, tblUFS, tblUSUARIOS, tblMUNICIPIOS, tblPROFISSIONAIS);


  private
    const ID_MAXIMO = 999999999;


  private
    SQLDataSet: TSQLDataSet;

    function ExecutaSQL(const SQL: string): Integer;
    function ValidarCampoID(const ATabela: string; const AIdentificador: Integer;
      const ACampo: string): Boolean;

    function RetornarID(const AGenerator, ATabela, ACampo: string): Integer;


  public
    function RetornarCodigo( const ATabale: TTabela ): Integer;
    constructor Create( const AConexao: TSQLConnection );
    destructor Destroy; override;

    class function NovoCodigo( const ATabale: TTabela;
      const AConexao: TSQLConnection  ):Integer;
  end;

implementation

{ TAutoIncremento }

constructor TAutoIncremento.Create( const AConexao: TSQLConnection);
begin
  SQLDataSet:= TSQLDataSet.Create(nil);
  SQLDataSet.SQLConnection:= AConexao;
end;



destructor TAutoIncremento.Destroy;
begin
  if Assigned( SQLDataSet ) then
    FreeAndNil( SQLDataSet );

  inherited;
end;



function TAutoIncremento.ExecutaSQL(const SQL: string): Integer;
begin
  SQLDataSet.Close;
  try
    SQLDataSet.CommandText:= SQL;
    SQLDataSet.Open;

    Result:=  SQLDataSet.Fields[0].AsInteger;
  finally
    SQLDataSet.Close;
  end;
end;




function TAutoIncremento.ValidarCampoID(const ATabela: string;
  const AIdentificador: Integer; const ACampo: string): Boolean;
begin
  SQLDataSet.Close;
  try
    SQLDataSet.CommandText:= 'select ' + TFuncoes.InserirAspasDuplas(ACampo) + ' from ' +
      TFuncoes.InserirAspasDuplas(ATabela) + ' where ' +
      TFuncoes.InserirAspasDuplas(ACampo) + ' = ' + IntToStr(AIdentificador);

    SQLDataSet.Open;

    Result:=  SQLDataSet.IsEmpty;
  finally
    SQLDataSet.Close;
  end;
end;



class function TAutoIncremento.NovoCodigo(const ATabale: TTabela;
  const AConexao: TSQLConnection): Integer;
var
  AutoIncremento: TAutoIncremento;
begin
  AutoIncremento:= TAutoIncremento.Create( AConexao );
  try

    Result:= AutoIncremento.RetornarCodigo(ATabale);

  finally
    if (Assigned( AutoIncremento )) then
      FreeAndNil(AutoIncremento)
  end;
end;



function TAutoIncremento.RetornarCodigo(const ATabale: TTabela): Integer;
begin

  case ATabale of
    tblCLIENTES:
      Result:= RetornarID('id_cliente_clientes_gn', 'clientes', 'id_cliente');

    tblAGENDAMENTOONLINE:
      Result:= RetornarID('id_agentonline_agentonline_gn', 'agendamentoonline', 'id_agendamentoonline');

    tblBAIRROS:
      Result:= RetornarID('id_bairro_bairros_gn', 'bairros', 'id_bairros');

    tblENDERECOCLIENTE:
      Result:= RetornarID('id_enderecocliente_endcli_gn', 'enderecocliente', 'id_enderecocliente');

    tblLOGRADOUROS:
      Result:= RetornarID('id_logradouro_logradouros_gn', 'logradouros', 'id_logradouro');

    tblPROFISSOES:
      Result:= RetornarID('id_profissao_profissoes_gn', 'profissoes', 'id_profissao');

    tblUFS:
      Result:= RetornarID('id_uf_ufs_gn', 'ufs', 'id_uf');

    tblUSUARIOS:
      Result:= RetornarID('id_usuario_usuarios_gn', 'usuarios', 'id_usuario');

    tblMUNICIPIOS:
      Result:= RetornarID('id_municipio_municipios_gn', 'municipios', 'id_municipio');

    tblPROFISSIONAIS:
      Result:= RetornarID( 'id_profissional_prof_gn', 'profissionais', 'id_profissional' )
  else
    Result:= 0;
  end;


end;



function TAutoIncremento.RetornarID(const AGenerator, ATabela, ACampo: string): Integer;
begin
  Result:= 0;

  while (True) do
  begin
    Result:= ExecutaSQL(
      'select gen_id('+ TFuncoes.InserirAspasDuplas(AGenerator) +
      ' ,1 ) from RDB$DATABASE'
    );

    if (ValidarCampoID(ATabela, Result, ACampo)) then
      Break;

    if ( Result = ID_MAXIMO ) then
      raise Exception.Create(Format(RSIDMaximoAtingido, [ATabela]));
  end;
end;



end.
