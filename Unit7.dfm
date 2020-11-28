object Form7: TForm7
  Left = 362
  Top = 207
  Width = 781
  Height = 386
  Caption = 'Forma za pregled na sopstvenici'
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
    Width = 765
    Height = 348
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 632
      Height = 346
      Align = alLeft
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Button1: TButton
      Left = 656
      Top = 40
      Width = 97
      Height = 25
      Hint = 'Vnes na nov sopstvenik!'
      Caption = 'Nov sopstvenik'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Panel2: TPanel
      Left = 648
      Top = 0
      Width = 121
      Height = 33
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 2
      object Button3: TButton
        Left = 8
        Top = 0
        Width = 106
        Height = 33
        Hint = 'Izlez od formata!'
        Cancel = True
        Caption = 'Izlez'
        TabOrder = 0
        OnClick = Button3Click
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 672
    Top = 96
  end
  object ADOQuery1: TADOQuery
    Connection = Form2.Avtobaza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From sopstvenik'
      '')
    Left = 704
    Top = 96
  end
end
