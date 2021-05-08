object Form1: TForm1
  Left = 192
  Top = 118
  Width = 275
  Height = 436
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 241
    Height = 369
    Caption = '7 Segmen'
    TabOrder = 0
    object Label2: TLabel
      Left = 64
      Top = 48
      Width = 48
      Height = 109
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 120
      Top = 48
      Width = 48
      Height = 109
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -96
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 40
      Top = 176
      Width = 153
      Height = 57
      Caption = 'Counter up'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 40
      Top = 248
      Width = 153
      Height = 57
      Caption = 'Counter down'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 32
    object Setting1: TMenuItem
      Caption = 'Setting'
      OnClick = Setting1Click
    end
    object Connect1: TMenuItem
      Caption = 'Connect'
      OnClick = Connect1Click
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
    Top = 72
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer2Timer
    Left = 216
    Top = 64
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 216
    Top = 32
  end
end
