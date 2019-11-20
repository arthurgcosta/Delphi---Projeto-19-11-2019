object FrmTabuada: TFrmTabuada
  Left = 470
  Top = 103
  Caption = 'Tabuada'
  ClientHeight = 309
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 16
    Width = 223
    Height = 22
    Caption = 'Insira um valor de 1 at'#233' 10'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object edtValor: TEdit
    Left = 8
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object lsbResult: TListBox
    Left = 8
    Top = 83
    Width = 121
    Height = 209
    ItemHeight = 13
    TabOrder = 1
  end
  object btnGerar: TButton
    Left = 152
    Top = 56
    Width = 97
    Height = 21
    Caption = 'Gerar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnGerarClick
  end
  object pnlResult: TPanel
    Left = 135
    Top = 96
    Width = 123
    Height = 177
    TabOrder = 3
  end
end
