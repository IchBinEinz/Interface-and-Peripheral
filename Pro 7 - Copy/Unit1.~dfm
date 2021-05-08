object Form1: TForm1
  Left = 192
  Top = 125
  Width = 581
  Height = 480
  Caption = 'IRAWAN 09011281621057 BLINK'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 176
    Top = 24
    Width = 177
    Height = 121
    Brush.Color = clBackground
    Shape = stCircle
  end
  object GroupBox1: TGroupBox
    Left = 48
    Top = 168
    Width = 465
    Height = 146
    Caption = 'Saklar'
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Button1: TButton
      Left = 176
      Top = 40
      Width = 89
      Height = 73
      Caption = 'On'
      TabOrder = 0
      OnClick = Button1Click
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
    Left = 504
    Top = 24
  end
  object MainMenu1: TMainMenu
    Left = 8
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
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 504
    Top = 88
  end
end
