unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls;

type
  TForm10 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Panel2: TPanel;
    Button1: TButton;
    Izvestaj: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IzvestajClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit4, Unit2, Unit12;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin

  Close;
end;

procedure TForm10.FormCreate(Sender: TObject);
begin
  AdoQuery1.Open;
end;

procedure TForm10.IzvestajClick(Sender: TObject);
begin
 Form12:= TForm12.Create(self);
      Form12.ShowModal;
      Form12.Free;


end;

end.
