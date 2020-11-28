unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, DB, ADODB;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Button1: TButton;
    qsopstvenik: TDataSource;
    vsopstvenik: TADOQuery;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  



    vsopstvenik.SQL.Clear;


   vsopstvenik.SQL.Add('insert into sopstvenik(Ime,Prezime,Adresa,Telefon,E_mail)');
   vsopstvenik.SQL.Add('values ( ');

   vsopstvenik.SQL.Add(' '''+Edit1.Text+''' , ');
   vsopstvenik.SQL.Add(' '''+Edit2.Text+''' , ');
   vsopstvenik.SQL.Add(' '''+Edit3.Text+''' , ');
   vsopstvenik.SQL.Add(' '''+Edit4.Text+''' , ');
   vsopstvenik.SQL.Add(' '''+Edit5.Text+''' ) ');

   ShowMessage('the query is '+  vsopstvenik.SQL.Text);

 if MessageDlg('Dali sakate da go izbrisete zapisot ?',mtWarning,[mbOk, mbNo, mbCancel],0)= mrOk then
  begin
    try
        if  vsopstvenik.ExecSQL >0
        then
         ShowMessage('Ok. Izbrisano! !');
    except
          ShowMessage('Ima problem. Ne se izbrisa zapisanoto');

     end;

   end

  else
      MessageDlg('Nisto ne e izbrisano !',mtInformation,[mbOk],0);

end;


procedure TForm8.FormCreate(Sender: TObject);
begin
   vsopstvenik.Open;
end;

end.
