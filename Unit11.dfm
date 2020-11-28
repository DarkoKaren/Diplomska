object Form11: TForm11
  Left = 274
  Top = 132
  Width = 870
  Height = 508
  Caption = 'Forma za promena na vozila'
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
    Top = 41
    Width = 854
    Height = 256
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 28
      Height = 13
      Caption = 'Model'
    end
    object Label2: TLabel
      Left = 32
      Top = 80
      Width = 29
      Height = 13
      Caption = 'Marka'
    end
    object Label3: TLabel
      Left = 32
      Top = 128
      Width = 14
      Height = 13
      Caption = 'Tip'
    end
    object Label4: TLabel
      Left = 32
      Top = 176
      Width = 28
      Height = 13
      Caption = 'Motor'
    end
    object Label5: TLabel
      Left = 8
      Top = 216
      Width = 76
      Height = 13
      Caption = 'Moknost KW/KC'
    end
    object Label6: TLabel
      Left = 288
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Menuvac'
    end
    object Label10: TLabel
      Left = 288
      Top = 216
      Width = 31
      Height = 13
      Caption = 'Gorivo'
    end
    object Label9: TLabel
      Left = 232
      Top = 176
      Width = 98
      Height = 13
      Caption = 'Godina proizvodstvo'
    end
    object Label8: TLabel
      Left = 304
      Top = 128
      Width = 27
      Height = 13
      Caption = 'Serija'
    end
    object Label7: TLabel
      Left = 304
      Top = 80
      Width = 21
      Height = 13
      Caption = 'Boja'
    end
    object Label11: TLabel
      Left = 488
      Top = 24
      Width = 10
      Height = 13
      Caption = 'Id'
    end
    object Edit1: TEdit
      Left = 88
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 88
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 88
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 88
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 88
      Top = 208
      Width = 81
      Height = 21
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 344
      Top = 24
      Width = 57
      Height = 21
      TabOrder = 5
    end
    object Edit10: TEdit
      Left = 344
      Top = 208
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object Edit9: TEdit
      Left = 344
      Top = 168
      Width = 129
      Height = 21
      TabOrder = 7
    end
    object Edit8: TEdit
      Left = 344
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 8
    end
    object Edit7: TEdit
      Left = 344
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 9
    end
    object Button1: TButton
      Left = 672
      Top = 24
      Width = 105
      Height = 25
      Hint = 'Promena na podatocite!'
      Caption = 'Promeni podatoci'
      TabOrder = 10
      OnClick = Button1Click
    end
    object Edit11: TEdit
      Left = 512
      Top = 24
      Width = 57
      Height = 21
      TabOrder = 11
    end
    object Edit12: TEdit
      Left = 752
      Top = 192
      Width = 73
      Height = 21
      ReadOnly = True
      TabOrder = 12
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 297
    Width = 854
    Height = 173
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 137
      Top = 1
      Width = 716
      Height = 171
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 136
      Height = 171
      Align = alLeft
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 41
    Align = alTop
    TabOrder = 2
    object Panel4: TPanel
      Left = 736
      Top = 1
      Width = 117
      Height = 39
      Align = alRight
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 0
      object Button2: TButton
        Left = 8
        Top = 6
        Width = 89
        Height = 25
        Hint = 'Izlez od formata!'
        Cancel = True
        Caption = 'Izlezi'
        TabOrder = 0
        OnClick = Button2Click
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form2.Avtobaza
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From vozilo')
    Left = 568
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 600
    Top = 168
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 608
    Top = 257
  end
  object ADOQuery2: TADOQuery
    Connection = Form2.Avtobaza
    Parameters = <>
    Left = 576
    Top = 257
  end
end
