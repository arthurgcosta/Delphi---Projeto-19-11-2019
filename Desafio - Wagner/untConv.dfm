object FrmTemp: TFrmTemp
  Left = 512
  Top = 103
  Caption = 'Conversor de Temperatura'
  ClientHeight = 215
  ClientWidth = 316
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
  object lblC1: TLabel
    Left = 16
    Top = 24
    Width = 62
    Height = 13
    Caption = 'Graus celsius'
  end
  object lblF1: TLabel
    Left = 216
    Top = 24
    Width = 83
    Height = 13
    Caption = 'Graus Fahrenheit'
  end
  object lblF2: TLabel
    Left = 16
    Top = 104
    Width = 83
    Height = 13
    Caption = 'Graus Fahrenheit'
  end
  object lblC2: TLabel
    Left = 216
    Top = 104
    Width = 62
    Height = 13
    Caption = 'Graus celsius'
  end
  object edt1: TEdit
    Left = 16
    Top = 43
    Width = 62
    Height = 21
    TabOrder = 0
  end
  object btnConv1: TButton
    Left = 105
    Top = 41
    Width = 81
    Height = 25
    Caption = 'Converter'
    TabOrder = 1
    OnClick = btnConv1Click
  end
  object btnLimpar: TButton
    Left = 80
    Top = 168
    Width = 145
    Height = 33
    Caption = 'Limpar'
    TabOrder = 2
    OnClick = btnLimparClick
  end
  object edt3: TEdit
    Left = 16
    Top = 123
    Width = 62
    Height = 21
    TabOrder = 3
  end
  object pnlFah: TPanel
    Left = 216
    Top = 43
    Width = 83
    Height = 23
    TabOrder = 4
  end
  object pnlCe: TPanel
    Left = 216
    Top = 123
    Width = 83
    Height = 23
    TabOrder = 5
  end
  object btnConv2: TButton
    Left = 105
    Top = 121
    Width = 81
    Height = 25
    Caption = 'Converter'
    TabOrder = 6
    OnClick = btnConv2Click
  end
end
