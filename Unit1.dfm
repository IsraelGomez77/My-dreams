object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'GRAFICADOR'
  ClientHeight = 729
  ClientWidth = 1024
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 384
    Top = -88
    Width = 705
    Height = 585
    OnMouseMove = Image1MouseMove
  end
  object Label1: TLabel
    Left = 69
    Top = 11
    Width = 168
    Height = 23
    Caption = 'Funcion principal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 211
    Top = 280
    Width = 52
    Height = 15
    Caption = 'Escala='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 534
    Width = 70
    Height = 16
    Caption = 'Evaluar en x= '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 248
    Width = 237
    Height = 12
    Caption = 'Introduce para aumentar/disminuir escala:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 368
    Top = 608
    Width = 40
    Height = 13
    Caption = 'Lim. Inf.'
  end
  object Label6: TLabel
    Left = 528
    Top = 608
    Width = 44
    Height = 13
    Caption = 'Lim. Sup.'
  end
  object Edit1: TEdit
    Left = 735
    Top = 616
    Width = 250
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 'x = 0 , y = 0'
  end
  object Button1: TButton
    Left = 107
    Top = 183
    Width = 105
    Height = 34
    Caption = 'Graficar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Grid1: TStringGrid
    Left = 16
    Top = 40
    Width = 278
    Height = 137
    ColCount = 2
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 2
  end
  object Button2: TButton
    Left = 312
    Top = 96
    Width = 41
    Height = 33
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 312
    Top = 56
    Width = 41
    Height = 34
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 21
    Top = 711
    Width = 65
    Height = 32
    Caption = 'Evaluar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 592
    Top = 616
    Width = 126
    Height = 32
    Caption = 'Limpiar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 48
    Top = 267
    Width = 57
    Height = 41
    Caption = 'Escala -'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 124
    Top = 267
    Width = 62
    Height = 41
    Caption = 'Escala+'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button7Click
  end
  object Grid2: TStringGrid
    Left = 16
    Top = 383
    Width = 313
    Height = 145
    ColCount = 2
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 9
  end
  object Button8: TButton
    Left = 43
    Top = 319
    Width = 98
    Height = 24
    Caption = 'Derivar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Button8Click
  end
  object Edit2: TEdit
    Left = 92
    Top = 534
    Width = 113
    Height = 21
    TabOrder = 11
    Text = '0'
  end
  object Button9: TButton
    Left = 211
    Top = 534
    Width = 89
    Height = 21
    Caption = 'Evaluar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = Button9Click
  end
  object Edit3: TEdit
    Left = 265
    Top = 239
    Width = 113
    Height = 21
    TabOrder = 13
    Text = '0'
  end
  object Button10: TButton
    Left = 147
    Top = 314
    Width = 58
    Height = 33
    Caption = 'Reset'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = Button10Click
  end
  object Grid3: TStringGrid
    Left = 16
    Top = 573
    Width = 318
    Height = 132
    ColCount = 2
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 15
  end
  object Button12: TButton
    Left = 481
    Top = 664
    Width = 75
    Height = 25
    Caption = 'Integrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 384
    Top = 664
    Width = 75
    Height = 25
    Caption = 'Evaluar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = Button13Click
  end
  object Edit4: TEdit
    Left = 340
    Top = 621
    Width = 109
    Height = 21
    TabOrder = 18
  end
  object Edit5: TEdit
    Left = 472
    Top = 621
    Width = 105
    Height = 21
    TabOrder = 19
  end
  object MainMenu1: TMainMenu
    Left = 296
    Top = 336
    object Ecuacioneslineales1: TMenuItem
      Caption = 'M'#233'todos de ra'#237'ces'
      object Sumayresta1: TMenuItem
        Caption = 'M'#233'todo punto fijo'
        OnClick = Sumayresta1Click
      end
      object MtodoNewtonRaphson1: TMenuItem
        Caption = 'M'#233'todo Newton Raphson'
        OnClick = MtodoNewtonRaphson1Click
      end
      object Mtodosecante1: TMenuItem
        Caption = 'M'#233'todo secante'
        OnClick = Mtodosecante1Click
      end
    end
    object Ecuacioneslineales2: TMenuItem
      Caption = 'Ecuaciones lineales'
      object sumayresta2: TMenuItem
        Caption = 'Suma y resta'
        OnClick = sumayresta2Click
      end
      object Multiplicacin1: TMenuItem
        Caption = 'Multiplicaci'#243'n'
        OnClick = Multiplicacin1Click
      end
      object D2x21: TMenuItem
        Caption = ' 2x2'
        OnClick = D2x21Click
      end
      object D3x31: TMenuItem
        Caption = ' 3x3'
        OnClick = D3x31Click
      end
      object DNxN1: TMenuItem
        Caption = 'n x n'
        OnClick = DNxN1Click
      end
    end
    object Simpson1: TMenuItem
      Caption = 'Metodo de integracion'
      object Compuesto1: TMenuItem
        Caption = 'Simpson Compuesto'
        OnClick = Compuesto1Click
      end
      object Doble1: TMenuItem
        Caption = 'Simpson integracion  Doble'
        OnClick = Doble1Click
      end
    end
  end
end
