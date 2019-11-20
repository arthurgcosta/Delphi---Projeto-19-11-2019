object FrmAumSal: TFrmAumSal
  Left = 512
  Top = 118
  Caption = 'C'#225'lculo Salarial'
  ClientHeight = 181
  ClientWidth = 332
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
  object lblValor: TLabel
    Left = 16
    Top = 16
    Width = 143
    Height = 13
    Caption = 'Insira o valor do sal'#225'rio atual:'
  end
  object lblPerc: TLabel
    Left = 16
    Top = 57
    Width = 165
    Height = 13
    Caption = 'Informe o percentual do aumento:'
  end
  object lblResult: TLabel
    Left = 16
    Top = 136
    Width = 89
    Height = 13
    Caption = 'Sal'#225'rio Atualizado:'
  end
  object edtSal: TEdit
    Left = 202
    Top = 13
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtPerc: TEdit
    Left = 202
    Top = 54
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnCalc: TButton
    Left = 54
    Top = 89
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcClick
  end
  object btnLimpar: TButton
    Left = 164
    Top = 89
    Width = 93
    Height = 25
    Caption = 'Limpar Campos'
    TabOrder = 3
    OnClick = btnLimparClick
  end
  object pnlResult: TPanel
    Left = 120
    Top = 120
    Width = 185
    Height = 41
    TabOrder = 4
  end
end
