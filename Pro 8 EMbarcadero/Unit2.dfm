object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'IRAWAN 09011281621057 LED B&F'
  ClientHeight = 369
  ClientWidth = 389
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
    Left = 48
    Top = 184
    Width = 297
    Height = 129
    Caption = 'Saklar'
    Color = clBtnShadow
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Button1: TButton
      Left = 3
      Top = 16
      Width = 103
      Height = 105
      Caption = '<--'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 193
      Top = 16
      Width = 101
      Height = 105
      Caption = 'OFF'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 112
      Top = 16
      Width = 75
      Height = 49
      Caption = 'Button3'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 112
      Top = 71
      Width = 75
      Height = 50
      Caption = 'Button4'
      Enabled = False
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 48
    Top = 8
    Width = 297
    Height = 170
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 60
      Height = 18
      Caption = 'Servo 1 :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 14
      Top = 65
      Width = 60
      Height = 18
      Caption = 'Servo 2 :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 14
      Top = 99
      Width = 60
      Height = 18
      Caption = 'Servo 3 :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 14
      Top = 123
      Width = 60
      Height = 18
      Caption = 'Servo 4 :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ScrollBar1: TScrollBar
      Left = 82
      Top = 19
      Width = 121
      Height = 32
      Max = 180
      PageSize = 0
      Position = 90
      TabOrder = 0
      OnChange = ScrollBar1Change
    end
    object ScrollBar2: TScrollBar
      Left = 80
      Top = 57
      Width = 121
      Height = 26
      Max = 180
      PageSize = 0
      Position = 90
      TabOrder = 1
      OnChange = ScrollBar2Change
    end
    object ScrollBar3: TScrollBar
      Left = 80
      Top = 89
      Width = 121
      Height = 28
      Max = 180
      PageSize = 0
      Position = 90
      TabOrder = 2
      OnChange = ScrollBar3Change
    end
    object ScrollBar4: TScrollBar
      Left = 80
      Top = 123
      Width = 121
      Height = 28
      Max = 180
      PageSize = 0
      Position = 90
      TabOrder = 3
      OnChange = ScrollBar4Change
    end
    object Edit1: TEdit
      Left = 207
      Top = 20
      Width = 64
      Height = 31
      TabOrder = 4
      Text = '90'
    end
    object Edit2: TEdit
      Left = 207
      Top = 57
      Width = 58
      Height = 21
      TabOrder = 5
      Text = '90'
    end
    object Edit3: TEdit
      Left = 207
      Top = 84
      Width = 57
      Height = 21
      TabOrder = 6
      Text = '90'
    end
    object Edit4: TEdit
      Left = 207
      Top = 124
      Width = 58
      Height = 21
      TabOrder = 7
      Text = '90'
    end
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 328
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
    Left = 16
    Top = 328
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    Left = 80
    Top = 328
  end
end
