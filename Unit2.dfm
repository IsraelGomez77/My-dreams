object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'M'#233'todo de punto fijo'
  ClientHeight = 593
  ClientWidth = 1080
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
    Left = 402
    Top = 38
    Width = 79
    Height = 23
    Caption = 'Numerador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 648
    Top = 38
    Width = 95
    Height = 23
    Caption = 'Denominador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 240
    Width = 69
    Height = 18
    Caption = '|g'#39'(1)|='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
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
  object Label5: TLabel
    Left = 135
    Top = 187
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
  object Label6: TLabel
    Left = 8
    Top = 269
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
  object Panel4: TPanel
    Left = 590
    Top = 80
    Width = 217
    Height = 153
    TabOrder = 6
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
    Left = 352
    Top = 80
    Width = 232
    Height = 145
    TabOrder = 5
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
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 745
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 'Edit1'
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 56
    Width = 305
    Height = 121
    Caption = 'g(x)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Radio1: TRadioButton
      Left = 16
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Divisi'#243'n'
      TabOrder = 0
    end
    object Radio2: TRadioButton
      Left = 16
      Top = 63
      Width = 121
      Height = 25
      Caption = 'sin divisi'#243'n'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object Button5: TButton
      Left = 88
      Top = 94
      Width = 129
      Height = 24
      Caption = 'Aceptar'
      TabOrder = 2
      OnClick = Button5Click
    end
  end
  object Panel1: TPanel
    Left = 342
    Top = 64
    Width = 242
    Height = 169
    TabOrder = 2
    object Grid1: TStringGrid
      Left = 7
      Top = 17
      Width = 146
      Height = 145
      ColCount = 2
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      TabOrder = 0
    end
    object Button1: TButton
      Left = 159
      Top = 37
      Width = 57
      Height = 25
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 159
      Top = 81
      Width = 57
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 590
    Top = 64
    Width = 217
    Height = 168
    TabOrder = 3
    Visible = False
    object Grid2: TStringGrid
      Left = 0
      Top = 17
      Width = 137
      Height = 145
      ColCount = 2
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      TabOrder = 0
    end
    object Button4: TButton
      Left = 152
      Top = 85
      Width = 57
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button3: TButton
      Left = 152
      Top = 41
      Width = 57
      Height = 25
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Button6: TButton
    Left = 8
    Top = 183
    Width = 97
    Height = 27
    Caption = 'Derivar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button6Click
  end
  object Edit2: TEdit
    Left = 83
    Top = 239
    Width = 273
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Text = '0'
  end
  object Edit3: TEdit
    Left = 156
    Top = 189
    Width = 137
    Height = 21
    TabOrder = 8
    Text = '1'
  end
  object grid5: TStringGrid
    Left = 24
    Top = 304
    Width = 570
    Height = 153
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing]
    TabOrder = 9
    ColWidths = (
      111
      110
      87
      101
      119)
  end
  object Button7: TButton
    Left = 402
    Top = 269
    Width = 169
    Height = 29
    Caption = 'Punto fijo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Button7Click
  end
  object Edit4: TEdit
    Left = 165
    Top = 269
    Width = 89
    Height = 21
    TabOrder = 11
    Text = '.001'
  end
end