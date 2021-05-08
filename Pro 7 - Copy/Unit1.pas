unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, CPort, ExtCtrls;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    ComPort1: TComPort;
    GroupBox1: TGroupBox;
    Button1: TButton;
    MainMenu1: TMainMenu;
    Connection1: TMenuItem;
    Setting1: TMenuItem;
    Connect1: TMenuItem;
    Exit1: TMenuItem;
    Stop1: TMenuItem;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Connect1Click(Sender: TObject);
    procedure Setting1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Stop1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
sleep(500);
Comport1.WriteStr('1'+#13); //Hashtag 13 adalah karakter enter
Shape1.Brush.Color  := clRed;
sleep(500);
Comport1.WriteStr('0'+#13); //Hashtag 13 adalah karakter enter
Shape1.Brush.Color  := clBlack;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if Button1.Caption='On' then
begin
Button1.Caption:='Off';
Timer1.Enabled:=True;
end
else if button1.Caption='Off' then
begin
Timer1.Enabled:=False;
Button1.Caption:='On';
Shape1.Brush.Color  := clBlack;
Comport1.WriteStr('0'+#13)
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Timer1.Enabled:=False;
Shape1.Brush.Color  := clBlack;
Comport1.WriteStr('0'+#13) //Hashtag 13 adalah karakter enter
end;

procedure TForm1.Connect1Click(Sender: TObject);
begin
Comport1.Open();
Comport1.Connected := True
end;

procedure TForm1.Setting1Click(Sender: TObject);
begin
comport1.ShowSetupDialog()
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
Application.Terminate
end;

procedure TForm1.Stop1Click(Sender: TObject);
begin
Comport1.Close();
Comport1.Connected := False
end;

end.


