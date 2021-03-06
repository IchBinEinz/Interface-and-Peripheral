object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'IRAWAN 09011281621057 LED B&F'
  ClientHeight = 513
  ClientWidth = 485
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
    Left = 256
    Top = 91
    Width = 65
    Height = 65
    Shape = stCircle
  end
  object Shape2: TShape
    Left = 201
    Top = 146
    Width = 65
    Height = 65
    Shape = stCircle
  end
  object Shape3: TShape
    Left = 136
    Top = 91
    Width = 77
    Height = 65
    Shape = stCircle
  end
  object Shape4: TShape
    Left = 201
    Top = 35
    Width = 65
    Height = 65
    Shape = stCircle
  end
  object Label6: TLabel
    Left = 336
    Top = 119
    Width = 42
    Height = 13
    Caption = 'T-Light 1'
  end
  object Label7: TLabel
    Left = 212
    Top = 229
    Width = 42
    Height = 13
    Caption = 'T-Light 2'
  end
  object Label8: TLabel
    Left = 88
    Top = 119
    Width = 42
    Height = 13
    Caption = 'T-Light 3'
  end
  object Label9: TLabel
    Left = 212
    Top = 8
    Width = 42
    Height = 13
    Caption = 'T-Light 4'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 248
    Width = 465
    Height = 161
    Caption = 'Saklar'
    Color = clBtnShadow
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 196
      Top = 109
      Width = 17
      Height = 33
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 243
      Top = 65
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
      Left = 158
      Top = 65
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
    object Label4: TLabel
      Left = 198
      Top = 22
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
    object Label5: TLabel
      Left = 198
      Top = 11
      Width = 48
      Height = 13
      Caption = 'COUNTER'
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
      Left = 288
      Top = 39
      Width = 114
      Height = 74
      Caption = 'OFF'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 48
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
    Left = 24
    Top = 16
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 320
    Top = 3
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 360
  end
  object Timer3: TTimer
    Enabled = False
    OnTimer = Timer3Timer
    Left = 400
  end
  object Timer4: TTimer
    Enabled = False
    OnTimer = Timer4Timer
    Left = 440
  end
  object Timer5: TTimer
    Enabled = False
    OnTimer = Timer5Timer
    Left = 440
    Top = 56
  end
end
