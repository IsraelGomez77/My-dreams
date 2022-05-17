object Form8: TForm8
  Left = 0
  Top = 0
  Caption = '3x3'
  ClientHeight = 336
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 423
    Top = 82
    Width = 16
    Height = 23
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 472
    Top = 48
    Width = 10
    Height = 18
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 472
    Top = 88
    Width = 10
    Height = 18
    Caption = 'Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 472
    Top = 128
    Width = 9
    Height = 18
    Caption = 'Z'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Grid1: TStringGrid
    Left = 24
    Top = 24
    Width = 209
    Height = 145
    ColCount = 3
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    RowHeights = (
      24
      24
      24)
  end
  object Grid2: TStringGrid
    Left = 288
    Top = 24
    Width = 113
    Height = 145
    ColCount = 1
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 487
    Top = 47
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object Edit2: TEdit
    Left = 487
    Top = 87
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Button1: TButton
    Left = 344
    Top = 248
    Width = 121
    Height = 25
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 487
    Top = 127
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object Grid3: TStringGrid
    Left = 105
    Top = 216
    Width = 214
    Height = 105
    ColCount = 3
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    TabOrder = 6
    Visible = False
  end
end
