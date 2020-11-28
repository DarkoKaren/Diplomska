unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids, jpeg;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    Image1: TImage;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit5, Unit2;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin

 // ADOQuery1.UsePrimaryKeyAsKey := False;
  ADOQuery1.SQL.Clear;

  ADOQuery1.SQL.Add('insert into vozilo(Sopstvenik_ID,Model,Marka,Tip,Motor,Moknost_KW_KS,Menuvac,Boja,Serija,Godina_proizvodstvo,Gorivo)');
  ADOQuery1.SQL.Add('values (');
  ADOQuery1.SQL.Add(' '+ADOQuery2.fieldbyname('ID').ASString+' , ');
  ADOQuery1.SQL.Add(' '''+Edit1.Text+''' , ');
  ADOQuery1.SQL.Add(' '''+Edit2.Text+''' , ');
  ADOQuery1.SQL.Add(' '''+Edit3.Text+''' , ');
  ADOQuery1.SQL.Add(' '''+Edit4.Text+''' , ');
  ADOQuery1.SQL.Add(' '''+Edit5.Text+''' , ');
  ADOQuery1.SQL.Add(' '''+Edit6.Text+''' , ');
  ADOQuery1.SQL.Add(' '''+Edit7.Text+''' , ');
  ADOQuery1.SQL.Add(' '''+Edit8.Text+''' , ');
  ADOQuery1.SQL.Add(' '''+Edit9.Text+''' , ');
  ADOQuery1.SQL.Add(' '''+Edit10.Text+''' )');

  ShowMessage('Prikazot e  '+ ADOQuery1.SQL.Text);

 if MessageDlg('Dali sakate da go izbrisete zapisot?',mtWarning,[mbOk, mbNo, mbCancel],0)= mrOk then
  begin
     try
        ADOQuery1.ExecSQL;
        ShowMessage('ok. Izbrisano!');
     except
         ShowMessage(' Ima problem. Ne se izbrisa zapisanoto.');
      end;
  end

  else
  MessageDlg('Nisto ne e izbrisano!',mtInformation,[mbOk],0);

end;


procedure TForm6.FormCreate(Sender: TObject);
begin
   AdoQuery2.Open;
end;

end.
