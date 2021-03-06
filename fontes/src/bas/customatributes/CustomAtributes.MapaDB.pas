unit CustomAtributes.MapaDB;

interface

type
  TMapaDB = class(TCustomAttribute)
  private
    type
      TTAtributosCampoDB = ( atrNenhum, atrPesquisa );
      TAtributosCampoDB = set of TTAtributosCampoDB;

  private
    FCampoDB: string;
    FAtributosCampoDB: TAtributosCampoDB;
    FTabelaDB: string;

  public
    property TabelaDB: string read FTabelaDB write FTabelaDB;
    property CampoDB: string read FCampoDB write FCampoDB;
    property AtributosCampoDB: TAtributosCampoDB read FAtributosCampoDB
      write FAtributosCampoDB;

    constructor Create(const ATabelaDB: string; const ACampoDB: string;
      const AAtributosCampoDB: TAtributosCampoDB);
  end;

implementation

{ TMapaDB }



constructor TMapaDB.Create(const ATabelaDB: string; const ACampoDB: string;
  const AAtributosCampoDB: TAtributosCampoDB);
begin
  FTabelaDB:= ATabelaDB;
  FCampoDB:= ACampoDB;
  FAtributosCampoDB:= AAtributosCampoDB
end;



end.
