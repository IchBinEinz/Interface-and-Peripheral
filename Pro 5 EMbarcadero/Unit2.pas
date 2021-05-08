unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  CPort;

type
led_array = array[0..8]of integer;
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    Connection1: TMenuItem;
    Setting1: TMenuItem;
    Connect1: TMenuItem;
    Stop1: TMenuItem;
    Exit1: TMenuItem;
    ComPort1: TComPort;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label3: TLabel;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Timer5: TTimer;
    procedure Exit1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Setting1Click(Sender: TObject);
    procedure Connect1Click(Sender: TObject);
    procedure status_led(led:led_array);
    procedure Stop1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);


  private
    { Private declarations }
  public
   { Public declarations }
      left:integer;
   right:integer;
   sat:integer;
   pul:integer;
   mer:integer;
   kun:integer;
   hij:integer;
   sw1:integer;
   sw2:integer;
   sw3:integer;
   sw4:integer;
   send1:integer;
   send2:integer;
   send3:integer;
   send4:integer;
  end;

var
  Form2: TForm2;
  hitung1:integer;
  hitung2:integer;
  hitung3:integer;
  hitung4:integer;
implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if button1.Caption='<--' then
Begin
hitung1:=10;
hitung2:=10;
hitung3:=20;
hitung4:=30;
sw1:=3;
Timer1.Enabled:=True;
Timer2.Enabled:=True;
Timer3.Enabled:=True;
Timer4.Enabled:=True;
Timer5.Enabled:=True;
button1.Enabled:=False;
button2.Enabled:=True;
mer:=30;
end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
if button2.Caption='OFF' then
Begin
Timer1.Enabled:=False;
Timer2.Enabled:=False;
Timer3.Enabled:=False;
Timer4.Enabled:=False;
Timer5.Enabled:=False;
button1.Enabled:=True;
button2.Enabled:=False;
end;
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

procedure TForm2.FormCreate(Sender: TObject);
begin
Button2.Enabled:=False;
hitung1:=0;
end;

procedure TForm2.Setting1Click(Sender: TObject);
begin
comport1.ShowSetupDialog()
end;

function pangkat(b:integer):Integer;
var
i,a:Integer;
begin
  a:=1;
  for i := b downto 1 do
  begin
    a:=a*2;
  end;
  pangkat:=a;
end;

procedure TForm2.status_led(led:led_array);
begin
  if led[0]=1 then
  begin
    Shape1.Brush.Color:=clRed;
  end
  else
  begin
    Shape1.Brush.Color:=clWhite;
  end;

  if led[1]=1 then
  begin
    Shape2.Brush.Color:=clRed;
  end
  else
  begin
    Shape2.Brush.Color:=clWhite;
  end;

  if led[2]=1 then
  begin
    Shape3.Brush.Color:=clRed;
  end
  else
  begin
    Shape3.Brush.Color:=clWhite;
  end;

  if led[3]=1 then
  begin
    Shape4.Brush.Color:=clRed;
  end
  else
  begin
    Shape4.Brush.Color:=clWhite;
  end;
end;

procedure TForm2.Stop1Click(Sender: TObject);
begin
Comport1.Close();
Comport1.Connected := False
end;

procedure TForm2.Timer1Timer(Sender: TObject);
var
  led:led_array;
   a,b:integer;
   nbit:integer;
   send:integer;

begin
 b:=hitung1;
 b:=b-1;
 hitung1:=b;
 if (sw1=0)  then
 begin
 Shape1.Brush.Color:=clRed;
 send1:=1;
 if b<=5 then
 begin
 sw1:=1;
 end
 end
 else if (sw1=1)  then
 begin
 Shape1.Brush.Color:=clYellow;
 send1:=2;
 if b<=1 then
 begin
 sw1:=2;
 end
 end
 else if (sw1=2) or (sw1=3) then
 begin
 Shape1.Brush.Color:=clGreen;
 send1:=4;
 if (b=0) and (sw1=2) then
 begin
 hitung1:=10;
 sw1:=3;
 end
 else if (b=0) and (sw1=3) then
 begin
 hitung1:=mer;
 sw1:=0;
 Shape1.Brush.Color:=clRed;
 end
 end;
 label2.Caption:=InttoStr(b);
 //Comport1.WriteStr(IntToStr(send)+#13);
end;

procedure TForm2.Timer2Timer(Sender: TObject);
var
  led:led_array;
   a,b:integer;
   nbit:integer;
   send:integer;

begin
 b:=hitung2;
 b:=b-1;
 hitung2:=b;
 if (sw2=0)  then
 begin
 Shape2.Brush.Color:=clRed;
 send2:=8;
 if b<=5 then
 begin
 sw2:=1;
 end
 end
 else if (sw2=1)  then
 begin
 Shape2.Brush.Color:=clYellow;
 send2:=16;
 if b=1 then
 begin
 sw2:=2;
 end
 end
 else if (sw2=2) or (sw2=3) then
 begin
 Shape2.Brush.Color:=clGreen;
 send2:=32;
 if (b=0) and (sw2=2) then
 begin
 hitung2:=10;
 sw2:=3;
 end
 else if (b=0) and (sw2=3) then
 begin
 hitung2:=mer;
 sw2:=0;
 Shape2.Brush.Color:=clRed;
 end
 end;
 label1.Caption:=InttoStr(b);
 //Comport1.WriteStr(IntToStr(send)+#13);
end;

procedure TForm2.Timer3Timer(Sender: TObject);
var
  led:led_array;
   a,b:integer;
   nbit:integer;
   send:integer;

begin
 b:=hitung3;
 b:=b-1;
 hitung3:=b;
 if (sw3=0)  then
 begin
 Shape3.Brush.Color:=clRed;
 send3:=1;
 if b<=5 then
 begin
 sw3:=1;
 end
 end
 else if (sw3=1)  then
 begin
 Shape3.Brush.Color:=clYellow;
 send3:=2;
 if b=1 then
 begin
 sw3:=2;
 end
 end
 else if (sw3=2) or (sw3=3) then
 begin
 Shape3.Brush.Color:=clGreen;
 send3:=4;
 if (b=0) and (sw3=2) then
 begin
 hitung3:=10;
 sw3:=3;
 end
 else if (b=0) and (sw3=3) then
 begin
 hitung3:=mer;
 sw3:=0;
 Shape3.Brush.Color:=clRed;
 end
 end;
 label3.Caption:=InttoStr(b);
 //Comport1.WriteStr(IntToStr(send)+#13);
end;

procedure TForm2.Timer4Timer(Sender: TObject);
var
  led:led_array;
   a,b:integer;
   nbit:integer;
   send:integer;

begin
 b:=hitung4;
 b:=b-1;
 hitung4:=b;
 if (sw4=0)  then
 begin
 Shape4.Brush.Color:=clRed;
 send4:=8;
 if b<=5 then
 begin
 sw4:=1;
 end
 end
 else if (sw4=1)  then
 begin
 Shape4.Brush.Color:=clYellow;
 send4:=16;
 if b=1 then
 begin
 sw4:=2;
 end
 end
 else if (sw4=2) or (sw4=3) then
 begin
 Shape4.Brush.Color:=clGreen;
 send4:=32;
 if (b=0) and (sw4=2) then
 begin
 hitung4:=10;
 sw4:=3;
 end
 else if (b=0) and (sw4=3) then
 begin
 hitung4:=mer;
 sw4:=0;
 Shape4.Brush.Color:=clRed;
 end
 end;
 label4.Caption:=InttoStr(b);
 //Comport1.WriteStr(IntToStr(send)+#13);
end;

procedure TForm2.Timer5Timer(Sender: TObject);
begin
 Comport1.WriteStr(IntToStr(send1+send2)+#13);
 //Comport1.WriteStr(IntToStr(send2)+#13);
 Comport1.WriteStr(IntToStr(send3+send4)+#13);
 //Comport1.WriteStr(IntToStr(send4)+#13);
end;

end.
