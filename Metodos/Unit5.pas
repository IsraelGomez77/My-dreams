unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm5 = class(TForm)
    Grid1: TStringGrid;
    Grid2: TStringGrid;
    Grid3: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
    oper:Integer;
implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
 oper:=oper+1;
 if oper>2 then oper:=1;
 if oper=1 then button1.Caption:='+' ;
 if oper=2 then button1.Caption:='-'  ;
 
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
grid1.ColCount:=grid1.ColCount+1;
grid2.ColCount:=grid2.ColCount+1;
grid3.ColCount:=grid3.ColCount+1;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
grid1.ColCount:=grid1.ColCount-1;
grid2.ColCount:=grid2.ColCount-1;
grid3.ColCount:=grid3.ColCount-1;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
grid1.RowCount:=grid1.RowCount+1;
grid2.RowCount:=grid2.RowCount+1;
grid3.RowCount:=grid3.RowCount+1;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
grid1.RowCount:=grid1.RowCount-1;
grid2.RowCount:=grid2.RowCount-1;
grid3.RowCount:=grid3.RowCount-1;
end;

procedure TForm5.Button6Click(Sender: TObject);
var
i,j:Integer;
num1,num2:Integer;
begin
num1:=strtoint(edit1.Text);
num2:=strtoint(edit2.Text);
if oper=1 then
   begin
for I := 0 to grid1.RowCount - 1 do
  begin
    for j := 0 to grid1.ColCount - 1 do
      begin
      //cambiar signo de + por la operación que se quiera hacer
      grid3.Cells[j,i]:=inttostr(num1*strtoint(grid1.Cells[j,i])+num2*strtoint(grid2.Cells[j,i]));
 end;
  end;
   end;
   if oper=2 then
   begin
for I := 0 to grid1.RowCount - 1 do
  begin
    for j := 0 to grid1.ColCount - 1 do
      begin
      //cambiar signo de + por la operación que se quiera hacer
      grid3.Cells[j,i]:=inttostr(num1*strtoint(grid1.Cells[j,i])-num2*strtoint(grid2.Cells[j,i]));
 end;
  end;
   end;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
oper:=1;
end;

end.
