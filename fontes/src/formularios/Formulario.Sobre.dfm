inherited FrmTelaSobre: TFrmTelaSobre
  Caption = 'Sobre'
  ClientHeight = 259
  ClientWidth = 576
  OnShow = FormShow
  ExplicitWidth = 582
  ExplicitHeight = 283
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage [0]
    Left = 0
    Top = 0
    Width = 165
    Height = 210
    Align = alLeft
    ExplicitHeight = 295
  end
  inherited W7Panel2: TW7Panel
    Top = 210
    Width = 576
    ExplicitTop = 210
    ExplicitWidth = 576
    inherited BtnFechar: TAeroBitBtn
      Left = 473
      ExplicitLeft = 473
    end
    inherited BtnSalvar: TAeroBitBtn
      Left = 267
      Visible = False
      ExplicitLeft = 267
    end
    inherited BtnExcluir: TAeroBitBtn
      Left = 370
      Visible = False
      ExplicitLeft = 370
    end
  end
  object Panel1: TPanel
    Left = 165
    Top = 0
    Width = 411
    Height = 210
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 171
    ExplicitTop = -3
    object Label1: TLabel
      Left = 32
      Top = 36
      Width = 50
      Height = 14
      Caption = 'Softhair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblVersao: TLabel
      Left = 32
      Top = 75
      Width = 84
      Height = 13
      Caption = 'Vers'#227'o 1.01.1.99'
    end
    object Label3: TLabel
      Left = 32
      Top = 94
      Width = 39
      Height = 13
      Caption = 'Website'
    end
    object Label4: TLabel
      Left = 32
      Top = 160
      Width = 164
      Height = 13
      Caption = 'Microsoft Windows 7 Home Edition'
    end
    object Label5: TLabel
      Left = 32
      Top = 113
      Width = 47
      Height = 13
      Caption = 'Copyrigth'
    end
    object Bevel1: TBevel
      Left = 32
      Top = 143
      Width = 353
      Height = 20
      Shape = bsTopLine
    end
    object Label6: TLabel
      Left = 32
      Top = 56
      Width = 230
      Height = 13
      Caption = 'Sistema para Gerenciamento de Sal'#227'o de Beleza'
    end
    object LinkLabel1: TLinkLabel
      Left = 85
      Top = 94
      Width = 129
      Height = 17
      Caption = 'www.johnidouglas.com.br'
      TabOrder = 0
    end
  end
end
