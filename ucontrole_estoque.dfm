object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Controle de Estoque'
  ClientHeight = 273
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 233
    Height = 273
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 196
      Width = 103
      Height = 13
      Caption = 'Qtd total do produto:'
    end
    object Label2: TLabel
      Left = 24
      Top = 140
      Width = 76
      Height = 13
      Caption = 'Add quantidade'
    end
    object Combofil: TComboBox
      Left = 24
      Top = 48
      Width = 193
      Height = 21
      TabOrder = 0
      Text = 'Selecione a Filial'
    end
    object Combopro: TComboBox
      Left = 24
      Top = 75
      Width = 193
      Height = 21
      TabOrder = 1
      Text = 'Selecione o produto'
      OnChange = ComboproChange
    end
    object edit_qtdpro: TEdit
      Left = 106
      Top = 132
      Width = 81
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Entrada'
      TabOrder = 3
    end
    object Button2: TButton
      Left = 108
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Saida'
      TabOrder = 4
    end
    object edt_qtdtotal: TEdit
      Left = 128
      Top = 188
      Width = 75
      Height = 21
      TabOrder = 5
    end
    object Button3: TButton
      Left = 24
      Top = 102
      Width = 75
      Height = 25
      Caption = 'Add produto'
      TabOrder = 6
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 8
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Button4'
      TabOrder = 7
    end
    object Button5: TButton
      Left = 89
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Button4'
      TabOrder = 8
    end
  end
end
