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
    Button3: TButton;
    procedure Exit1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Setting1Click(Sender: TObject);
    procedure Connect1Click(Sender: TObject);
    procedure status_led(led:led_array);
    procedure Stop1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);


  private
    { Private declarations }
  public
   { Public declarations }
      left:integer;
   right:integer;
   sat:integer;
   pul:integer;
  end;

var
  Form2: TForm2;
  hitung1:integer;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if button1.Caption='<--' then
Begin
left:=1;
right:=0;
pul:=0;
sat:=0;
Timer1.Enabled:=True;
button1.Enabled:=False;
button2.Enabled:=True;
button3.Enabled:=True;
end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
if button2.Caption='OFF' then
Begin
Timer1.Enabled:=False;
button1.Enabled:=True;
button2.Enabled:=False;
button3.Enabled:=True;
end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
if button3.Caption='-->' then
Begin
left:=0;
pul:=9;
sat:=9;
Timer1.Enabled:=True;
button1.Enabled:=True;
button3.Enabled:=False;
button2.Enabled:=True;
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

begin
 b:=hitung1;
 if  (left=1) and (b<9) then
 begin
  b:=b+1;
  if b=9 then
  begin
    b:=0;;
    pul:=pul+1;
  end;
   hitung1:=b;
   sat:=b;
  end
 else if  (left=0)  then
 begin
  sat:=sat-1;
  hitung1:=sat;
  if sat=0 then
  begin
    sat:=9;
    pul:=pul-1;
  end;
  hitung1:=b;
  end
  else
  begin
    b:=1;
    hitung1:=b;
  end;

  ComPort1.WriteStr(IntToStr(sat+pul)+#13);
  label2.Caption:=InttoStr(sat);
  label3.Caption:=InttoStr(pul);
  nbit:=7;
  while nbit>=0 do
  begin
    a:=pangkat(nbit);
    if a>b then
    begin
      led[nbit]:=0;
    end
    else
    begin
      led[nbit]:=1;
      b:=b-a;
    end;
    nbit:=nbit-1;
  end;
  status_led(led);
end;

end.
