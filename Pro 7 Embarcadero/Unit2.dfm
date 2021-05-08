object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'IRAWAN 09011281621057 LED B&F'
  ClientHeight = 422
  ClientWidth = 486
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
    Left = 13
    Top = 72
    Width = 465
    Height = 313
    Caption = 'Jam'
    Color = clBtnShadow
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Shape1: TShape
      Left = 72
      Top = 16
      Width = 114
      Height = 105
    end
    object Shape2: TShape
      Left = 304
      Top = 16
      Width = 113
      Height = 105
    end
    object Label1: TLabel
      Left = 133
      Top = 163
      Width = 61
      Height = 13
      Caption = 'Data String :'
    end
    object Label2: TLabel
      Left = 133
      Top = 206
      Width = 44
      Height = 13
      Caption = 'String 1 :'
    end
    object Label3: TLabel
      Left = 133
      Top = 246
      Width = 44
      Height = 13
      Caption = 'String 2 :'
    end
    object Label4: TLabel
      Left = 72
      Top = 127
      Width = 3
      Height = 13
    end
    object Label5: TLabel
      Left = 306
      Top = 127
      Width = 3
      Height = 13
    end
    object Edit1: TEdit
      Left = 216
      Top = 160
      Width = 121
      Height = 37
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 216
      Top = 203
      Width = 121
      Height = 37
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 216
      Top = 246
      Width = 121
      Height = 35
      TabOrder = 2
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
    Interval = 100
    OnTimer = Timer1Timer
    Left = 320
    Top = 3
  end
end
