object Fcontrole_entrada: TFcontrole_entrada
  Left = 0
  Top = 0
  Caption = 'Entrada de Estoque'
  ClientHeight = 307
  ClientWidth = 518
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 307
    Align = alLeft
    TabOrder = 0
    ExplicitLeft = -5
    object Label2: TLabel
      Left = 24
      Top = 147
      Width = 136
      Height = 13
      Caption = 'Add quantidade de entrada:'
    end
    object Label3: TLabel
      Left = 250
      Top = 29
      Width = 32
      Height = 13
      Caption = 'Pedido'
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
    end
    object Button1: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Entrada'
      TabOrder = 2
    end
    object Button3: TButton
      Left = 24
      Top = 102
      Width = 75
      Height = 25
      Caption = 'Add produto'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 1
      Top = 278
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 4
      OnClick = Button4Click
    end
    object Memo1: TMemo
      Left = 250
      Top = 48
      Width = 257
      Height = 217
      Lines.Strings = (
        '')
      ReadOnly = True
      TabOrder = 5
    end
    object Edit_qtd: TEdit
      Left = 24
      Top = 166
      Width = 75
      Height = 21
      TabOrder = 6
    end
    object Button2: TButton
      Left = 432
      Top = 278
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 7
      OnClick = Button2Click
    end
  end
end
