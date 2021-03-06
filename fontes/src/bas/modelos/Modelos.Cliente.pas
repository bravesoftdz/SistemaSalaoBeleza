{
Descri��o:
  Classe que representa os dados do cliente

Hist�rico de altera��es:
  v1.00 - 10/06/2012
    - Cria��o da classe.
}

unit Modelos.Cliente;

interface

uses 
  System.Classes,
  Generics.SQL,
  Modelos.Modelo,
  CustomAtributes.MapaDB;

type
  TCliente = class(TModelo)
  private
    FNome: string;
    FID: Integer;
    FCodigo: Integer;
    FDataNascimento: TDate;
    FEnderecoCliente: Integer;
    FProfissao: Integer;
    FTelefoneCelular: Int64;
    FTelefoneResidencial: Int64;
    FTelefoneComercial: Int64;
    FMSN: string;
    FObservacao: string;
    FAgendamentoOnLine: Integer;
    FFoto: TStream;
    FDataCadastro: TDateTime;
    FDataManutencao: TDateTime;
    FDataExclusao: TDateTime;
    FUsuario: Integer;

  published
    [TMapaDB('clientes','id_cliente', [atrPesquisa] )]
    [TMapaControlesTela()]
    property ID: Integer read FID write FID;
    
    [TMapaDB('clientes', 'nm_cliente', [atrNenhum] )]
    [TMapaControlesTela()]
    property Nome: string read FNome write FNome;

    [TMapaDB('clientes', 'dt_nascimento', [atrNenhum] )]
    [TMapaControlesTela()]
    property DataNascimento: TDate read FDataNascimento write FDataNascimento;

    [TMapaDB('clientes', 'cd_enderecocliente',[ atrNenhum] )]
    [TMapaControlesTela()]
    property EnderecoCliente: Integer read FEnderecoCliente write FEnderecoCliente;

    [TMapaControlesTela()]
    [TMapaDB('clientes', 'cd_profissao', [atrNenhum] )]
    property Profissao: Integer read FProfissao write FProfissao;

    [TMapaDB('clientes', 'nu_telefonecelular', [atrNenhum] )]
    [TMapaControlesTela()]
    property TelefoneCelular: Int64 read FTelefoneCelular write FTelefoneCelular;

    [TMapaDB('clientes', 'nu_telefoneresidencial', [atrNenhum] )]
    [TMapaControlesTela()]
    property TelefoneResidencial: Int64 read FTelefoneResidencial write FTelefoneResidencial;

    [TMapaDB('clientes', 'nu_telefonecomercial', [atrNenhum] )]
    [TMapaControlesTela()]
    property TelefoneComercial: Int64 read FTelefoneComercial write FTelefoneComercial;

    [TMapaDB('clientes', 'tx_msn', [atrNenhum] )]
    property MSN: string read FMSN write FMSN;

    [TMapaDB('clientes', 'tx_observacao', [atrNenhum] )]
    property Observacao: string read FObservacao write FObservacao;

    [TMapaDB('clientes', 'cd_agendamentoonline', [atrNenhum] )]
    property AgendamentoOnLine: Integer read FAgendamentoOnLine write FAgendamentoOnLine;

    [TMapaDB('clientes', 'im_foto', [atrNenhum] )]
    property Foto: TStream read FFoto write FFoto;

    [TMapaDB('clientes', 'dt_cadastro', [atrNenhum] )]
    property DataCadastro: TDateTime read FDataCadastro write FDataCadastro;

    [TMapaDB('clientes', 'dt_manutencao', [atrNenhum] )]
    property DataManutencao: TDateTime read FDataManutencao write FDataManutencao;

    [TMapaDB('clientes', 'dt_exclusao', [atrNenhum] )]
    property DataExclusao: TDateTime read FDataExclusao write FDataExclusao;

    [TMapaDB('clientes', 'cd_usuario', [atrNenhum] )]
    property Usuario: Integer read FUsuario write FUsuario;
  end;

implementation

{ TClientes }



end.

