object Form7: TForm7
  Left = 0
  Top = 0
  Caption = '2x2'
  ClientHeight = 251
  ClientWidth = 716
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
    Left = 387
    Top = 80
    Width = 14
    Height = 30
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial Black'
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
    Left = 471
    Top = 109
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
  object Grid1: TStringGrid
    Left = 24
    Top = 24
    Width = 201
    Height = 145
    ColCount = 2
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    RowHeights = (
      24
      24)
  end
  object Grid2: TStringGrid
    Left = 288
    Top = 24
    Width = 81
    Height = 145
    ColCount = 1
    FixedCols = 0
    RowCount = 2
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
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Button1: TButton
    Left = 288
    Top = 192
    Width = 113
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
end