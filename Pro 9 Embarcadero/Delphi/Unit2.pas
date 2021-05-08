unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  CPort, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart;

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
    Button3: TButton;
    GroupBox2: TGroupBox;
    Chart1: TChart;
    Series1: TLineSeries;
    procedure Exit1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Setting1Click(Sender: TObject);
    procedure Connect1Click(Sender: TObject);
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
  data, data_str,datain:string;
  dt, data2:string;
  terima : Boolean;

  m,n:integer;
  i,x,t:integer;
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
  data2:= Edit1.Text;
  n :=2;
  n:=0;

  dt := '';
  while(m<10)do
  begin
    dt := dt + data2(m);
    n:= n+1;
    m:= m+1;
    if (data2[m] = '#')then
    begin
      break;
    end;
  end;
  Edit2.Text := dt;

  t:=t+1;
  x:= StrToInt(dt);
  Series1.AddXY(i,x);
  if(t>=100)then
  begin
    //Series1 -> Clear();
    Chart1.BottomAxis.Minimum:=i;
    Chart1.BottomAxis.Maximum:=i+101;
    t:=0;
  end;
  i:=i+1;

end;

end.
