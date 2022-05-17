object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Suma y resta'
  ClientHeight = 479
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 105
    Width = 6
    Height = 16
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 527
    Top = 155
    Width = 6
    Height = 16
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Grid1: TStringGrid
    Left = 144
    Top = 32
    Width = 241
    Height = 177
    ColCount = 2
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object Grid2: TStringGrid
    Left = 567
    Top = 40
    Width = 210
    Height = 169
    ColCount = 2
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 1
  end
  object Grid3: TStringGrid
    Left = 232
    Top = 272
    Width = 281
    Height = 177
    ColCount = 2
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 2
  end
  object Button1: TButton
    Left = 456
    Top = 56
    Width = 57
    Height = 57
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 576
    Top = 264
    Width = 65
    Height = 49
    Caption = 'columna +'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 703
    Top = 264
    Width = 65
    Height = 49
    Caption = 'columna -'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 576
    Top = 359
    Width = 65
    Height = 49
    Caption = 'rengl'#243'n +'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 703
    Top = 359
    Width = 65
    Height = 49
    Caption = 'rengl'#243'n -'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 160
    Top = 289
    Width = 49
    Height = 41
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button6Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 104
    Width = 65
    Height = 21
    TabOrder = 9
    Text = '1'
  end
  object Edit2: TEdit
    Left = 448
    Top = 152
    Width = 65
    Height = 21
    TabOrder = 10
    Text = '1'
  end
end
