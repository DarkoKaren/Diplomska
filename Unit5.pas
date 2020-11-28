unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, ADODB, Unit6, jpeg;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Panel5: TPanel;
    Label6: TLabel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Edit6: TEdit;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    Panel6: TPanel;
    Panel7: TPanel;
    Button5: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    Image1: TImage;
    Kilovati: TLabel;
    Boja: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit2, Unit11;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  ADOQuery1.Close;

      Form6:=TForm6.Create(self);
      Form6.ShowModal;
      Form6.Free;


  ADOQuery1.Open;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin

  Close;


end;

procedure TForm5.FormCreate(Sender: TObject);
begin
   ADOQuery1.Open;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
   ADOQuery1.Close;

      Form11:=TForm11.Create(self);
      Form11.ShowModal;
      Form11.Free;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
if ADOQuery1.Active then ADOQuery1.Close;
   if ADOQuery2.Active then ADOQuery2.Close;

    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('delete from vozilo ');
    ADOQuery2.SQL.Add('where ID = '+Edit5.Text );
    ShowMessage(' Prikazot e  '+ADOQuery2.SQL.Text);
    if MessageDlg('Dali sakate da go izbrisete zapisot?',mtWarning,[mbOk, mbNo , mbCancel], 0) = mrOk then
    begin
      try
        if ADOQuery2.ExecSQL >0 then
              ShowMessage(' ok. Izbrisano!');
        except
         ShowMessage(' Ima problem. Ne se izbrisa zapisanoto!');
       end;
     end
    else MessageDlg('Nisto ne e izbrisano! ',mtInformation,[mbOk], 0);
  ADOQuery1.Open;

end;

procedure TForm5.Edit1Change(Sender: TObject);
begin
  if length(Edit1.Text) > 0 then
   begin
       ADOQuery1.Close;
       DBGrid1.DataSource := DataSource3;
       if ADOQuery3.Active then ADOQuery3.Close;
            // ADOQuery3.UsePrimaryKeyAsKey := False;
            ADOQuery3.SQL.Clear;
            ADOQuery3.SQL.Add('select * From vozilo ');
            ADOQuery3.SQL.Add('where Marka like ''%'+ Edit1.Text+'%'' ' );
            Memo1.Text := ADOQuery3.SQL.Text;
            ADOQuery3.Open;
   end
       else
   begin
       DBGrid1.DataSource := DataSource3;
       ADOQuery3.Open;
   end;
end;

procedure TForm5.Edit2Change(Sender: TObject);
begin
  if length(Edit2.Text) > 0 then
   begin
       ADOQuery1.Close;
       DBGrid1.DataSource := DataSource3;
       if ADOQuery3.Active then ADOQuery3.Close;
            // ADOQuery3.UsePrimaryKeyAsKey := False;
            ADOQuery3.SQL.Clear;
            ADOQuery3.SQL.Add('select * From vozilo ');
            ADOQuery3.SQL.Add('where Model like ''%'+ Edit2.Text+'%'' ' );
            Memo1.Text := ADOQuery3.SQL.Text;
            ADOQuery3.Open;
   end
       else
   begin
       DBGrid1.DataSource := DataSource3;
       ADOQuery3.Open;
   end;

end;

procedure TForm5.Edit3Change(Sender: TObject);
begin
 if length(Edit3.Text) > 0 then
   begin
       ADOQuery1.Close;
       DBGrid1.DataSource := DataSource3;
       if ADOQuery3.Active then ADOQuery3.Close;
            // ADOQuery3.UsePrimaryKeyAsKey := False;
            ADOQuery3.SQL.Clear;
            ADOQuery3.SQL.Add('select * From vozilo ');
            ADOQuery3.SQL.Add('where Tip like ''%'+ Edit3.Text+'%'' ' );
            Memo1.Text := ADOQuery3.SQL.Text;
            ADOQuery3.Open;
   end
       else
   begin
       DBGrid1.DataSource := DataSource3;
       ADOQuery3.Open;
   end;

end;


procedure TForm5.Edit4Change(Sender: TObject);
begin
 if length(Edit4.Text) > 0 then
   begin
       ADOQuery1.Close;
       DBGrid1.DataSource := DataSource3;
       if ADOQuery3.Active then ADOQuery3.Close;
            // ADOQuery3.UsePrimaryKeyAsKey := False;
            ADOQuery3.SQL.Clear;
            ADOQuery3.SQL.Add('select * From vozilo ');
            ADOQuery3.SQL.Add('where Godina proizvodstvo like ''%'+ Edit4.Text+'%'' ' );
            Memo1.Text := ADOQuery3.SQL.Text;
            ADOQuery3.Open;
   end
       else
   begin
       DBGrid1.DataSource := DataSource3;
       ADOQuery3.Open;
   end;

end;


procedure TForm5.Edit5Change(Sender: TObject);
begin
 if length(Edit5.Text) > 0 then
   begin
       ADOQuery1.Close;
       DBGrid1.DataSource := DataSource3;
       if ADOQuery3.Active then ADOQuery3.Close;
            // ADOQuery3.UsePrimaryKeyAsKey := False;
            ADOQuery3.SQL.Clear;
            ADOQuery3.SQL.Add('select * From vozilo ');
            ADOQuery3.SQL.Add('where Gorivo like ''%'+ Edit5.Text+'%'' ' );
            Memo1.Text := ADOQuery3.SQL.Text;
            ADOQuery3.Open;
   end
       else
   begin
       DBGrid1.DataSource := DataSource3;
       ADOQuery3.Open;
   end;


 end;


procedure TForm5.Edit7Change(Sender: TObject);
begin
 if length(Edit7.Text) > 0 then
   begin
       ADOQuery1.Close;
       DBGrid1.DataSource := DataSource3;
       if ADOQuery3.Active then ADOQuery3.Close;
            // ADOQuery3.UsePrimaryKeyAsKey := False;
            ADOQuery3.SQL.Clear;
            ADOQuery3.SQL.Add('select * From vozilo ');
            ADOQuery3.SQL.Add('where Moknost_KW_KS like ''%'+ Edit7.Text+'%'' ' );
            Memo1.Text := ADOQuery3.SQL.Text;
            ADOQuery3.Open;
   end
       else
   begin
       DBGrid1.DataSource := DataSource3;
       ADOQuery3.Open;
   end;

end;
procedure TForm5.Edit8Change(Sender: TObject);
begin
 if length(Edit8.Text) > 0 then
   begin
       ADOQuery1.Close;
       DBGrid1.DataSource := DataSource3;
       if ADOQuery3.Active then ADOQuery3.Close;
            // ADOQuery3.UsePrimaryKeyAsKey := False;
            ADOQuery3.SQL.Clear;
            ADOQuery3.SQL.Add('select * From vozilo ');
            ADOQuery3.SQL.Add('where Boja like ''%'+ Edit8.Text+'%'' ' );
            Memo1.Text := ADOQuery3.SQL.Text;
            ADOQuery3.Open;
   end
       else
   begin
       DBGrid1.DataSource := DataSource3;
       ADOQuery3.Open;
   end;
end;

end.

