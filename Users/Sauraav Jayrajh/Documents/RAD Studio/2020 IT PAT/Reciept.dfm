object Form6: TForm6
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Order Receipt'
  ClientHeight = 982
  ClientWidth = 1041
  Color = clWindowFrame
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Panel_Receipt: TPanel
    Left = 8
    Top = 8
    Width = 1025
    Height = 961
    Color = 3223857
    ParentBackground = False
    TabOrder = 0
    object Label_Reciept: TLabel
      Left = 418
      Top = 18
      Width = 215
      Height = 32
      Caption = 'Your Reciept'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Perpetua Titling MT'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Memo_Receipt: TMemo
      Left = 24
      Top = 72
      Width = 977
      Height = 853
      Color = clWindowFrame
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -37
      Font.Name = 'Lucida Bright'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Button1: TButton
      Left = 440
      Top = 931
      Width = 137
      Height = 25
      Caption = 'Close and Print'
      TabOrder = 1
      OnClick = Button1Click
    end
    object SafePanel: TPanel
      Left = 312
      Top = 328
      Width = 401
      Height = 233
      Caption = 'Click Here'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Perpetua Titling MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = SafePanelClick
    end
  end
end
