unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, Math;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Radio2: TRadioButton;
    Radio1: TRadioButton;
    Button1: TButton;
    Panel1: TPanel;
    Grid1: TStringGrid;
    Button2: TButton;
    Button3: TButton;
    Panel2: TPanel;
    Grid2: TStringGrid;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    grid5: TStringGrid;
    Button7: TButton;
    Edit4: TEdit;
    Label4: TLabel;
    Panel4: TPanel;
    Grid4: TStringGrid;
    Panel3: TPanel;
    Grid3: TStringGrid;
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
          function EvalDivision(xp:Real;grid1,grid2:TstringGrid):Real;
var
i:Integer;
yp:Real;
Fden,FNum:Real;
begin
   //Calcula valor de la función del numerador evaluada en 1


  yp:=0 ;
  for i := 0 to grid1.RowCount - 1 do
begin
yp:=yp+ strtofloat(grid1.Cells[0,i])*power(xp,strtofloat(grid1.Cells[1,i]) );
end;

FNum:= yp;

     //Calcula valor de la función del denominador evaluada en 1


  yp:=0 ;
  for i := 0 to grid2.RowCount - 1 do
begin
yp:=yp+ strtofloat(grid2.Cells[0,i])*power(xp,strtofloat(grid2.Cells[1,i]) );
end;

Fden:= yp;
result:=FNum/Fden;
end;



function EvalLineal(xp:Real;grid1:TstringGrid):Real;
var
i:Integer;
yp:Real;
FNum:Real;
begin
   //Calcula valor de la función del numerador evaluada en 1

  yp:=0 ;
  for i := 0 to grid1.RowCount - 1 do
begin
yp:=yp+ strtofloat(grid1.Cells[0,i])*power(xp,strtofloat(grid1.Cells[1,i]) );
end;

FNum:= yp;
   result:=FNum;
end;
function derivDiv(xp:Real;grid1,grid2,grid3,grid4:TstringGrid):Real;
     var
i:Integer;
yp:Real;
Fden,FNum,Dden,DNum,DenCuad,derivada:Real;
     begin
   //Calcula valor de la función del numerador evaluada en 1


  yp:=0 ;
  for i := 0 to grid1.RowCount - 1 do
begin
yp:=yp+ strtofloat(grid1.Cells[0,i])*power(xp,strtofloat(grid1.Cells[1,i]) );
end;

FNum:= yp;

     //Calcula valor de la función del denominador evaluada en 1


  yp:=0 ;
  for i := 0 to grid2.RowCount - 1 do
begin
yp:=yp+ strtofloat(grid2.Cells[0,i])*power(xp,strtofloat(grid2.Cells[1,i]) );
end;

Fden:= yp;

 //Calcula valor de la derivada del numerador evaluada 1

  yp:=0 ;
  for i := 0 to grid3.RowCount - 1 do
begin
yp:=yp+ strtofloat(grid3.Cells[0,i])*power(xp,strtofloat(grid3.Cells[1,i]) );
end;
DNum:= yp;

//Calcula valor de la derivada del deniminador evaluada 1

  yp:=0 ;
  for i := 0 to grid4.RowCount - 1 do
begin
yp:=yp+ strtofloat(grid4.Cells[0,i])*power(xp,strtofloat(grid4.Cells[1,i]) );
end;

Dden:= yp;

//Calcula el denominador al cuadrado

   DenCuad:=power(Fden,2);


   //Hasta que se hizo la derivada

   derivada:=abs((Fden*DNum- FNum*Dden)/DenCuad);
   result:=   derivada;
     end;

  function derivLineal(xp:Real;grid1, grid3:TstringGrid):Real;
   var
i:Integer;
yp:Real;
DNum,derivada:Real;
       begin
          //Calcula valor de la derivada del numerador evaluada 1

  yp:=0 ;
  for i := 0 to grid3.RowCount - 1 do
begin
yp:=yp+ strtofloat(grid3.Cells[0,i])*power(xp,strtofloat(grid3.Cells[1,i]) );
end;
DNum:= yp;

       //Hasta que se hizo la derivada

   derivada:=DNum;
   result:=derivada;
       end;
procedure TForm4.Button1Click(Sender: TObject);

begin
if (radio1.Checked=true) then
   begin
     panel1.Visible:=true;
     panel2.Visible:=true;
   end;
  if (radio2.Checked=true) then
   begin
     panel1.Visible:=true;
     panel2.Visible:=false;
end;

end;



procedure TForm4.Button2Click(Sender: TObject);
begin
grid1.RowCount:=grid1.RowCount-1;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
grid1.RowCount:= grid1.RowCount+1;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
grid2.RowCount:= grid2.RowCount-1;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
grid2.RowCount:= grid2.RowCount+1;
end;

procedure TForm4.Button6Click(Sender: TObject);
var
i:Integer;
xp,yp:Real;
Fden,FNum,Dden,DNum,DenCuad,derivada:Real;

begin
  xp:= strtofloat(edit3.Text);
if(radio1.Checked=true)then
begin
//Calcula derivada del numerador
grid3.RowCount:=grid1.RowCount;
for I := 0 to grid1.RowCount - 1 do
     begin
  grid3.Cells[0,i]:=inttostr(strtoint(grid1.Cells[0,i])*strtoint(grid1.Cells[1,i]));
  grid3.Cells[1,i]:=inttostr(strtoint(grid1.Cells[1,i])-1);

     end;
     //Calcula derivada del denominador
 grid4.RowCount:=grid2.RowCount;
for I := 0 to grid2.RowCount - 1 do
     begin
  grid4.Cells[0,i]:=inttostr(strtoint(grid2.Cells[0,i])*strtoint(grid2.Cells[1,i]));
  grid4.Cells[1,i]:=inttostr(strtoint(grid2.Cells[1,i])-1);



     end;
      derivada:= derivDiv(xp,grid1,grid2,grid3,grid4);

   edit2.Text:=floattostr(derivada) ;

   if (derivada<1) then
   begin
     label4.Caption:='La función g(x) propuesta promete convergencia ';
     end
     else
     begin
       label4.Caption:='La función g(x) propuesta NO promete convergencia ';
     end;
   end;    //termina si radio 1 está seleccionado

   if radio2.Checked=true then
   begin
        grid3.RowCount:=grid1.RowCount;
for I := 0 to grid1.RowCount - 1 do
     begin
  grid3.Cells[0,i]:=inttostr(strtoint(grid1.Cells[0,i])*strtoint(grid1.Cells[1,i]));
  grid3.Cells[1,i]:=inttostr(strtoint(grid1.Cells[1,i])-1);
     end;
    derivada:= derivLineal(xp,grid1,grid3);

   edit2.Text:=floattostr(derivada) ;

   if (derivada<1) then
   begin
     label4.Caption:='La función g(x) propuesta promete convergencia ';
     end
     else
     begin
       label4.Caption:='La función g(x) propuesta NO promete convergencia ';
     end;
   end;     //termina radio 2

end;

procedure TForm4.Button7Click(Sender: TObject);

  var
i:Integer;
xp,Xim,CrConv:Real;
begin
  grid5.Cells[0,0]:='i';
  grid5.Cells[1,0]:='Xi';
  grid5.Cells[2,0]:='|Xi+1 - Xi|';
 Xim:=0;
   xp:=strtofloat(edit3.Text);
   CrConv:=strtofloat(edit4.Text);
   i:=  1;
   while abs(xp-xim)>CrConv do

     begin
       grid5.Cells[0,i]:=inttostr(i);
       grid5.Cells[1,i]:=floattostr(xp);
        grid5.Cells[2,i]:=floattostr(abs(xp-xim));
       if radio1.Checked=true then
       begin
         grid5.Cells[3,i]:=floattostr(abs(derivDiv(xp,grid1,grid2,grid3,grid4)));
       grid5.Cells[4,i]:=floattostr(EvalDivision(xp,grid1,grid2));
        xim:=xp;
        xp:=EvalDivision(xp,grid1,grid2);
       end;
         if radio2.Checked=true then
       begin
         grid5.Cells[3,i]:=floattostr(abs(derivLineal(xp,grid1,grid3)));
       grid5.Cells[4,i]:=floattostr(EvalLineal(xp,grid1));
       xim:=xp;
       xp:=EvalLineal(xp,grid1);
             end;

        i:=i+1;
       grid5.RowCount:=grid5.RowCount+1;
     end;
     showmessage('La raiz es: '+ floattostr(Xim) )  ;
   end;

end.
