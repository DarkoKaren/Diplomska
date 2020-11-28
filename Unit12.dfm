object Form12: TForm12
  Left = 294
  Top = 207
  Width = 902
  Height = 500
  Caption = 'Form12'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 886
    Height = 421
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 884
      Height = 419
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 48
          Width = 876
          Height = 343
          Align = alBottom
          DataSource = DataSource1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGrid1CellClick
        end
        object Button2: TButton
          Left = 736
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Print'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 886
    Height = 41
    Align = alTop
    TabOrder = 1
    object Panel3: TPanel
      Left = 700
      Top = 1
      Width = 185
      Height = 39
      Align = alRight
      TabOrder = 0
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 41
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
        object Button1: TButton
          Left = 56
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Izlez'
          TabOrder = 0
          OnClick = Button1Click
        end
      end
    end
    object Button3: TButton
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Pregled'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form2.Avtobaza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      '   FROM vozilo, sopstvenik,servis_na_km,servis ')
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 56
    Top = 72
  end
  object PrintDialog1: TPrintDialog
    Left = 684
    Top = 41
  end
end
