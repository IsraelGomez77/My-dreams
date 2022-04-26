object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'M'#233'todo Newton Raphson'
  ClientHeight = 592
  ClientWidth = 856
  Color = clSkyBlue
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
    Left = 131
    Top = 233
    Width = 15
    Height = 20
    Caption = 'x='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 288
    Width = 50
    Height = 13
    Caption = '|g'#39'(1)|='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 328
    Width = 151
    Height = 20
    Caption = 'Criterio de convergencia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 362
    Top = 238
    Width = 286
    Height = 25
    AutoSize = False
    Color = clMedGray
    ParentColor = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 417
    Height = 21
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 72
    Top = 48
    Width = 225
    Height = 137
    Caption = 'g(x)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Radio2: TRadioButton
      Left = 16
      Top = 40
      Width = 105
      Height = 25
      Caption = 'Sin divisi'#243'n'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object Radio1: TRadioButton
      Left = 16
      Top = 71
      Width = 105
      Height = 25
      Caption = 'Con divisi'#243'n'
      TabOrder = 1
    end
    object Button1: TButton
      Left = 48
      Top = 102
      Width = 113
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Button6: TButton
    Left = 8
    Top = 231
    Width = 89
    Height = 33
    Caption = 'Dervar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button6Click
  end
  object Edit3: TEdit
    Left = 152
    Top = 237
    Width = 169
    Height = 21
    TabOrder = 5
    Text = '1'
  end
  object Edit2: TEdit
    Left = 72
    Top = 288
    Width = 177
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object grid5: TStringGrid
    Left = 32
    Top = 363
    Width = 489
    Height = 153
    ColCount = 4
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing]
    TabOrder = 7
    ColWidths = (
      111
      110
      87
      101)
  end
  object Button7: TButton
    Left = 352
    Top = 304
    Width = 169
    Height = 29
    Caption = 'Newton Raphson'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button7Click
  end
  object Edit4: TEdit
    Left = 173
    Top = 330
    Width = 89
    Height = 21
    TabOrder = 9
    Text = '.001'
  end
  object Panel4: TPanel
    Left = 623
    Top = 45
    Width = 217
    Height = 153
    TabOrder = 10
    Visible = False
    object Grid4: TStringGrid
      Left = 0
      Top = 24
      Width = 201
      Height = 145
      ColCount = 2
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 385
    Top = 45
    Width = 232
    Height = 145
    TabOrder = 11
    Visible = False
    object Grid3: TStringGrid
      Left = 0
      Top = 16
      Width = 225
      Height = 137
      ColCount = 2
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 368
    Top = 30
    Width = 249
    Height = 201
    TabOrder = 2
    object Grid1: TStringGrid
      Left = 8
      Top = 18
      Width = 169
      Height = 169
      ColCount = 2
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      TabOrder = 0
    end
    object Button2: TButton
      Left = 191
      Top = 85
      Width = 42
      Height = 33
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 192
      Top = 39
      Width = 41
      Height = 33
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 623
    Top = 30
    Width = 225
    Height = 201
    TabOrder = 3
    Visible = False
    object Grid2: TStringGrid
      Left = 0
      Top = 18
      Width = 161
      Height = 175
      ColCount = 2
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      TabOrder = 0
    end
    object Button4: TButton
      Left = 176
      Top = 89
      Width = 41
      Height = 29
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 176
      Top = 35
      Width = 41
      Height = 41
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button5Click
    end
  end
end
