unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm7 = class(TForm)
    Grid1: TStringGrid;
    Grid2: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var
determ, detx,dety,x,y:Real;
begin
 determ:=strtoint(grid1.Cells[0,0])*strtoint(grid1.Cells[1,1])-strtoint(grid1.Cells[1,0])*strtoint(grid1.Cells[0,1]);
 detx:=strtoint(grid2.Cells[0,0])*strtoint(grid1.Cells[1,1])-strtoint(grid1.Cells[1,0])*strtoint(grid2.Cells[0,1]);
 dety:=strtoint(grid1.Cells[0,0])*strtoint(grid2.Cells[0,1])-strtoint(grid2.Cells[0,0])*strtoint(grid1.Cells[0,1]);
 x:=detx/determ;
 y:=dety/determ;
 edit1.Text:=floattostr(x);
 edit2.Text:=floattostr(y);

 showmessage(floattostr(detx));
end;

end.
