object FrmTelaBase01: TFrmTelaBase01
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Tela Base 01'
  ClientHeight = 310
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  PixelsPerInch = 96
  TextHeight = 13
  object W7Panel2: TW7Panel
    Left = 0
    Top = 261
    Width = 492
    Height = 49
    Version = '1.0.1.0'
    Caption = 'W7Panel1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    SolidColor = clBlack
    InnerBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
    OuterBorders = [wpbLeft, wpbTop, wpbRight, wpbBottom]
    Style = wpsCustom
    FillStyle = pfsGradient
    ColorC = clBlack
    ColorD = clBlack
    Align = alBottom
    ParentFont = False
    TabOrder = 0
    object BtnFechar: TAeroBitBtn
      AlignWithMargins = True
      Left = 389
      Top = 9
      Width = 94
      Height = 31
      Margins.Left = 9
      Margins.Top = 9
      Margins.Right = 9
      Margins.Bottom = 9
      Align = alRight
      Caption = '&Fechar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D1
        CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB29581CBC5C1FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E0
        DFC37C4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7D54B39B8CFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB0927FCB7341FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5A297DB743DBAACA4FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFCAC4C1DD773DAE7E64D05E28D05E28D05E28D05E28D05E28D05E28D05E28B1
        6844FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2B7B1DE773DB17657D05E28DA7544
        D8703BD97039DD6E35DC6831B26744FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB09588E47A40B46F4BD05E28D6713FD36A34D76E38DF7846B7623BFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB26A48E5793FAF7054D05E28D6703F
        D77341D56C37DD7946D16433D4D0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1B6
        B1D56834E37840AB7862D05E28DB8255DF8A61DD8052D56B36DE7A49C5673CB4
        9E94FFFFFFFFFFFFFFFFFFCAC3C0C26136E37740D86B37B9A9A2D05E28DD8D66
        BE5D36D7784EDC7E4FD46B35DE7948D76D3CBA653FB07055B46A49D46532E073
        3DE0733DBD5C32FFFFFFD05E28B26C50FFFFFFAD897AD47146DE8356D7703DD7
        6E39DC733FDE713CDD703ADB6F39DE713BCF5F2EC0B5B1FFFFFFB66D4BFFFFFF
        FFFFFFFFFFFFC1B5B1BB6947DA794EDD7D4FDB7544DA713EDC6F3BD86634BE5A
        32C0B5B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBAA9A2AD
        7762B07259AF7056AE6E54B29D94FFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 2
      Version = '1.0.0.0'
      OnClick = BtnFecharClick
    end
    object BtnSalvar: TAeroBitBtn
      AlignWithMargins = True
      Left = 183
      Top = 9
      Width = 94
      Height = 31
      Margins.Left = 9
      Margins.Top = 9
      Margins.Right = 0
      Margins.Bottom = 9
      Align = alRight
      Caption = '&Salvar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFAFC1B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF53A47D5CDA9D69
        A788FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF42A2716AE4A392F4C196EAC155A27AFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE1DC33A06436DB7F4CE78C78EFAD94
        F5C383E7B2459E6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBD4CE
        239E5615D16402D85A28E0724EE78D63EB9D61EB9C53DE8F359B5EDAE1DCFFFF
        FFFFFFFFFFFFFFFFFFFFBDC8C1139A4804C65000CC4C01D35310DA622BE0733A
        E27D31E17714DD6618D46725984FCBD3CDFFFFFFFFFFFFFFFFFF40955C00B93E
        17C44E47D37465DD8B57DE852AD76D5FE38E6AE59461E28E40DA7816CC5C1594
        3FBAC5BCFFFFFFFFFFFF73C5883BC25C88DA9B89DD9F68D98A65DA8EFFFFFF60
        DB8D74E19889E4A589E2A37EDD9A20C5590B8E2EA6B5A8FFFFFFFFFFFF84D396
        79D38D70D48A7CD999FFFFFFFFFFFFFFFFFF76DC9981DE9DA6E6B7A6E4B5A0E1
        AF37C05C05861A98AD98FFFFFFFFFFFF9DDBAC97DCA9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF91DEA787D99CC3EBCBC3E9CAC0E7C64CBD623F8B47FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9E1B788D498DFF2
        E2DFF2E181CA8999D0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFBDE5C684CD8E7BC882B1DCB4FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE9
        D1C8E6C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 0
      Version = '1.0.0.0'
    end
    object BtnExcluir: TAeroBitBtn
      AlignWithMargins = True
      Left = 286
      Top = 9
      Width = 94
      Height = 31
      Margins.Left = 9
      Margins.Top = 9
      Margins.Right = 0
      Margins.Bottom = 9
      Align = alRight
      Caption = '&Excluir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFCFCFD5D8D8DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7DAD3D3
        D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E2E894F4F95FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF4F4F952F2F88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        33339C0000870000875656AEFFFFFFFFFFFFFFFFFFFFFFFF5656AD0000870000
        8733339CFFFFFFFFFFFFFFFFFF3636A50202910202910101910101915555B4FF
        FFFFFFFFFF5656B30000900000900000900000903333A4FFFFFFD2D2E416169C
        05059D04049D04049D03039C03039C5959BC5959BC02029C01019C01019C0101
        9B01019B12129BD2D2E5FFFFFFC0C0DF1919A50707A80707A80606A80606A705
        05A70505A70404A70404A70404A70303A71414A4C0C0DFFFFFFFFFFFFFFFFFFF
        C0C0E01B1BAE0A0AB30909B30909B30808B30808B30707B30707B20606B21717
        ACC0C0E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0E11C1CB70D0DBF0C0CBE0B
        0BBE0B0BBE0A0ABE0A0ABE1919B6C0C0E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5151D01212CA1010C90F0FC90F0FC80E0EC80D0DC84D4DCEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B6BDE3939D83535D82B2BD621
        21D41717D21212D11111D11111D16161DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7474E55B5BE45959E45454E34F4FE24A4AE14545E13F3FE03434DE2B2BDC2424
        DA6868E2FFFFFFFFFFFFFFFFFF7A7AEA7F7FED7F7FED7A7AEC7575EC6F6FEB43
        43D63D3DD95F5FE95B5BE95656E85151E74B4BE67070E8FFFFFFC6C6E45F5FE5
        A5A5F5A0A0F49B9BF39595F35050DCC1C1E8C8C8EE5959E77B7BF07777EF7272
        EF6D6DEE4242E0C5C5E7FFFFFFAEAEED9292F3BFBFF9B9B9F85E5EE0C1C1E8FF
        FFFFFFFFFFE7E7F78383F09696F59393F55A5AE69A9ADEFFFFFFFFFFFFFFFFFF
        CCCCF57C7CEF6B6BE4C1C1E9FFFFFFFFFFFFFFFFFFFFFFFFDFDFF65E5EEA6D6D
        EB9B9BE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0E4C2C2EAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC9C9EEA0A0E2FFFFFFFFFFFFFFFFFF}
      TabOrder = 1
      Version = '1.0.0.0'
    end
  end
end
