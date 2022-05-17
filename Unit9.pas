unit Unit9;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, math;


type
  TForm9 = class(TForm)
    grid1: TStringGrid;
    grid2: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    grid3: TStringGrid;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
   oper:Integer;
implementation

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
grid1.RowCount:=grid1.RowCount+1;
grid2.RowCount:=grid2.RowCount+1;
grid3.RowCount:=grid3.RowCount+1;
grid1.ColCount:=grid1.ColCount+1;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
grid1.RowCount:=grid1.RowCount-1;
grid2.RowCount:=grid2.RowCount-1;
grid3.RowCount:=grid3.RowCount-1;
grid1.ColCount:=grid1.ColCount-1;
end;

procedure TForm9.Button3Click(Sender: TObject);
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
                grid3.Cells[j,i]:=inttostr(strtoint(grid3.Cells[j,i])+strtoint(grid1.Cells[k,i])*strtoint(grid2.Cells[j,k]));
              end;

            end;

      end;

end
else
begin
    showmessage('NO SE PUEDE MULTIPLICAR');
end;
end;



end.
