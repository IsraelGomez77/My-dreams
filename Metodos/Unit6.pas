unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm6 = class(TForm)
    Grid1: TStringGrid;
    Grid2: TStringGrid;
    Grid3: TStringGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button10Click(Sender: TObject);
begin
grid1.RowCount:=grid1.RowCount-1;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
grid2.ColCount:=grid2.ColCount+1;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
grid2.ColCount:=grid2.ColCount-1;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
grid2.RowCount:=grid2.RowCount+1;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
grid2.RowCount:=grid2.RowCount-1;
end;

procedure TForm6.Button6Click(Sender: TObject);
var
n,m,n1,m1:Integer;
i,j,k:Integer;
begin
n:=grid1.RowCount;
m:=grid1.ColCount;
n1:=grid2.RowCount;
m1:=grid2.ColCount;
grid3.RowCount:=n;
grid3.ColCount:=m1;
if (m=n1) then
 begin
 for I := 0 to n - 1 do
  begin
   for j := 0 to m1 - 1 do
     begin
      grid3.Cells[j,i]:=inttostr(0);
      for k := 0 to m - 1 do
      begin

      grid3.Cells[j,i]:=inttostr(strtoint( grid3.Cells[j,i]) +strtoint(grid1.Cells[k,i])*strtoint (grid2.Cells[j,k]) );

      end;


     end;

  end; 


 end
   else
   begin
     showmessage('No se pueden multiplicar');
   end;

end;

procedure TForm6.Button7Click(Sender: TObject);
begin
grid1.ColCount:=grid1.ColCount+1;
end;

procedure TForm6.Button8Click(Sender: TObject);
begin
grid1.ColCount:=grid1.ColCount-1;
end;

procedure TForm6.Button9Click(Sender: TObject);
begin
grid1.RowCount:=grid1.RowCount+1;
end;

end.
