object Form10: TForm10
  Left = 315
  Top = 300
  Width = 870
  Height = 403
  Caption = 'Forma za pregled na uslugi'
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
    Width = 854
    Height = 365
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 0
      Width = 849
      Height = 329
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Panel2: TPanel
      Left = 672
      Top = 328
      Width = 185
      Height = 41
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 1
      object Button1: TButton
        Left = 16
        Top = 8
        Width = 156
        Height = 27
        Hint = 'Izlez od formata!'
        Cancel = True
        Caption = '&Izlez '
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object Izvestaj: TButton
      Left = 528
      Top = 336
      Width = 75
      Height = 25
      Caption = 'Izvestaj'
      TabOrder = 2
      OnClick = IzvestajClick
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 96
    Top = 336
  end
  object ADOQuery1: TADOQuery
    Connection = Form2.Avtobaza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Uslugi')
    Left = 136
    Top = 336
  end
end
