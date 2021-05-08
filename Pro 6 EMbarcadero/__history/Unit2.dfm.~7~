object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'IRAWAN 09011281621057 LED B&F'
  ClientHeight = 369
  ClientWidth = 545
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
  object Shape1: TShape
    Left = 392
    Top = 72
    Width = 65
    Height = 65
    Shape = stCircle
  end
  object Shape2: TShape
    Left = 296
    Top = 72
    Width = 65
    Height = 65
    Shape = stCircle
  end
  object Shape3: TShape
    Left = 200
    Top = 72
    Width = 65
    Height = 65
    Shape = stCircle
  end
  object Shape4: TShape
    Left = 96
    Top = 72
    Width = 65
    Height = 65
    Shape = stCircle
  end
  object GroupBox1: TGroupBox
    Left = 48
    Top = 168
    Width = 465
    Height = 146
    Caption = 'Saklar'
    Color = clBtnShadow
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 184
      Top = 24
      Width = 80
      Height = 19
      Caption = 'COUNTER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 235
      Top = 49
      Width = 15
      Height = 33
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 202
      Top = 49
      Width = 15
      Height = 33
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
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
  object MainMenu1: TMainMenu
    Left = 24
    Top = 8
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
    Left = 248
    Top = 8
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 440
    Top = 8
  end
end
