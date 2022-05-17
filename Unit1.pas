unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, math, Menus, Unit2, Unit3, Unit4,Unit5, Unit6,
  Unit7, Unit8, Unit9;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Button1: TButton;
    Grid1: TStringGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Grid2: TStringGrid;
    Button8: TButton;
    Label3: TLabel;
    Edit2: TEdit;
    Button9: TButton;
    Edit3: TEdit;
    Label4: TLabel;
    Button10: TButton;
    MainMenu1: TMainMenu;
    Ecuacioneslineales1: TMenuItem;
    Sumayresta1: TMenuItem;
    MtodoNewtonRaphson1: TMenuItem;
    Mtodosecante1: TMenuItem;
    Ecuacioneslineales2: TMenuItem;
    sumayresta2: TMenuItem;
    Multiplicacin1: TMenuItem;
    D2x21: TMenuItem;
    D3x31: TMenuItem;
    Grid3: TStringGrid;
    Button12: TButton;
    Button13: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Simpson1: TMenuItem;
    Compuesto1: TMenuItem;
    Doble1: TMenuItem;
    DNxN1: TMenuItem;
    Label5: TLabel;
    Label6: TLabel;
    procedure Doble1Click(Sender: TObject);
    procedure Compuesto1Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Dnxn1Click(Sender: TObject);
    procedure D3x31Click(Sender: TObject);
    procedure D2x21Click(Sender: TObject);
    procedure Multiplicacin1Click(Sender: TObject);
    procedure sumayresta2Click(Sender: TObject);
    procedure Mtodosecante1Click(Sender: TObject);
    procedure MtodoNewtonRaphson1Click(Sender: TObject);
    procedure Sumayresta1Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  mitadx,mitady:Integer;
  escala:Integer;
implementation

uses Unit11, Unit10;



{$R *.dfm}



procedure TForm1.Button10Click(Sender: TObject);
begin

begin
  escala:=10;
label2.Caption:='Escala = ' +     inttostr(escala);
button5.Click;
button1.Click;
end;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
image1.Picture:=nil;
end;

procedure TForm1.Button12Click(Sender: TObject);
var
i:Integer;
begin
grid3.RowCount:=grid1.RowCount;
for I := 0 to grid1.RowCount - 1 do
 begin
   grid3.Cells[1,i]:=inttostr(strtoint(grid1.Cells[1,i])+1);
   grid3.Cells[0,i]:=floattostr(strtoint(grid1.Cells[0,i])/strtofloat(grid3.Cells[1,i]));
 end;

end;

procedure TForm1.Button13Click(Sender: TObject);
var
xli,yli,xls,yls,integral:Real;
i:Integer;
begin
//Calcula el l�mite inferior
  xli:=strtoint(edit4.Text);
  yli:=0 ;
  for i := 0 to grid2.RowCount - 1 do
  begin
yli:=yli+ strtofloat(grid3.Cells[0,i])*power(xli,strtofloat(grid3.Cells[1,i]) );
end;
//Calcula el l�mite superior
  xls:=strtoint(edit5.Text);
  yls:=0 ;
  for i := 0 to grid2.RowCount - 1 do
begin
yls:=yls+ strtofloat(grid3.Cells[0,i])*power(xls,strtofloat(grid3.Cells[1,i]) );
end;
integral:=yls-yli;
showmessage('El valor de la integral es: ' + floattostr(integral));
end;

procedure TForm1.Button1Click(Sender: TObject);
var
i,j:Integer;
xp,yp:Real;
xim,yim:Real;
salto:Integer;
begin
//Hace el plano cartesiano
//dibuja el eje x
for I := 0 to image1.Width do
begin
  image1.Canvas.Pixels [i,mitady]:= rgb(0,0,0);
end;

salto:=mitady+escala;
for I := 0 to trunc(image1.Height/2)  do
begin
   for j := 0 to image1.Width do
     begin
       image1.Canvas.Pixels [j,salto]:= rgb(172,136,151);
          end;
          salto:=salto+escala;

end;

salto:=mitady-escala;
for I := 0 to trunc(image1.Height/2)  do
begin
   for j := 0 to image1.Width do
     begin
       image1.Canvas.Pixels [j,salto]:= rgb(172,136,151);
          end;
          salto:=salto-escala;

end;




//Dibuja eje y
  for I := 0 to image1.Height do

begin
  image1.Canvas.Pixels [mitadx, i]:= rgb(0,0,0);
end;

salto:=mitadx+escala;
for I := 0 to trunc(image1.Width/2)  do
begin
   for j := 0 to image1.Height do
     begin
       image1.Canvas.Pixels [salto,j]:= rgb(172,136,151);
          end;
          salto:=salto+escala;

end;
salto:=mitadx-escala;
for I := 0 to trunc(image1.Width/2)  do
begin
   for j := 0 to image1.Height do
     begin
       image1.Canvas.Pixels [salto,j]:= rgb(172,136,151);
          end;
          salto:=salto-escala;

end;

//Grafica la funci�n con una tabulaci�n
  xp:=-10;

  for I := 0 to 20000  do
 begin
yp:=0 ;
 for j := 0 to grid1.RowCount - 1 do
begin
yp:=yp+ strtofloat(grid1.Cells[0,j])*power(xp,strtofloat(grid1.Cells[1,j]) );
  end;

//showmessage('Xp = '+ floattostr(xp)+ ' , Yp= ' + floattostr(yp));
 xp:= xp+0.001;

        xim:=mitadx + xp * escala;
        yim:=mitady - yp * escala;

        image1.Canvas.Pixels[trunc(xim),trunc(yim)]:=rgb(255,0,0)  ;
     end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
grid1.RowCount:= grid1.RowCount-1;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
grid1.RowCount:=grid1.RowCount+1;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
x,y:Real;
i:Integer;
begin
 x:= strtofloat(inputbox('Valor de x a evaluar', 'X a evaluar', '0')) ;
 y:=0;
 for I := 0 to grid1.RowCount - 1 do
          begin
            y:=y+ strtofloat(grid1.Cells[0,i])*power(x,strtofloat(grid1.Cells[1,i]) );
          end;

       showmessage(floattostr(y));
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
image1.Picture:=nil;
end;
             //disminuir escala
procedure TForm1.Button6Click(Sender: TObject);

 var
  xr:Integer;
begin
xr:= strtoint(edit3.Text);

     escala:=escala-xr;
label2.Caption:='Escala = ' +     inttostr(escala);
button5.Click;
button1.Click;
end;
  //aumentar escala
procedure TForm1.Button7Click(Sender: TObject);
var
  xr:Integer;
begin
xr:= strtoint(edit3.Text);

     escala:=escala+xr;
label2.Caption:='Escala = ' +     inttostr(escala);
button5.Click;
button1.Click;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
i:Integer;
begin
grid2.RowCount:=grid1.RowCount;
for I := 0 to grid1.RowCount - 1 do
     begin
  grid2.Cells[0,i]:=inttostr(strtoint(grid1.Cells[0,i])*strtoint(grid1.Cells[1,i]));
  grid2.Cells[1,i]:=inttostr(strtoint(grid1.Cells[1,i])-1);

     end;
end;

procedure TForm1.Button9Click(Sender: TObject);
var
xp,yp:Real;
i:Integer;
begin
  xp:=strtoint(edit2.Text);
  yp:=0 ;
  for i := 0 to grid2.RowCount - 1 do
begin
yp:=yp+ strtofloat(grid2.Cells[0,i])*power(xp,strtofloat(grid2.Cells[1,i]) );
end;
if (yp<0) then
begin
 showmessage('La derivada evaluada en x=  ' + floattostr(xp)+ '  es:  ' + floattostr(yp) + ' Por lo tanto la funci�n es decreciente en ese punto');
end;
if (yp>0) then
begin
 showmessage('La derivada evaluada en x= ' + floattostr(xp)+ ' es: ' + floattostr(yp) + ' Por lo tanto la funci�n es creciente en ese punto');
end;
if (yp=0) then
begin
 showmessage('La derivada evaluada en x= ' + floattostr(xp)+ ' es: ' + floattostr(yp) + ' Por lo tanto la funci�n es constante en ese punto');
end;

end;

procedure TForm1.D2x21Click(Sender: TObject);
begin
form7.ShowModal;
end;

procedure TForm1.D3x31Click(Sender: TObject);
begin
form8.ShowModal;
end;

procedure TForm1.Dnxn1Click(Sender: TObject);
begin
form9.ShowModal;
end;

procedure TForm1.Doble1Click(Sender: TObject);
begin
form12.ShowModal;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
mitadx:=trunc(image1.Width/2);
mitady:=trunc(image1.Height/2);
escala:=10;
label2.Caption:='Escala = ' +   inttostr(escala);
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,

  Y: Integer);
  var
  xp,yp: Real;

begin
//image1.Canvas.Pixels[x,y]:= rgb(145,31,169);
//Convierte coordenadas del image a coordenadas del plano
xp:=(x-mitadx)/escala;
yp:=(mitady-y)/escala;
edit1.Text:=  'x =' + floattostr(xp)   + ' , y = '   + floattostr(yp);

end;

procedure TForm1.MtodoNewtonRaphson1Click(Sender: TObject);
var
         i:Integer;
  begin
 form3.Edit1.Text  := 'Funci�n: ' ;
 for I := 0 to grid1.RowCount - 1 do
 begin
    form3.Edit1.Text  :=form3.Edit1.Text   + ' ' + grid1.Cells[0,i] + 'x ^' + grid1.Cells[1,i]+ ' + ';
 end;

 form3.ShowModal;
 end;


procedure TForm1.Mtodosecante1Click(Sender: TObject);
var
         i:Integer;
begin
 form4.Edit1.Text  := 'Funci�n: ' ;
 for I := 0 to grid1.RowCount - 1 do
 begin
    form4.Edit1.Text  :=form4.Edit1.Text   + ' ' + grid1.Cells[0,i] + 'x ^' + grid1.Cells[1,i]+ ' + ';
 end;

 form4.ShowModal;
 end;


procedure TForm1.Multiplicacin1Click(Sender: TObject);
begin
form6.ShowModal;
end;

procedure TForm1.Compuesto1Click(Sender: TObject);
begin
form11.ShowModal;
end;

procedure TForm1.Sumayresta1Click(Sender: TObject);
var
         i:Integer;
begin
 form2.Edit1.Text  := 'Funci�n: ' ;
 for I := 0 to grid1.RowCount - 1 do
 begin
    form2.Edit1.Text  :=form2.Edit1.Text   + ' ' + grid1.Cells[0,i] + 'x ^' + grid1.Cells[1,i]+ ' + ';
 end;

 form2.ShowModal;
 end;

procedure TForm1.sumayresta2Click(Sender: TObject);
begin
form5.showModal;
end;

end.