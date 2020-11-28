unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ExtCtrls, StdCtrls, jpeg;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Button2: TButton;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    Edit6: TEdit;
    Label6: TLabel;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    Button3: TButton;
    Image1: TImage;
    Panel3: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
// delete the reocrd from personal
 if ADOQuery1.Active then ADOQuery1.Close;
   if ADOQuery2.Active then ADOQuery2.Close;

    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('delete from personal ');
    ADOQuery2.SQL.Add('where ID = '+Edit5.Text );
    ShowMessage(' Prikazot e  '+ADOQuery2.SQL.Text);
    if MessageDlg('Dali sakate da go izbrisete zapisanoto?',mtWarning,[mbOk, mbNo, mbCancel], 0) = mrOk then
    begin
      try
        if ADOQuery2.ExecSQL >0 then
              ShowMessage('Ok. Izbrisano!');
        except
         ShowMessage(' Ima problem. Ne se izbrisa zapisanoto!');
       end;
     end
    else MessageDlg('Nisto ne e izbrisano! ',mtInformation,[mbOk], 0);
  ADOQuery1.Open;

end;

procedure TForm9.Edit6Change(Sender: TObject);
begin
if length(Edit6.Text) > 0 then
   begin
       ADOQuery1.Close;
       DBGrid1.DataSource := DataSource3;
        if ADOQuery3.Active then ADOQuery3.Close;
         //ADOQuery3.UsePrimaryKeyAsKey := False;
          ADOQuery3.SQL.Clear;
          ADOQuery3.SQL.Add('select * From personal ');
          ADOQuery3.SQL.Add('where ime like ''%'+ Edit6.Text+'%'' or prezime like ''%'+Edit6.Text+'%'' ' );
          ShowMessage(' the query is '+ ADOQuery3.SQL.Text);
          ADOQuery3.Open;
     end
       else
     begin
       DBGrid1.DataSource := DataSource3;
       ADOQuery3.Open;
     end;
end;

procedure TForm9.Edit5Change(Sender: TObject);
begin
 if length(Edit6.Text) > 0 then
     begin
        ADOQuery1.Close;
        DBGrid1.DataSource := DataSource3;
          if ADOQuery3.Active then ADOQuery3.Close;
         //ADOQuery3.UsePrimaryKeyAsKey := False;
            ADOQuery3.SQL.Clear;
            ADOQuery3.SQL.Add('select * from personal ');
            ADOQuery3.SQL.Add('where ime like ''%'+ Edit6.Text+'%'' or prezime like ''%'+Edit6.Text+'%'' ' );
            ShowMessage(' the query is '+ADOQuery3.SQL.Text);
            ADOQuery3.Open;
       end
      else
     begin
         DBGrid1.DataSource := DataSource1;
         ADOQuery1.Open;
     end;
 end;

procedure TForm9.Button3Click(Sender: TObject);
begin
   if ADOQuery1.Active then ADOQuery1.Close;
   if ADOQuery2.Active then ADOQuery2.Close;
   if ADOQuery3.Active then ADOQuery3.Close;

   ADOQuery2.SQL.Clear;


   ADOQuery2.SQL.Add('Insert into Personal(Ime,Prezime,Username,Password_1)');
   ADOQuery2.SQL.Add('values ( ');

   ADOQuery2.SQL.Add(' '''+Edit1.Text+''' , ');
   ADOQuery2.SQL.Add(' '''+Edit2.Text+''' , ');
   ADOQuery2.SQL.Add(' '''+Edit3.Text+''' , ');
   ADOQuery2.SQL.Add(' '''+Edit4.Text+''' ) ');

   ShowMessage('the query is '+ ADOQuery2.SQL.Text);

 if MessageDlg('Do you want to insert this record ?',mtWarning,[mbOk, mbNo, mbCancel],0)= mrOk then
  begin
    try
        if ADOQuery2.ExecSQL >0
        then
         ShowMessage('Vneseni se zapisite!');
    except
          ShowMessage('Ima problem vo zapisot.');

     end;

   end

  else
    MessageDlg('Nisto ne e smeneto !',mtInformation,[mbOk],0);

    ADOQuery1.Open;
end;



procedure TForm9.FormCreate(Sender: TObject);
begin
ADOQuery1.Open;
end;


end.


