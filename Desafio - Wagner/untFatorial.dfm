object FrmFatorial: TFrmFatorial
  Left = 539
  Top = 136
  Caption = 'Fatorial'
  ClientHeight = 165
  ClientWidth = 263
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
  object lblFat: TLabel
    Left = 16
    Top = 16
    Width = 98
    Height = 13
    Caption = 'Informe um n'#250'mero:'
  end
  object lblResult: TLabel
    Left = 104
    Top = 88
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtNum: TEdit
    Left = 130
    Top = 13
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object pnlResult: TPanel
    Left = 39
    Top = 107
    Width = 185
    Height = 41
    TabOrder = 1
  end
  object btnCalc: TButton
    Left = 39
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcClick
  end
  object btnLimpar: TButton
    Left = 130
    Top = 48
    Width = 104
    Height = 25
    Caption = 'Limpar Campos'
    TabOrder = 3
    OnClick = btnLimparClick
  end
end
