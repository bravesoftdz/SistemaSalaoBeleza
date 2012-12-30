(*
Descri��o:
  Unidade utilizada para declarar tipo de dados RECORDS

Hist�rico de altera��es:
  v1.00  - 03/06/2012
    - Inclu�do o recrod TDimencoesAberturaTela
*)

unit Lib.Records;

interface

type
  ///  <summary>
  ///    Armazena as informa��es de tamanhos da �rea de trabalho para abrir os
  //     formul�rios no sistema.
  ///  <summary>
  TDimencoesAberturaTela = record
    AlturaConteiner: Integer;
    DistanciaEsquerda: Integer;
    LarguraPadrao: Integer;
    AlturaPadrao: Integer;
  end;

  TRMapaCamposPropriedades = record
    Campo: string;
    Propriedade: string;

    constructor Add(const ACampo, APropriedade: string);
  end;
  TMapaCamposPropriedades = array of TRMapaCamposPropriedades;

implementation

{ TRMapaCamposPropriedades }

constructor TRMapaCamposPropriedades.Add(const ACampo, APropriedade: string);
begin
  Campo:= ACampo;
  Propriedade:= APropriedade;
end;

end.
