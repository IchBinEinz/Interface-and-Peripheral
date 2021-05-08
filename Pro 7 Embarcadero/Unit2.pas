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
    Timer1: TTimer;
    Shape1: TShape;
    Shape2: TShape;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Exit1Click(Sender: TObject);
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
  data:string;
implementation

{$R *.dfm}


procedure TForm2.Connect1Click(Sender: TObject);
begin
Comport1.Open();
Comport1.Connected := True;
Timer1.Enabled:= True;
end;

procedure TForm2.Exit1Click(Sender: TObject);
begin
       Application.Terminate
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
data:='00';
end;

procedure TForm2.Setting1Click(Sender: TObject);
begin
comport1.ShowSetupDialog()
end;

procedure TForm2.Stop1Click(Sender: TObject);
begin
Timer1.Enabled:= False;
Comport1.Close();
Comport1.Connected := False
end;

procedure TForm2.Timer1Timer(Sender: TObject);
var
  str:string;
  a,b:integer;
begin
   Comport1.ReadStr(str,2);
   Edit1.Text:=str;
   if str='' then
   begin
     str:=data;
   end;
   data:=str;
   Edit2.Text:=str[1];
   Edit3.Text:=str[2];
   a:=strtoint(Edit2.text);
   b:=strtoint(Edit3.text);
   if a=1 then
   begin
     Shape1.Brush.Color:=clred;
     label4.Caption:='Matiin Coy!!!';
   end
   else if a=0 then
   begin
     Shape1.Brush.Color:=clblack;
     label4.Caption:='Idupin Coy!!!';
   end;

   if b=1 then
   begin
     Shape2.Brush.Color:=clred;
     label5.Caption:='Matiin Coy!!!';
   end
   else if b=0 then
   begin
     Shape2.Brush.Color:=clblack;
     label5.Caption:='Idupin Coy!!!';
   end;
  end;

end.
