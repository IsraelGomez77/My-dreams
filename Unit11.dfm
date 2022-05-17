object Form11: TForm11
  Left = 0
  Top = 0
  Caption = 'M'#233'todo Simpson Compuesto'
  ClientHeight = 236
  ClientWidth = 450
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 39
    Top = 91
    Width = 78
    Height = 12
    Caption = 'Limite Inferior'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 39
    Top = 31
    Width = 85
    Height = 12
    Caption = 'Limite Superior'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 39
    Top = 156
    Width = 72
    Height = 12
    Caption = 'N. Intervalos '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 108
    Top = 446
    Width = 126
    Height = 23
    Caption = 'Resutado es ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
  end
  object grid1: TStringGrid
    Left = 160
    Top = 21
    Width = 143
    Height = 180
    ColCount = 2
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object Button1: TButton
    Left = 309
    Top = 21
    Width = 34
    Height = 27
    Caption = '+'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 309
    Top = 66
    Width = 34
    Height = 27
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 15
    Top = 115
    Width = 139
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 15
    Top = 52
    Width = 139
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Edit3: TEdit
    Left = 15
    Top = 177
    Width = 139
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object Button3: TButton
    Left = 317
    Top = 200
    Width = 108
    Height = 28
    Caption = 'Calcular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button3Click
  end
  object Edit4: TEdit
    Left = 240
    Top = 446
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object grid2: TStringGrid
    Left = 290
    Top = 289
    Width = 219
    Height = 128
    ColCount = 2
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 8
    Visible = False
  end
end
