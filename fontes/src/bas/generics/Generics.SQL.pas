unit Generics.SQL;

interface

uses
  System.SysUtils,
  System.RTTI,
  Modelos.Modelo,
  Lib.Funcoes,
  CustomAtributes.MapaDB;

type
  TComandosSQL = class
  public
    class function Select(const AClassType: TClass): string;
    class function SelectTeste: string;
  end;

implementation

{ TCommandTextModelos }



class function TComandosSQL.Select(const AClassType: TClass): string;
var
  oRttiType: TRttiType;
  oRttiProperty: TRttiProperty;
  oRttiContext: TRttiContext;
  oCustomAttribute: TCustomAttribute;

  ListaDeCampos, ClausulaWhere, Tabela: string;

begin
  oRttiContext:= TRttiContext.Create;
  try
    oRttiType:= oRttiContext.GetType( AClassType );

    for oRttiProperty in oRttiType.GetProperties do
    begin
      for oCustomAttribute in oRttiProperty.GetAttributes do
      begin
        if ( oCustomAttribute is TMapaDB ) then
        begin
          if (Tabela = EmptyStr) then
            Tabela:= TFuncoes.InserirAspasDuplas( ( TMapaDB( oCustomAttribute ).TabelaDB ) );

          if (ListaDeCampos <> EmptyStr) then
            ListaDeCampos:= ListaDeCampos + ' , ';

          ListaDeCampos:= ListaDeCampos +
            TFuncoes.InserirAspasDuplas( ( TMapaDB( oCustomAttribute ).CampoDB ) );

          if ( atrPesquisa in TMapaDB( oCustomAttribute ).AtributosCampoDB  ) then
          begin
            if (ClausulaWhere <> EmptyStr) then
              ClausulaWhere:= ' and ' + ClausulaWhere;

            ClausulaWhere:= ClausulaWhere + TFuncoes.InserirAspasDuplas ( TMapaDB( oCustomAttribute ).CampoDB ) + ' = :' +
              TMapaDB( oCustomAttribute ).CampoDB;
          end;

        end;
      end;
    end;
  finally
    oRttiContext.Free;
  end;

  Result:=
      ' select ' +
      ListaDeCampos   +
      ' from ' +
      Tabela   +
      ' where '  +
      ClausulaWhere;
end;



class function TComandosSQL.SelectTeste: string;
begin
  Result:=
    ' select * from RDB$DATABASE where RDB$RELATION_ID = :RDB$RELATION_ID ';
end;



end.
