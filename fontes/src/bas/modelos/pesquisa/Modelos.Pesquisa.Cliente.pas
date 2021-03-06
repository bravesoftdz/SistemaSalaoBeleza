unit Modelos.Pesquisa.Cliente;

interface

uses
  Modelos.Pesquisa.IInterface,
  Modelos.Pesquisa.Tela,
  Vcl.Controls,
  Vcl.StdCtrls,
  System.SysUtils,
  Lib.Funcoes;

type
  TPesquisaCliente = class( TInterfacedObject, IBuscaCampo )

  public
    function Buscar(AControle: TWinControl; out ARetorno: Integer): Boolean;

  end;

implementation

{ TPesquisaCliente }

function TPesquisaCliente.Buscar(AControle: TWinControl; out ARetorno: Integer): Boolean;
var
  FrmTelaPesquisa: TFrmTelaPesquisa;
begin
  Result:= False;
  FrmTelaPesquisa:= TFrmTelaPesquisa.Create( AControle.Owner );
  try
    FrmTelaPesquisa.Caption:= 'Pesquisa Clientes';
    FrmTelaPesquisa.AdvEdit1.LabelCaption:= 'Nome do cliente';

    FrmTelaPesquisa.ComandoSQL:=
      ' select ' + TFuncoes.InserirAspasDuplas('id_cliente') + ', ' +
                   TFuncoes.InserirAspasDuplas('nm_cliente') +
      '   from ' + TFuncoes.InserirAspasDuplas('clientes') +
      '  where ' + TFuncoes.InserirAspasDuplas('dt_exclusao') + ' is null ';

    with FrmTelaPesquisa do
    begin
      AdicionaMapaCampos( 'id_cliente', 'C�digo', 70 );
      AdicionaMapaCampos( 'nm_cliente', 'Nome', 350  );
    end;
    FrmTelaPesquisa.Preparar;

    FrmTelaPesquisa.DefinirTamanho( 375, 500  );

    FrmTelaPesquisa.CampoLocate:= 'nm_cliente';

    FrmTelaPesquisa.ShowModal;
    if (FrmTelaPesquisa.ModalResult = mrOk) then
    begin
      TCustomEdit( AControle ).Text:=
        FrmTelaPesquisa.ClientDataSet1.Fields[0].Value;

      ARetorno:= FrmTelaPesquisa.ClientDataSet1.Fields[0].Value;

      Result:= True;
    end;
  finally
    FreeAndNil(FrmTelaPesquisa);
  end;
end;

end.
