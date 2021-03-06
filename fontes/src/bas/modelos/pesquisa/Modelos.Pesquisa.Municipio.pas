unit Modelos.Pesquisa.Municipio;

interface

uses
  Modelos.Pesquisa.IInterface,
  Modelos.Pesquisa.Tela,
  Vcl.Controls,
  Vcl.StdCtrls,
  System.SysUtils,
  Lib.Funcoes;

type
  TPesquisaMunicipio = class( TInterfacedObject, IBuscaCampo )
  public
    function Buscar(AControle: TWinControl; out ARetorno: Integer): Boolean;

  end;

implementation

{ TPesquisaCliente }

function TPesquisaMunicipio.Buscar(AControle: TWinControl; out ARetorno: Integer): Boolean;
var
  FrmTelaPesquisa: TFrmTelaPesquisa;
begin
  Result:= False;

  FrmTelaPesquisa:= TFrmTelaPesquisa.Create( AControle.Owner );
  try
    FrmTelaPesquisa.Caption:= 'Pesquisa Munic�pio';
    FrmTelaPesquisa.AdvEdit1.LabelCaption:= 'Munic�pio';

    FrmTelaPesquisa.ComandoSQL:=
      ' select ' + TFuncoes.InserirAspasDuplas('id_municipio') + ', ' +
                   TFuncoes.InserirAspasDuplas('ds_municipio') +
      '   from ' + TFuncoes.InserirAspasDuplas('municipios') +
      '  where ' + TFuncoes.InserirAspasDuplas('dt_exclusao') + ' is null ';

    with FrmTelaPesquisa do
    begin
      AdicionaMapaCampos( 'id_municipio', 'C�digo', 70 );
      AdicionaMapaCampos( 'ds_municipio', 'Munic�pio', 350  );
    end;

    FrmTelaPesquisa.Preparar;

    FrmTelaPesquisa.DefinirTamanho( 375, 500  );

    FrmTelaPesquisa.CampoLocate:= 'ds_municipio';

    FrmTelaPesquisa.ShowModal;
    if (FrmTelaPesquisa.ModalResult = mrOk) then
    begin
      ARetorno:= FrmTelaPesquisa.ClientDataSet1.Fields[0].Value;

      Result:= True;
    end;

  finally
    FreeAndNil(FrmTelaPesquisa);
  end;

end;



end.
