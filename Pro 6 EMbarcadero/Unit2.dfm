object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'IRAWAN 09011281621057 LED B&F'
  ClientHeight = 271
  ClientWidth = 495
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
    Left = 22
    Top = 80
    Width = 465
    Height = 161
    Caption = 'Jam'
    Color = clBtnShadow
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 187
      Top = 24
      Width = 72
      Height = 19
      Caption = '00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 124
      Top = 64
      Width = 89
      Height = 73
      Caption = 'Mulai'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 235
      Top = 65
      Width = 94
      Height = 72
      Caption = 'OFF'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 112
    Top = 16
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
    Left = 40
    Top = 16
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 320
    Top = 3
  end
end
