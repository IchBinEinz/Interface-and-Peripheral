unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, CPort, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Connection1: TMenuItem;
    Setiing1: TMenuItem;
    Setting1: TMenuItem;
    Connect1: TMenuItem;
    ComPort1: TComPort;
    Shape1: TShape;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Label1: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure Setting1Click(Sender: TObject);
    procedure Connect1Click(Sender: TObject);
    procedure Setiing1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:integer;

implementation

{$R *.dfm}

procedure TForm1.Setting1Click(Sender: TObject);
begin
  ComPort1.ShowSetupDialog;
end;

procedure TForm1.Connect1Click(Sender: TObject);
begin
  ComPort1.Open;
  ComPort1.Connected:=True;
  Label1.Caption:='O';
end;

procedure TForm1.Setiing1Click(Sender: TObject);
begin
  ComPort1.Close;
  ComPort1.Connected:=False;
  Label1.Caption:='X';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Shape1.Brush.Color:=clLime;
  ComPort1.WriteStr('1'+#13); //#13 adalah enter
  Timer2.Enabled:=True;
  Timer1.Enabled:=False;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  Shape1.Brush.Color:=clWhite;
  Timer1.Enabled:=True;
  Timer2.Enabled:=False;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Button1.Caption='Off' then
    begin
      Button1.Caption:='On';
      Shape1.Brush.Color:=clWhite;
      Timer1.Enabled:=False ;
      Timer2.Enabled:=False ;
    end
  else
   begin
    Button1.Caption:='Off';
    Timer1.Enabled:=True ;
  end
end;

end.
