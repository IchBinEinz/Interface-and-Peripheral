unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  CPort;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    Connection1: TMenuItem;
    Setting1: TMenuItem;
    Connect1: TMenuItem;
    Stop1: TMenuItem;
    Exit1: TMenuItem;
    ComPort1: TComPort;
    Shape1: TShape;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    procedure Exit1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Setting1Click(Sender: TObject);
    procedure Connect1Click(Sender: TObject);
    procedure Stop1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
   { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if button1.Caption='On' then
Begin
Timer1.Enabled:=True;
button1.Enabled:=False;
button2.Enabled:=True;
end
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
if button1.Caption='On' then
Begin
Timer1.Enabled:=False;
button1.Enabled:=True;
button2.Enabled:=False;
end
end;

procedure TForm2.Connect1Click(Sender: TObject);
begin
Comport1.Open();
Comport1.Connected := True
end;

procedure TForm2.Exit1Click(Sender: TObject);
begin
       Application.Terminate
end;

procedure TForm2.Setting1Click(Sender: TObject);
begin
comport1.ShowSetupDialog()
end;

procedure TForm2.Stop1Click(Sender: TObject);
begin
Comport1.Close();
Comport1.Connected := False
end;

procedure TForm2.Timer1Timer(Sender: TObject);
var
  led=led_array;
   a,b:integer;
   nbit:integer
begin
 b:=hitung1;
 if b<8 then
 begin
  B:=b sh1 1;
  if b=0 then
  begin
    b:=1;
  end;
  hitung1:=b;
  end
  else
  begin
    b:=1;
    hitung1:=b;
//sleep(500);
//Comport1.WriteStr('1'+#13); //Hashtag 13 adalah karakter enter
//Shape4.Brush.Color  := clWhite;
//Shape1.Brush.Color  := clRed;
//sleep(500);
//Shape1.Brush.Color  := clWhite;
//Shape2.Brush.Color  := clRed;
//sleep(500);
//Shape2.Brush.Color  := clWhite;
//Shape3.Brush.Color  := clRed;
//sleep(500);
//Shape3.Brush.Color  := clWhite;
//Shape4.Brush.Color  := clRed;
//Comport1.WriteStr('0'+#13) //Hashtag 13 adalah karakter enter
end;

end.
