object Form1: TForm1
  Left = 547
  Top = 133
  Width = 286
  Height = 299
  Caption = 'Form1'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 104
    Top = 64
    Width = 65
    Height = 57
    Shape = stCircle
  end
  object Label1: TLabel
    Left = 208
    Top = 144
    Width = 7
    Height = 13
    Caption = 'X'
  end
  object GroupBox1: TGroupBox
    Left = 40
    Top = 160
    Width = 201
    Height = 73
    Caption = 'Saklar'
    TabOrder = 0
    object Button1: TButton
      Left = 48
      Top = 16
      Width = 105
      Height = 41
      Caption = 'ON'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object MainMenu1: TMainMenu
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
    end
    object Setiing1: TMenuItem
      Caption = 'Stop'
      OnClick = Setiing1Click
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
    Left = 216
    Top = 8
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 176
    Top = 8
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 144
    Top = 8
  end
end
