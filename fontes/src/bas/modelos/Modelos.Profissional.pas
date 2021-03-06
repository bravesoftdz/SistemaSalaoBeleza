unit Modelos.Profissional;

interface

uses
  Modelos.Modelo,
  CustomAtributes.MapaDB;

type
  TProfissional = class(TModelo)
  private
    FID: Integer;
    FDescricao: string;
    FDataExclusao: TDateTime;
    FDataManutencao: TDateTime;
    FDataCadastro: TDateTime;
    FUsuario: Integer;

  public

    [TMapaDB('profissionais', 'id_profissional', [atrPesquisa] )]
    property ID: Integer read FID write FID;

    [TMapaDB('profissionais', 'nm_profissional', [] )]
    property Descricao: string read FDescricao write FDescricao;

    [TMapaDB('profissionais', 'dt_cadastro', [] )]
    property DataCadastro: TDateTime read FDataCadastro write FDataCadastro;

    [TMapaDB('profissionais', 'dt_manutencao', [] )]
    property DataManutencao: TDateTime read FDataManutencao write FDataManutencao;

    [TMapaDB('profissionais', 'dt_exclusao', [] )]
    property DataExclusao: TDateTime read FDataExclusao write FDataExclusao;

    [TMapaDB('profissionais', 'cd_usuario', [] )]
    property Usuario: Integer read FUsuario write FUsuario;

  end;


implementation

end.
