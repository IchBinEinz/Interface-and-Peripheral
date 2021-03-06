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
    r:={ Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Timer1.Enabled:=True;
 for r:=1 to n do
  begin
    k1:=h*f_y(t,y,vr,vl,tht);
    k2:=h*f_y(t+h/2,y+k1/2,vr,vl,tht);
    k3:=h*f_y(t+h,y+k1/2*k2,vr,vl,tht);
    y:=y+(k1+4*k2+k3)/6;
    t:=t+h;
  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Timer1.Enabled:=False;
Shape1.Brush.Color  := clBlack;
Comport1.WriteStr('0'+#13) //Hashtag 13 adalah karakter enter
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
begin
sleep(500);
Comport1.WriteStr('1'+#13); //Hashtag 13 adalah karakter enter
Shape1.Brush.Color  := clRed;
sleep(500);
Shape1.Brush.Color  := clBlack;
Comport1.WriteStr('0'+#13) //Hashtag 13 adalah karakter enter
end;

end.
