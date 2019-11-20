object FrmPrincipal: TFrmPrincipal
  Left = 455
  Top = 74
  Caption = 'Menu Principal'
  ClientHeight = 275
  ClientWidth = 429
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mnPrincipal
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object mnPrincipal: TMainMenu
    Left = 16
    Top = 8
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Usurios1: TMenuItem
        Caption = 'Usu'#225'rios'
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
    end
    object Aplicaes1: TMenuItem
      Caption = 'Aplica'#231#245'es'
      object EstruturaLinear1: TMenuItem
        Caption = 'Estrutura Linear'
        object Calculodeaumentosalarial1: TMenuItem
          Caption = 'Calculo de Aumento Salarial'
          OnClick = Calculodeaumentosalarial1Click
        end
        object ConversordeTemperatura1: TMenuItem
          Caption = 'Conversor de Temperatura'
          OnClick = ConversordeTemperatura1Click
        end
      end
      object EstruturadeDeciso1: TMenuItem
        Caption = 'Estrutura de Decis'#227'o'
        object CatagoriadoNadador1: TMenuItem
          Caption = 'Catagoria do Nadador'
          OnClick = CatagoriadoNadador1Click
        end
        object MediaIdade1: TMenuItem
          Caption = 'Media Idade'
          OnClick = MediaIdade1Click
        end
      end
      object EstruturadeRepetio1: TMenuItem
        Caption = 'Estrutura de Repeti'#231#227'o'
        object FatorarNmero1: TMenuItem
          Caption = 'Fatorar N'#250'mero'
          OnClick = FatorarNmero1Click
        end
        object abuadas1: TMenuItem
          Caption = 'Tabuadas'
          OnClick = abuadas1Click
        end
      end
    end
    object Utilitrios1: TMenuItem
      Caption = 'Utilit'#225'rios'
      object Calculadora1: TMenuItem
        Caption = 'Calculadora'
        OnClick = Calculadora1Click
      end
      object Navegador1: TMenuItem
        Caption = 'Navegador'
        OnClick = Navegador1Click
      end
      object Calendrio1: TMenuItem
        Caption = 'Calend'#225'rio'
        OnClick = Calendrio1Click
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      OnClick = Sobre1Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
