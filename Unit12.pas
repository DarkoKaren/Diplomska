unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ADODB, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm12 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Button1: TButton;
    PrintDialog1: TPrintDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation
    uses unit10, unit2;
{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
 Close;

end;

procedure TForm12.DBGrid1CellClick(Column: TColumn);
begin
ADOQuery1.Open;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
//SELECT [Last Name], [First Name], Email
  // FROM tblCustomers

  // QuickRep1.Preview;

end;

procedure TForm12.FormCreate(Sender: TObject);
begin
  // AdoQUERY1.Open;
end;

procedure TForm12.Button3Click(Sender: TObject);
begin
//QuickRep1.Preview;
end;

end.
