object FrmCatNad: TFrmCatNad
  Left = 498
  Top = 118
  Caption = 'Consulta Categoria do Nadador'
  ClientHeight = 177
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FrmOnClose
  OnDestroy = FrmOnDestroy
  OnKeyDown = FrmOnKeyDown
  OnKeyPress = FrmOnKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lblAge: TLabel
    Left = 24
    Top = 16
    Width = 138
    Height = 13
    Caption = 'Informe a idade do nadador:'
  end
  object lblCons: TLabel
    Left = 24
    Top = 62
    Width = 113
    Height = 13
    Caption = 'Categoria Pertencente:'
  end
  object edtAge: TEdit
    Left = 24
    Top = 35
    Width = 138
    Height = 21
    TabOrder = 0
  end
  object pnlCat: TPanel
    Left = 24
    Top = 81
    Width = 235
    Height = 41
    TabOrder = 1
  end
  object btnPesq: TButton
    Left = 184
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 2
    OnClick = btnPesqClick
  end
  object btnLimpar: TButton
    Left = 96
    Top = 136
    Width = 105
    Height = 25
    Caption = 'Limpar Campos'
    TabOrder = 3
    OnClick = btnLimparClick
  end
end
