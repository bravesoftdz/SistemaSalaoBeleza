unit Formulario.Inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  Vcl.StdCtrls, AdvProgressBar;

type
  TFrmTelaInicial = class(TForm)
    Label1: TLabel;
    AdvProgressBar1: TAdvProgressBar;
  public
    class var FrmTelaInicial: TFrmTelaInicial;
    class procedure TelaInical;
    class procedure AtualizarProgresso(const AMensagem: string;
      const AProgresso: Integer; const ATempoLoop: Cardinal);
  end;

implementation

{$R *.dfm}

{ TFrmTelaInicial }



class procedure TFrmTelaInicial.AtualizarProgresso(const AMensagem: string;
  const AProgresso: Integer; const ATempoLoop: Cardinal);
var
  iPosicao: Integer;
begin
  if (Assigned(FrmTelaInicial)) then
  begin
    FrmTelaInicial.Label1.Caption:= AMensagem;
    FrmTelaInicial.Refresh;

    for iPosicao := FrmTelaInicial.AdvProgressBar1.Position to AProgresso do
    begin
      FrmTelaInicial.AdvProgressBar1.Position:= iPosicao;
      Sleep(ATempoLoop)
    end;

  end;
end;



class procedure TFrmTelaInicial.TelaInical;
begin
  if (not(Assigned(FrmTelaInicial))) then
  begin
    FrmTelaInicial:= TFrmTelaInicial.Create(nil);
    FrmTelaInicial.AdvProgressBar1.Position:= 0;
    FrmTelaInicial.Label1.Caption:= EmptyStr;
    FrmTelaInicial.Show;
    FrmTelaInicial.Refresh;
  end else
  begin
    if (Assigned(FrmTelaInicial)) then
      FreeAndNil(FrmTelaInicial);
  end;
end;



end.
