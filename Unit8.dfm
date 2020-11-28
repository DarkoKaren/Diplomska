object Form8: TForm8
  Left = 474
  Top = 234
  Width = 579
  Height = 261
  Caption = 'Forma za vnesuvanje na novi sopstvenici'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 563
    Height = 223
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 64
      Width = 21
      Height = 13
      Caption = 'Ime '
    end
    object Label2: TLabel
      Left = 24
      Top = 104
      Width = 37
      Height = 13
      Caption = 'Prezime'
    end
    object Label3: TLabel
      Left = 24
      Top = 144
      Width = 37
      Height = 13
      Caption = 'Adresa '
    end
    object Label4: TLabel
      Left = 280
      Top = 64
      Width = 36
      Height = 13
      Caption = 'Telefon'
    end
    object Label5: TLabel
      Left = 280
      Top = 112
      Width = 28
      Height = 13
      Caption = 'E-mail'
    end
    object Edit1: TEdit
      Left = 72
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 72
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 72
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 320
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 320
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Button1: TButton
      Left = 416
      Top = 160
      Width = 129
      Height = 25
      Hint = 'Izlez od formata!'
      Cancel = True
      Caption = '&Izlez'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 264
      Top = 160
      Width = 115
      Height = 25
      Hint = 'Vnes na podatoci!'
      Caption = 'Vnesi podatok'
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object qsopstvenik: TDataSource
    DataSet = vsopstvenik
    Left = 32
    Top = 16
  end
  object vsopstvenik: TADOQuery
    Connection = Form2.Avtobaza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From sopstvenik')
    Left = 64
    Top = 16
  end
end
