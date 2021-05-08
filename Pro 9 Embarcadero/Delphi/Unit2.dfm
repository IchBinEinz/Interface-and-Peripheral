object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'IRAWAN 09011281621057 LED B&F'
  ClientHeight = 538
  ClientWidth = 788
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 168
    Top = 8
    Width = 465
    Height = 146
    Caption = 'Saklar'
    Color = clBtnShadow
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Button1: TButton
      Left = 48
      Top = 40
      Width = 89
      Height = 73
      Caption = '<--'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 184
      Top = 88
      Width = 80
      Height = 55
      Caption = 'OFF'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 328
      Top = 40
      Width = 89
      Height = 73
      Caption = '-->'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 160
    Width = 745
    Height = 370
    Caption = 'Grafik'
    Color = clCream
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object Chart1: TChart
      Left = 3
      Top = 12
      Width = 739
      Height = 355
      Title.Text.Strings = (
        'TChart')
      BottomAxis.Automatic = False
      BottomAxis.AutomaticMaximum = False
      BottomAxis.Maximum = 100.000000000000000000
      LeftAxis.Automatic = False
      LeftAxis.AutomaticMaximum = False
      LeftAxis.Maximum = 1024.000000000000000000
      View3D = False
      TabOrder = 0
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series1: TLineSeries
        Brush.BackColor = clDefault
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 56
    object Connection1: TMenuItem
      Caption = 'Connection'
      object Setting1: TMenuItem
        Caption = 'Setting'
        OnClick = Setting1Click
      end
      object Connect1: TMenuItem
        Caption = 'Connect'
        OnClick = Connect1Click
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Stop1: TMenuItem
      Caption = 'Stop'
      OnClick = Stop1Click
    end
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    Left = 8
    Top = 104
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 8
    Top = 8
  end
end
