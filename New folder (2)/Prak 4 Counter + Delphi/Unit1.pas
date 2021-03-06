unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, CPort, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Setting1: TMenuItem;
    Connect1: TMenuItem;
    Stop1: TMenuItem;
    ComPort1: TComPort;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Timer2: TTimer;
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    procedure Setting1Click(Sender: TObject);
    procedure Connect1Click(Sender: TObject);
    procedure Stop1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  bil,bil2 : integer;

implementation

{$R *.dfm}

procedure TForm1.Setting1Click(Sender: TObject);
begin
  ComPort1.ShowSetupDialog;
end;

procedure TForm1.Connect1Click(Sender: TObject);
begin
  ComPort1.Open;
end;

procedure TForm1.Stop1Click(Sender: TObject);
begin
  ComPort1.Close;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  s,p:integer;
begin
  s:=bil mod 10;
  p:=bil div 10;
  Label1.Caption:=IntToStr(s);
  Label2.Caption:=IntToStr(p);
  Comport1.WriteStr(IntToStr(bil)+#13);
  bil:=bil+1;
  if bil>99 then
  begin
    bil:=0;
  end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  s,p:integer;
begin
  s:=bil2 mod 10;
  p:=bil2 div 10;
  Label1.Caption:=IntToStr(s);
  Label2.Caption:=IntToStr(p);
  Comport1.WriteStr(IntToStr(bil2)+#13);
  bil2:=bil2-1;
  if bil2<0 then
  begin
    bil2:=99;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  bil:=0;
  bil2:=99;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if button1.Caption= 'Counter up' then
  begin
    button1.Caption:='Stop';
    Timer1.Enabled:=true;
  end
  else if button1.Caption='Stop' then
  begin
    button1.Caption:= 'Counter up';
    Timer1.Enabled:=false;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if button2.Caption= 'Counter down' then
  begin
    button2.Caption:='Stop';
    Timer2.Enabled:=true;
  end
  else if button2.Caption='Stop' then
  begin
    button2.Caption:= 'Counter down';
    Timer2.Enabled:=false;
  end;
end;

end.
