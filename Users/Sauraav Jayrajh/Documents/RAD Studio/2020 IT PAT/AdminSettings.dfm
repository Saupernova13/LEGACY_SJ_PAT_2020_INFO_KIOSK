object Form_Admin: TForm_Admin
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'AdminSettings'
  ClientHeight = 993
  ClientWidth = 1041
  Color = clGrayText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Label_Admin: TLabel
    Left = 381
    Top = 356
    Width = 98
    Height = 18
    Caption = 'Admin End'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Perpetua Titling MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label_User: TLabel
    Left = 381
    Top = 236
    Width = 82
    Height = 18
    Caption = 'User End'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Perpetua Titling MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label_Passwords: TLabel
    Left = 355
    Top = 176
    Width = 307
    Height = 32
    Caption = 'Change Passwords'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Perpetua Titling MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Edit_AdminPass: TEdit
    Left = 381
    Top = 380
    Width = 238
    Height = 24
    TabOrder = 0
    Text = 'Enter a password for an admin account'
  end
  object Edit_UserPass: TEdit
    Left = 381
    Top = 260
    Width = 238
    Height = 24
    TabOrder = 1
    Text = 'Enter a password for a user password'
  end
  object Check_SecretUI: TCheckBox
    Left = 440
    Top = 488
    Width = 129
    Height = 17
    Caption = 'Unlock Secret UI'
    TabOrder = 2
  end
  object BitBtn_Exit: TBitBtn
    Left = 464
    Top = 952
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object Button1: TButton
    Left = 416
    Top = 299
    Width = 153
    Height = 25
    Caption = 'Change User Password'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 416
    Top = 420
    Width = 153
    Height = 25
    Caption = 'Change Admin Password'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 223
    Top = 726
    Width = 284
    Height = 49
    Caption = 'Change Items in Abbachios Alfredo Adventure'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 223
    Top = 616
    Width = 284
    Height = 49
    Caption = 'Change Items in Bruno'#39's Burgers'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 513
    Top = 726
    Width = 284
    Height = 49
    Caption = 'Change Items in Giorno'#39's Golden Experience'
    TabOrder = 8
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 223
    Top = 671
    Width = 284
    Height = 49
    Caption = 'Change Items in Mista'#39's Munchies'
    TabOrder = 9
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 513
    Top = 616
    Width = 284
    Height = 49
    Caption = 'Change Items in Nibbling Narancia'
    TabOrder = 10
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 513
    Top = 671
    Width = 284
    Height = 49
    Caption = 'Change Items in Panacotta'#39's Pizzeria'
    TabOrder = 11
    OnClick = Button8Click
  end
  object RichEdit1: TRichEdit
    Left = 720
    Top = 5000
    Width = 185
    Height = 89
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 12
  end
  object Button9: TButton
    Left = 456
    Top = 511
    Width = 75
    Height = 25
    Caption = 'Change UI'
    TabOrder = 13
    OnClick = Button9Click
  end
end
