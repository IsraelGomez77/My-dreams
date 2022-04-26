unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Math;

type
  TForm11 = class(TForm)
    grid1: TStringGrid;
    Button2: TButton;
    Button1: TButton;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    Edit4: TEdit;
    Label4: TLabel;
    grid2: TStringGrid;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
begin
grid1.RowCount:=grid1.RowCount+1;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
grid1.RowCount:=grid1.RowCount-1;
end;

procedure TForm11.Button3Click(Sender: TObject);
var
i,j:Integer;
xli,yli,xls,yls,integral,fx,s1,s2,x,h,a,b,n,area,xp:Real;

begin
grid2.RowCount:=grid1.RowCount;
for i:=0 to grid1.RowCount - 1 do
 begin
   grid2.Cells[1,i]:=inttostr(strtoint(grid1.Cells[1,i])+1);
   grid2.Cells[0,i]:=floattostr(strtoint(grid1.Cells[0,i])/strtofloat(grid2.Cells[1,i]));
 end;



//inferior
  xli:=strtoint(edit1.Text);
  yli:=0 ;
  for j:= 0 to grid1.RowCount - 1 do
begin
yli:=yli+ strtofloat(grid2.Cells[0,j])*power(xli,strtofloat(grid2.Cells[1,j]) );
end;     //Fin inferior

      //superior
  xls:=strtoint(edit2.Text);
  yls:=0 ;
 for j := 0 to grid1.RowCount - 1 do
begin
yls:=yls+ strtofloat(grid2.Cells[0,j])*power(xls,strtofloat(grid2.Cells[1,j]) );
    end;      //Fin superior

    s1:=0; s2:=0;
    a:=strtofloat(Edit1.Text); //Inferior
    b:=strtofloat(Edit2.Text); //Superior
    n:=strtofloat(Edit3.Text); //Intervalos
    x:=a; h:=(b-a)/n;
if n=2 then
begin
  x:=x+h;
end
else
begin
  while i<=(n/2)-1 do
  begin
    x:=x+h;
    s1:=s1+fx;
    x:=x+h;
    s2:=s2+fx;
    i:=i+1;
  end;
  end;
  s1:=s1+fx;
  area:=(h/2)*(yli)+(2*s2)+(yls);  //...

showmessage('Resultado de la integral= ' + floattostr(area));

end;

end.
