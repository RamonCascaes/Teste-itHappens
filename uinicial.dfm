object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 400
    Top = 8
    object Entrada1: TMenuItem
      Caption = 'Estoque'
      object Entrada2: TMenuItem
        Caption = 'Entrada'
        OnClick = Entrada2Click
      end
      object Saida1: TMenuItem
        Caption = 'Saida'
        OnClick = Saida1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
