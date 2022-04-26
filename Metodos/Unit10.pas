unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Math;

type
  TForm12 = class(TForm)
    Label1: TLabel;
    grid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    grid3: TStringGrid;
    grid4: TStringGrid;
    Button5: TButton;
    Button4: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

function fxy(x,y:Real):Real;
var
i:Integer;
fx,fy:Real;
begin
  fx:=0;
  for I := 0 to form12.Grid1.RowCount - 1 do
    begin
      fx:=fx+strtofloat(form12.Grid1.Cells[0,i])*power(x,strtofloat(form12.Grid1.Cells[1,i]));
    end;
   fy:=0;
  for I := 0 to form12.Grid1.RowCount - 1 do
    begin
      fy:=fy+strtofloat(form12.Grid1.Cells[0,i])*power(y,strtofloat(form12.Grid1.Cells[2,i]));
    end;
    result:= fx*fy;
end;
function cx(x:Real):Real;
var
i:Integer;
c:Real;
begin
  c:=0;
  for I := 0 to form12.Grid3.RowCount - 1 do
    begin
      c:=c+strtofloat(form12.Grid3.Cells[0,i])*power(x,strtofloat(form12.Grid3.Cells[1,i]));
    end;
    result:=c;
end;
function dx(x:Real):Real;
var
i:Integer;
d:Real;
begin
  d:=0;
  for I := 0 to form12.Grid4.RowCount - 1 do
    begin
      d:=d+strtofloat(form12.Grid4.Cells[0,i])*power(x,strtofloat(form12.Grid4.Cells[1,i]));
    end;
    result:=d;
end;

procedure TForm12.Button3Click(Sender: TObject);
var
N,M,i,j:Integer;
x,y,a,b,h1,h2,h2a,h2b,ha,hb,y1,y2,s,s1,s2,s3,s4,s5,s6,s7,s8,s9,Integral:Real;
begin
m:=strtoint(edit2.Text);
n:=strtoint(edit1.Text);
a:=strtofloat(edit3.Text);
b:=strtofloat(edit4.Text);
h1:=(b-a)/N;
s:=(fxy(a,cx(a))+fxy(a,dx(a)))*(dx(a)-cx(a))/M+(fxy(b,cx(b))+fxy(b,dx(b)))*(dx(b)-cx(b))/M;
s1:=0;
s2:=0;
y1:=cx(a);
y2:=cx(b);
j:=1;
while j<=m-1 do
begin
  h2a:=(dx(a)-cx(a))/M;
  y1:=y1+h2a;
  s1:=s1+h2a*fxy(a,y1);
  h2b:=(dx(b)-cx(b))/M;
  y2:=y2+h2b;
  s1:=s1+h2b*fxy(b,y2);
  if j=M-1 then j:=j+2
  else
  begin
   y1:=y1+h2a;
   s2:=s2+h2a*fxy(a,y1);
   y2:=y2+h2b;
   s2:=s2+h2b*fxy(b,y2);
   j:=j+2;
  end;
end;
s3:=0;
s6:=0;
s7:=0;
x:=a;
i:=1;
while i<=n-1 do
begin
  x:=x+h1;
  h2:=(dx(x)-cx(x))/M;
  s3:=s3+h2*fxy(x,cx(x));
  s6:=s6+h2*fxy(x,dx(x));
  if i=n-1 then i:=i+2
  else
  begin
    x:=x+h1;
    h2:=(dx(x)-cx(x))/M;
    s7:=s7 + h2*(fxy(x,cx(x))+fxy(x,dx(x)));
    i:=i+2;
  end;
end;
s4:=0;
s5:=0;
s8:=0;
s9:=0;
x:=a-h1;
i:=1;
while i<=n-1 do
begin
  x:=x+h1;
  y1:=cx(x);
  y2:=cx(x+h1);
  ha:=(dx(x)-cx(x))/M;
  hb:=(dx(x+h1)-cx(x+h1))/M;
  j:=1;
  while j<=m-1 do
  begin
    y1:=y1+ha;
    s4:=s4 * ha*fxy(x,y1);
    if i = n-1 then
    begin
      if j=m-1 then j:=j+2
      else
      begin
        y1:=y1 + ha;
        s5:=s5 * ha*fxy(x,y1);
        if i=n-1 then j:=j+2
        else
        begin
          y2:=y2 + hb;
          s9:=s9 + hb*fxy(x+h1,y2);
          j:=j+2;
        end;
      end;
    end
    else
    begin
      y2:=y2 + hb;
      s8:=s8 + hb*fxy(x+h1,y2);
      if j=m-1 then j:=j+2
      else
      begin
        y1:=y1 + ha;
        s5:=s5 * ha*fxy(x,y1);
        if i=n-1 then j:=j+2
        else
        begin
          y2:=y2 + hb;
          s9:=s9 + hb*fxy(x+h1,y2);
          j:=j+2;
        end;
      end;
    end;
  end;
  i:=i+2;
end;
Integral:=(h1/9)*(s+4*(s1+s3+s6+s9) + 2*(s2+s7) + 16*s4 + 8*(s5+s8));
Label3.Caption:='La aproximación por el método de Simpson en Integrales Dobles es: ' + floattostr(Integral);
end;

procedure TForm12.Button1Click(Sender: TObject);
begin
grid1.RowCount:=grid1.RowCount+1;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
grid1.RowCount:=grid1.RowCount-1;
end;

procedure TForm12.Button4Click(Sender: TObject);
begin
grid3.RowCount:=grid3.RowCount+1;
end;

procedure TForm12.Button7Click(Sender: TObject);
begin
grid3.RowCount:=grid3.RowCount-1;
end;

procedure TForm12.Button8Click(Sender: TObject);
begin
grid4.RowCount:=grid4.RowCount+1;
end;

procedure TForm12.Button9Click(Sender: TObject);
begin
grid4.RowCount:=grid4.RowCount-1;
end;

end.
