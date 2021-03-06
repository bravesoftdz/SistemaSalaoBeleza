unit Hlp.ConexaoDB;

interface

uses
  Data.SqlExpr, System.SysUtils, Vcl.Forms, Vcl.Dialogs,
  Lib.Funcoes;

const
  DB_SENHA = 'masterkey';
  DB_USER = 'SYSDBA';
  DB_ARQUIVO_CONFIGURACAO = 'configuracao.ini'; //'dbxconnections.ini';
  SECAO_ARQUIVO_CONFIGURACAO = 'BASEDADOS';

type
  TConexaoDB = class
  public

    class procedure ConectarDB(ASQLConnection: TSQLConnection);
  end;

implementation

{ TConexaoDB }

{ TConexaoDB }

class procedure TConexaoDB.ConectarDB(ASQLConnection: TSQLConnection);
var
  ArquivoConfiguracao: string;

begin
  //ArquivoConfiguracao :=
  //  (IncludeTrailingBackslash(ExtractFilePath(Application.ExeName))) +
  //  DB_ARQUIVO_CONFIGURACAO;
  ArquivoConfiguracao:= 'c:\sistema\' + DB_ARQUIVO_CONFIGURACAO;

  if (ASQLConnection.Connected) then
    ASQLConnection.Close;

  try

    ASQLConnection.ConnectionName := 'SISTEMA';
    ASQLConnection.DriverName := 'Firebird';
    ASQLConnection.LoadParamsOnConnect := False;
    ASQLConnection.LoginPrompt:= False;


    //ASQLConnection.LocaleCode := 0000;

    with ASQLConnection.Params do
    begin
      Values['Database'] := TFuncoes.LerArquivoIni(ArquivoConfiguracao,
        SECAO_ARQUIVO_CONFIGURACAO, 'Database');

      Values['Password'] := DB_SENHA;
      Values['User_Name'] := DB_USER;
      {
      Values['RoleName'] := TFuncoes.LerArquivoIni(ArquivoConfiguracao,
        SECAO_ARQUIVO_CONFIGURACAO, 'RoleName');

      Values['BlobSize'] := TFuncoes.LerArquivoIni(ArquivoConfiguracao,
        SECAO_ARQUIVO_CONFIGURACAO, 'BlobSize');

      Values['CommitRetain'] := TFuncoes.LerArquivoIni(ArquivoConfiguracao,
        SECAO_ARQUIVO_CONFIGURACAO, 'CommitRetain');

      Values['SQLDialect'] := TFuncoes.LerArquivoIni(ArquivoConfiguracao,
        SECAO_ARQUIVO_CONFIGURACAO, 'SQLDialect');

      Values['IsolationLevel'] := TFuncoes.LerArquivoIni(ArquivoConfiguracao,
        SECAO_ARQUIVO_CONFIGURACAO, 'IsolationLevel');

      Values['WaitOnLocks'] := TFuncoes.LerArquivoIni(ArquivoConfiguracao,
        SECAO_ARQUIVO_CONFIGURACAO, 'WaitOnLocks');

      Values['Trim Char'] := TFuncoes.LerArquivoIni(ArquivoConfiguracao,
        SECAO_ARQUIVO_CONFIGURACAO, 'Trim Char');
      }
    end;

    ASQLConnection.Open;

  except
    on E: Exception do
    begin
      raise Exception.Create('TConexaoDB.ConectarDB[' + E.Message + ']');
    end;
  end;
end;

end.
