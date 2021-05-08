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
    GroupBox2: TGroupBox;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    ScrollBar3: TScrollBar;
    ScrollBar4: TScrollBar;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button3: TButton;
    Button4: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Exit1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Setting1Click(Sender: TObject);
    procedure Connect1Click(Sender: TObject);
    procedure Stop1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure ScrollBar3Change(Sender: TObject);
    procedure ScrollBar4Change(Sender: TObject);


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
var
  sudut1,sudut2,sudut3,sudut4:Integer;
  str1,str2,str3,str4:string;
begin
sudut1:=StrToInt(Edit1.Text);
sudut2:=StrToInt(Edit2.Text);
sudut3:=StrToInt(Edit3.Text);
sudut4:=StrToInt(Edit4.Text);

if (sudut1 div 100 = 0) then
begin
  str1:='0';
end;
if (sudut1 div 10 = 0) then
begin
  str1:='00';
end;

if (sudut2 div 100 = 0) then
begin
  str2:='0';
end;
if (sudut2 div 10 = 0) then
begin
  str2:='00';
end;

if (sudut3 div 100 = 0) then
begin
  str3:='0';
end;
if (sudut3 div 10 = 0) then
begin
  str3:='00';
end;

if (sudut4 div 100 = 0) then
begin
  str4:='0';
end;
if (sudut4 div 10 = 0) then
begin
  str4:='00';
end;

ComPort1.WriteStr(str1+IntToStr(sudut1)
                    +str2+IntToStr(sudut2)
                    +str3+IntToStr(sudut3)
                    +str4+IntToStr(sudut4)+'#');
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
//Button2.Enabled:=False;
hitung1:=0;
end;

procedure TForm2.ScrollBar1Change(Sender: TObject);
var
  sudut1:Integer;
begin
sudut1:=Scrollbar1.Position;
Edit1.Text:=IntToStr(sudut1);
Button1Click(sender);
end;

procedure TForm2.ScrollBar2Change(Sender: TObject);
var
  sudut2:Integer;
begin
sudut2:=Scrollbar2.Position;
Edit2.Text:=IntToStr(sudut2);
Button1Click(sender);
end;

procedure TForm2.ScrollBar3Change(Sender: TObject);
var
  sudut3:Integer;
begin
sudut3:=Scrollbar3.Position;
Edit3.Text:=IntToStr(sudut3);
Button1Click(sender);
end;

procedure TForm2.ScrollBar4Change(Sender: TObject);
var
  sudut4:Integer;
begin
sudut4:=Scrollbar4.Position;
Edit4.Text:=IntToStr(sudut4);
Button1Click(sender);
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

end.
