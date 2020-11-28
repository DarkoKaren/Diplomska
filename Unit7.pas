unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ExtCtrls;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Panel2: TPanel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit8, Unit2;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
       Form8:=TForm8.Create(self);
      Form8.ShowModal;
      Form8.Free;

end;

procedure TForm7.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
 Close;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
ADOQuery1.Open;
end;

end.
