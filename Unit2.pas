unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, jpeg;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Users: TLabel;
    User: TEdit;
    Label3: TLabel;
    Password: TEdit;
    Login: TButton;
    Back: TButton;
    RadioGroup1: TRadioGroup;
    Avtobaza: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Image1: TImage;
    procedure LoginClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit4, Unit1;

{$R *.dfm}

procedure TForm2.LoginClick(Sender: TObject);
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('Select * From Personal where Username='''+User.Text+'''and Password_1='''+ Password.Text+'''');
ADOQuery1.Open;
 //IF (username.Text='ADMIN') AND (password.Text='Admin992') THEN
   //BEGIN
   if ADOQuery1.RecordCount>0 then
   begin
          ShowMessage('Uspesna najava');
          ADOQuery1.Close;

          Form4:=TForm4.Create(self);
          Form4.ShowModal;
          Form4.Free;
          close;
   end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Panel1.Visible :=True;
  
end;

procedure TForm2.RadioGroup1Click(Sender: TObject);
begin

if RadioGroup1.ItemIndex = 1
  then   password.PasswordChar := '*'
else  password.PasswordChar := #0

end;

procedure TForm2.BackClick(Sender: TObject);
begin
 Close;
end;

end.
 