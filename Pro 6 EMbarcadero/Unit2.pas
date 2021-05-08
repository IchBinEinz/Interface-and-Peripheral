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
    Timer1: TTimer;
    Label1: TLabel;
    Button2: TButton;
    procedure Exit1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Setting1Click(Sender: TObject);
    procedure Connect1Click(Sender: TObject);
    procedure Stop1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);

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
   sw1:string;
   sw2:string;
   sw3:string;
   sw4:string;
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
if button1.Caption='Mulai' then
Begin
Timer1.Enabled:=True;
button1.Enabled:=False;
button2.Enabled:=True;
end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
if button2.Caption='OFF' then
Begin
Timer1.Enabled:=False;
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

procedure TForm2.Stop1Click(Sender: TObject);
begin
Comport1.Close();
Comport1.Connected := False
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  Label1.caption:=TimeToStr(Now);
  sw1 := Label1.Caption;
  sw2 := copy(sw1, 1, 2);
  sw3 := copy(sw1, 4, 2);
  sw4 := copy(sw1, 7, 2);
  Comport1.WriteStr(sw2+#13);
  Comport1.WriteStr(sw3+#13);
  Comport1.WriteStr(sw4+#13);
  end;

end.
