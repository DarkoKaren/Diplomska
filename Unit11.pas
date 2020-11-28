unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ExtCtrls, StdCtrls;

type
  TForm11 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
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
    Label10: TLabel;
    Edit10: TEdit;
    Edit9: TEdit;
    Label9: TLabel;
    Edit8: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    Label7: TLabel;
    Button1: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Button2: TButton;
    Edit11: TEdit;
    Label11: TLabel;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    Edit12: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  Broj : integer;
implementation

uses  Unit2;

{$R *.dfm}

procedure TForm11.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm11.Button1Click(Sender: TObject);
begin

   if ADOQuery1.Active then ADOQuery1.Close;
   if ADOQuery2.Active then ADOQuery2.Close;

  AdoQuery2.SQL.Clear;

  ADOQuery2.SQL.Add('update vozilo ');

  //Ti,Motor,Moknost_KW_KS,Menuvac,Boja,Serija,Godina_proizvodstvo,Gorivo)



  ADOQuery2.SQL.Add(' set Model ='''+Edit1.Text+''' , ');
  ADOQuery2.SQL.Add(' Marka ='''+Edit2.Text+''' , ');
  ADOQuery2.SQL.Add('Tip ='''+Edit3.Text+''' , ');
  ADOQuery2.SQL.Add(' Motor='''+Edit4.Text+''' , ');
  ADOQuery2.SQL.Add(' Moknost_KW_KS ='''+Edit5.Text+''' , ');
  ADOQuery2.SQL.Add('Menuvac = '''+Edit6.Text+''' , ');
  ADOQuery2.SQL.Add('Boja = '''+Edit7.Text+''' , ');
  ADOQuery2.SQL.Add('Serija ='''+Edit8.Text+''' , ');
  ADOQuery2.SQL.Add(' Godina_proizvodstvo ='''+Edit9.Text+''' , ');
  ADOQuery2.SQL.Add(' Gorivo = '''+Edit10.Text+''' ');
 // ADOQuery2.SQL.Add('  '+Edit11.Text +' , ');

  ADOQuery2.SQL.Add(' where id = '+IntToStr(Broj)+' )');



 ShowMessage('the query is '+ ADOQuery2.SQL.Text);

 if MessageDlg('Dali sakate da gi promenite podatocite? ?',mtWarning,[mbOk,mbNo,MbCancel],0)= mrOk then
  begin
     try
         ADOQuery1.ExecSQL;
        ShowMessage(' ok. Smeneto...  !');
     except
         ShowMessage('Ima problem. Ne se smeni.');
      end;
  end

  else
 MessageDlg('Nisto ne e smeneto!!',mtInformation,[mbOk],0);
   ADOQuery1.Open;
  end;

procedure TForm11.DBGrid1DblClick(Sender: TObject);
begin




     Edit1.Text := ADOQuery1.fieldbyname('Model').AsString;
     Edit2.Text := ADOQuery1.fieldbyname('Marka').AsString;
     Edit3.Text := ADOQuery1.fieldbyname('Tip').AsString;
     Edit4.Text := ADOQuery1.fieldbyname('Motor').AsString;
     Edit5.Text := ADOQuery1.fieldbyname('Moknost_KW_KS').AsString;
     Edit6.Text := ADOQuery1.fieldbyname('Menuvac').AsString;
     Edit7.Text := ADOQuery1.fieldbyname('Boja').AsString;
     Edit8.Text := ADOQuery1.fieldbyname('Serija').AsString;
     Edit9.Text := ADOQuery1.fieldbyname('Godina_proizvodstvo').AsString;
     Edit10.Text := ADOQuery1.fieldbyname('Gorivo').AsString;
     Edit11.Text := ADOQuery1.fieldbyname('Sopstvenik_ID').ASString;
     Broj :=  ADOQuery1.fieldbyname('ID').ASInteger;
     edit12.Text := inttostr(broj);




end;

procedure TForm11.FormCreate(Sender: TObject);
begin
      ADOQuery1.Open;
end;

end.
