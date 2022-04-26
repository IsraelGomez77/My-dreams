unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm8 = class(TForm)
    Grid1: TStringGrid;
    Grid2: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label4: TLabel;
    Edit3: TEdit;
    Grid3: TStringGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var
i,j,k:Integer;
determ,x,y,dety,detx,detz,z:Real;
begin
 for I := 0 to grid1.RowCount - 1 do
   begin
     for j := 0 to grid1.ColCount - 1 do
       begin
         grid3.Cells[j,i]:=grid1.Cells[j,i];
       end;
   end;
   //Calcular la determinante de la matriz

   for k := 0 to grid1.ColCount - 1 do
     begin
       for i := 0 to grid1.RowCount - 1 do
         begin
           for j := 0 to grid1.ColCount - 1 do
             begin
               grid3.Cells[j,i]:=grid1.Cells[j,i];
             end;
         end;
       for I := 0 to grid2.RowCount - 1 do
         begin
           grid3.Cells[k,i]:=grid2.Cells[0,i];
         end;
     end;

     determ:=((strtoint(grid1.Cells[0,0])*strtoint(grid1.Cells[1,1])*strtoint(grid1.Cells[2,2]))+(strtoint(grid1.Cells[0,1])*strtoint(grid1.Cells[1,2])*strtoint(grid1.Cells[2,0]))+(strtoint(grid1.Cells[0,2])*strtoint(grid1.Cells[1,0])*strtoint(grid1.Cells[2,1])))-((strtoint(grid1.Cells[2,0])*strtoint(grid1.Cells[1,1])*strtoint(grid1.Cells[0,2]))+((strtoint(grid1.Cells[2,1])*strtoint(grid1.Cells[1,2])*strtoint(grid1.Cells[0,0]))+(strtoint(grid1.Cells[2,2])*strtoint(grid1.Cells[1,0])*strtoint(grid1.Cells[0,1]))));

     detx:=((strtoint(grid2.Cells[0,0])*strtoint(grid1.Cells[1,1])*strtoint(grid1.Cells[2,2]))+(strtoint(grid2.Cells[0,1])*strtoint(grid1.Cells[1,2])*strtoint(grid1.Cells[2,0]))+(strtoint(grid2.Cells[0,2])*strtoint(grid1.Cells[1,0])*strtoint(grid1.Cells[2,1]))-(strtoint(grid1.Cells[2,0])*strtoint(grid1.Cells[1,1])*strtoint(grid2.Cells[0,1]))+(strtoint(grid1.Cells[2,1])*strtoint(grid1.Cells[1,1])*strtoint(grid2.Cells[0,0]))+(strtoint(grid1.Cells[2,1])*strtoint(grid1.Cells[1,0])*strtoint(grid2.Cells[0,1])));

     dety:=((strtoint(grid1.Cells[0,0])*strtoint(grid2.Cells[0,1])*strtoint(grid1.Cells[2,1]))+(strtoint(grid1.Cells[0,1])*strtoint(grid2.Cells[0,1])*strtoint(grid1.Cells[2,0]))+(strtoint(grid1.Cells[0,1])*strtoint(grid2.Cells[0,0])*strtoint(grid1.Cells[2,1]))-(strtoint(grid1.Cells[2,0])*strtoint(grid2.Cells[0,1])*strtoint(grid1.Cells[0,1]))+(strtoint(grid1.Cells[2,1])*strtoint(grid2.Cells[0,1])*strtoint(grid1.Cells[0,0]))+(strtoint(grid1.Cells[2,1])*strtoint(grid2.Cells[0,0])*strtoint(grid1.Cells[0,1])));

     detz:=((strtoint(grid1.Cells[0,0])*strtoint(grid1.Cells[1,1])*strtoint(grid2.Cells[0,1]))+(strtoint(grid1.Cells[0,1])*strtoint(grid1.Cells[1,1])*strtoint(grid2.Cells[0,0]))+(strtoint(grid1.Cells[0,1])*strtoint(grid1.Cells[1,0])*strtoint(grid2.Cells[0,1]))-(strtoint(grid2.Cells[0,0])*strtoint(grid1.Cells[1,1])*strtoint(grid1.Cells[0,1]))+(strtoint(grid2.Cells[0,1])*strtoint(grid1.Cells[1,1])*strtoint(grid1.Cells[0,0]))+(strtoint(grid2.Cells[0,1])*strtoint(grid1.Cells[1,0])*strtoint(grid1.Cells[0,1])));

    x:=detx/determ;
    y:=dety/determ;
    z:=detz/determ;

     Edit1.Text:=floattostr(x);
     edit2.Text:=floattostr(y);
     edit3.Text:=floattostr(z);

  end;

end.
