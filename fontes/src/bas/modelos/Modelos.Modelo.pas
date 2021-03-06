unit Modelos.Modelo;

interface

uses
  Data.SqlExpr,
  Data.DB,
  System.Variants,
  System.TypInfo,
  Vcl.Forms,
  Vcl.Controls,
  Datasnap.DBClient,
  Datasnap.Provider,
  Dialogs,
  Lib.Records,
  System.SysUtils,
  System.Classes,
  Bas.SuperClasse,
  Modelos.Pesquisa.IInterface;

type
  TModelo = class
  private
    type
      TAtribuicao = ( atrbPropriedadeCampos, atrbCamposPropriedade );

  private

    rMapaCamposPropriedades: TMapaCamposPropriedades;

    SQLDataSet: TSQLDataSet;
    DataSetProvider: TDataSetProvider;
    ClienteDataSet: TClientDataSet;

    procedure PreparaDados(const AAtribuicao: TAtribuicao);
    function GetEstado: TDataSetState;


  public
    function BuscarCampo(AMetodoBusca: IBuscaCampo; AControle: TWinControl): Boolean;

    property Estado: TDataSetState read GetEstado;

    function Pesquisar( ACodigoCliente: Integer ): Boolean;
    function PesquisarSomenteLeitura( ACodigoCliente: Integer ): Boolean;

    procedure NovoRegistro;
    procedure Salvar;
    procedure Exluir(ACodigoCliente: Integer);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TModelo }

uses
  Hlp.ConexaoDB, Generics.SQL, Lib.Funcoes;

procedure TModelo.PreparaDados(const AAtribuicao: TAtribuicao);
var
  iIndice: Integer;

  Valor: Variant;
begin
  for iIndice := Low(rMapaCamposPropriedades) to High(rMapaCamposPropriedades) do
  begin
    case AAtribuicao of
      atrbPropriedadeCampos:
        begin
          Valor:= GetPropValue( Self, rMapaCamposPropriedades[iIndice].Propriedade );
          if (not ( TFuncoes.VariavelVazia ( Valor ) ) ) then
            ClienteDataSet.FieldByName( rMapaCamposPropriedades[iIndice].Campo ).Value:= Valor;

        end;

      atrbCamposPropriedade:
        begin
          if ( not(ClienteDataSet.FieldByName( rMapaCamposPropriedades[iIndice].Campo ).IsNull) ) then
            SetPropValue( Self, rMapaCamposPropriedades[iIndice].Propriedade,
              ClienteDataSet.FieldByName( rMapaCamposPropriedades[iIndice].Campo ).Value );
        end;
    end;


  end;
end;



function TModelo.BuscarCampo(AMetodoBusca: IBuscaCampo; AControle: TWinControl): Boolean;
var
  iCodigo: Integer;
begin
  Result:= AMetodoBusca.Buscar( AControle, iCodigo );
  if ( Result ) then
  begin
    Self.PesquisarSomenteLeitura( iCodigo )
  end;
end;



constructor TModelo.Create;
begin

  SQLDataSet:= TSQLDataSet.Create( Application );
  SQLDataSet.SQLConnection:= Sistema.ConexaoDB;
  SQLDataSet.CommandText:= TComandosSQL.Select( Self.ClassType );


  DataSetProvider:= TDataSetProvider.Create( Application );
  DataSetProvider.Name := 'Provider' + FormatDateTime('ddmmyyyyhhmmsszzz', Now) ;
  DataSetProvider.UpdateMode:= upWhereKeyOnly;
  DataSetProvider.DataSet:= SQLDataSet;

  ClienteDataSet:= TClientDataSet.Create( Application );
  ClienteDataSet.SetProvider( DataSetProvider );
  ClienteDataSet.ProviderName:= DataSetProvider.Name;


  { TO-DO ver para deixar isso }
  SQLDataSet.ParamByName( SQLDataSet.Params[0].Name ).AsInteger := 0;
  ClienteDataSet.Open;

  Setlength(rMapaCamposPropriedades, 0);
  rMapaCamposPropriedades:= TFuncoes.MapearCamposPropriedades( Self.ClassType );



  //TFuncoes.ExiibirMapaDeCampos( rMapaCamposPropriedades );
  //TFuncoes.ExibirPropriedades( Self.ClassType )
end;



destructor TModelo.Destroy;
begin
  SetLength(rMapaCamposPropriedades, 0);

  if (Assigned(ClienteDataSet)) then
    FreeAndNil(ClienteDataSet);

  if (Assigned(DataSetProvider)) then
    FreeAndNil(DataSetProvider);

  if (Assigned(SQLDataSet)) then
    FreeandNil(SQLDataSet);

  inherited;
end;



procedure TModelo.Exluir;
begin

  if ( ClienteDataSet.State in [dsEdit] ) then
  begin


    ClienteDataSet.Post;
    ClienteDataSet.ApplyUpdates( 0 );
  end;
end;



function TModelo.GetEstado: TDataSetState;
begin
  Result:= ClienteDataSet.State;
end;



procedure TModelo.NovoRegistro;
begin

  ClienteDataSet.EmptyDataSet;
  ClienteDataSet.Insert;

end;



function TModelo.Pesquisar(ACodigoCliente: Integer): Boolean;
begin

  Result:= PesquisarSomenteLeitura( ACodigoCliente );

  if ( not(Result) ) then
    ClienteDataSet.Insert
  else begin
    ClienteDataSet.Edit;
  end;
end;



function TModelo.PesquisarSomenteLeitura(ACodigoCliente: Integer): Boolean;
begin
  ClienteDataSet.Close;
  SQLDataSet.ParamByName( SQLDataSet.Params[0].Name ).AsInteger:= ( ACodigoCliente );
  ClienteDataSet.Open;

  Result:= not ClienteDataSet.IsEmpty;
  if ( Result ) then
    PreparaDados( atrbCamposPropriedade );
end;

procedure TModelo.Salvar;
begin
  if ( ClienteDataSet.State in [dsEdit, dsInsert] ) then
  begin

    PreparaDados( atrbPropriedadeCampos );
    ClienteDataSet.Post;
    ClienteDataSet.ApplyUpdates( 0 );
  end;
end;



end.
