unit Formulario.Base01;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  W7Classes,
  W7Panels,
  Vcl.ComCtrls,
  Formulario.Base00,
  Vcl.StdCtrls,
  Bas.SuperClasse,
  AeroButtons,
  Vcl.ImgList,
  Lib.Funcoes;

type
  TFrmTelaBase01 = class(TFrmTelaBase00)
    W7Panel2: TW7Panel;
    BtnFechar: TAeroBitBtn;
    BtnSalvar: TAeroBitBtn;
    BtnExcluir: TAeroBitBtn;
    procedure BtnFecharClick(Sender: TObject);

  protected
    procedure DoShow; override;
    procedure KeyDown( var Key: Word; Shift: TShiftState); override;

    procedure InvalidarCampo(Sender: TObject);
    function ValidarCampos: Boolean; virtual; abstract;
  end;

implementation

{$R *.dfm}

uses
  Modelos.EnderecoCliente;

procedure TFrmTelaBase01.BtnFecharClick(Sender: TObject);
begin

  inherited;
  Close;

end;



procedure TFrmTelaBase01.DoShow;
var
  iTamanhoProporcionalEsquerda, iTamanhoProporcionalTopo: Integer;

begin

  inherited;

  iTamanhoProporcionalTopo:=
    Trunc(
      ((Sistema.DimencoesAberturaTela.AlturaPadrao - Self.Height) / 2)
    );
  
  iTamanhoProporcionalEsquerda:= 
    Trunc((Sistema.DimencoesAberturaTela.LarguraPadrao - Self.Width) / 2);

  Self.Top := Sistema.DimencoesAberturaTela.AlturaConteiner + iTamanhoProporcionalTopo;
  Self.Left:= Sistema.DimencoesAberturaTela.DistanciaEsquerda + iTamanhoProporcionalEsquerda;

end;



procedure TFrmTelaBase01.InvalidarCampo(Sender: TObject);
begin

  TFuncoes.DefinirEstadoCampo( TWinControl(Sender), evldInValido );

end;



procedure TFrmTelaBase01.KeyDown(var Key: Word; Shift: TShiftState);
begin

  if ( Key = VK_RETURN ) then
  begin
   if (not (ValidarCampos)) then
     Exit;
  end;

  inherited;

end;



end.
