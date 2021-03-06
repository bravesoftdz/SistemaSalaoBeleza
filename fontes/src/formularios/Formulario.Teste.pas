unit Formulario.Teste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Formulario.Base01, Vcl.StdCtrls, AeroButtons,
  W7Classes, W7Panels,
  Modelos.Cliente,
  Bas.SuperClasse, Lib.Funcoes, Hlp.ConexaoDB;

type
  TFrmTeste = class(TFrmTelaBase01)
    procedure AeroBitBtn2Click(Sender: TObject);
  private
    { Private declarations }

    procedure CadastrarCliente;

  public
    { Public declarations }
  end;

var
  FrmTeste: TFrmTeste;

implementation

{$R *.dfm}

uses Bas.AutoIncremento;

{ TFrmTeste }

procedure TFrmTeste.AeroBitBtn2Click(Sender: TObject);
begin
  inherited;
  CadastrarCliente
end;

procedure TFrmTeste.CadastrarCliente;
var
  Cliente: TCliente;
begin


  Cliente:= TCliente.Create;
  try
    with Cliente do
    begin
      if (not Pesquisar( 0 )) then
        ID:= TAutoIncremento.NovoCodigo( tblCLIENTES, Sistema.ConexaoDB );


      Nome:= 'johni ';
      DataNascimento:= Now - 100000;
   //   EnderecoCliente:= 3;
   //   Profissao:= 2;

      TelefoneCelular:= 12345;
      TelefoneResidencial:= 12354645;
      TelefoneComercial:= 2345234534;
      MSN:= 'ssadfasdf';

      Observacao:= 'sfadfasdfasd';

    //  AgendamentoOnLine:= 1;

      Foto:= nil;
      DataCadastro:= Now;
      DataExclusao:= 0;
      DataManutencao:= Now;

      Usuario:= 1;

      Salvar;

    end;

  finally
    FreeAndNil(Cliente);
  end;
end;

end.
