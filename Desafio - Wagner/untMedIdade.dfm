object FrmMedIdade: TFrmMedIdade
  Left = 441
  Top = 118
  Caption = 'Media Idade < ou > 50'
  ClientHeight = 170
  ClientWidth = 430
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
  PixelsPerInch = 96
  TextHeight = 13
  object lblAge1: TLabel
    Left = 16
    Top = 16
    Width = 110
    Height = 13
    Caption = 'Insira a primeira idade:'
  end
  object lblAge2: TLabel
    Left = 160
    Top = 16
    Width = 113
    Height = 13
    Caption = 'Insira a segunda idade:'
  end
  object lblAge3: TLabel
    Left = 304
    Top = 16
    Width = 109
    Height = 13
    Caption = 'Insira a terceira idade:'
  end
  object lblResult: TLabel
    Left = 165
    Top = 93
    Width = 82
    Height = 13
    Caption = 'M'#233'dia das idades'
  end
  object edtAge1: TEdit
    Left = 16
    Top = 35
    Width = 73
    Height = 21
    TabOrder = 0
  end
  object edtAge2: TEdit
    Left = 160
    Top = 35
    Width = 73
    Height = 21
    TabOrder = 1
  end
  object edtAge3: TEdit
    Left = 304
    Top = 35
    Width = 73
    Height = 21
    TabOrder = 2
  end
  object btnCalc: TButton
    Left = 84
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcClick
  end
  object btnLimpar: TButton
    Left = 223
    Top = 62
    Width = 98
    Height = 25
    Caption = 'Limpar Campos'
    TabOrder = 4
    OnClick = btnLimparClick
  end
  object pnlResult: TPanel
    Left = 68
    Top = 112
    Width = 285
    Height = 41
    TabOrder = 5
  end
end
