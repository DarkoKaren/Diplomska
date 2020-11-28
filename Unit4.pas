unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DB, ADODB, jpeg,
  Menus, Buttons, MPlayer, ShellApi;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    MonthCalendar1: TMonthCalendar;
    Label1: TLabel;
    Memo1: TMemo;
    Image1: TImage;
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Os1: TMenuItem;
    Izvestai1: TMenuItem;
    Zaprogramata1: TMenuItem;
    Izlez1: TMenuItem;
    Vozilo1: TMenuItem;
    Uslugi1: TMenuItem;
    N1: TMenuItem;
    Generiranjenasmetki1: TMenuItem;
    Izlez2: TMenuItem;
    Korisnici1: TMenuItem;
    Panel1: TPanel;
    Button5: TButton;
    Timer1: TTimer;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Button2: TButton;
    BitBtn1: TBitBtn;
    Image2: TImage;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Vozila1: TMenuItem;
    Sopstvenici1: TMenuItem;
    N2: TMenuItem;
    Izlez3: TMenuItem;
    Panel4: TPanel;
    Panel5: TPanel;
    Image3: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

    procedure Izlez1Click(Sender: TObject);
    procedure Uslugi1Click(Sender: TObject);
    procedure Vozilo1Click(Sender: TObject);
    procedure Korisnici1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure StatusBar1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Izvestai1Click(Sender: TObject);
  

    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1, Unit2, Unit7, Unit5, Unit10, Unit9, Unit6, Unit12;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin

  Close;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
//ovde e forma za sopstvenici
      Form7:=TForm7.Create(self);
      Form7.ShowModal;
      Form7.Free;

end;

procedure TForm4.Izlez1Click(Sender: TObject);
begin
   Memo1.Lines.SaveToFile('Potsetnik.txt');

  Close;
end;

procedure TForm4.Uslugi1Click(Sender: TObject);
begin
 //ovde se stava vrska so formata za uslugi
   Form10:=TForm10.Create(self);
  Form10.ShowModal;
  Form10.Free;

end;

procedure TForm4.Vozilo1Click(Sender: TObject);
begin
  //Ovde se povrzuvam so forma za vozila
      Form5:=TForm5.Create(self);
      Form5.ShowModal;
      Form5.Free;

end;

procedure TForm4.Korisnici1Click(Sender: TObject);
begin
  //Ovde treba da se povrzat so tabelata na korisnici
      Form9:=TForm9.Create(self);
      Form9.ShowModal;
      Form9.Free;

end;

procedure TForm4.Timer1Timer(Sender: TObject);
begin

 StatusBar1.Panels[0].Text:= FormatDateTime('hh:mm:ss',Time);

end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  //Ovde go otvaramem AdoQuery za da moze da gi prevzeme podatocite
  AdoQuery1.Open;

  //   Ovde se zemaat podatocite za firmata
  Label2.Caption:= ADoQuery1.fieldbyname('Naziv_na_firma').AsString;
  Label3.Caption:= ADoQuery1.fieldbyname('Lokacija').AsString;
  Label4.Caption:= ADoQuery1.fieldbyname('Manager').AsString;
  Label5.Caption:= ADoQuery1.fieldbyname('Rabotno_vreme').AsString;
  Label6.Caption:= ADoQuery1.fieldbyname('Contact').AsString;
  Label7.Caption:= ADoQuery1.fieldbyname('Transakciska_smetka').AsString;

   //Go prilozuvame imeto na firma, vremeto i datumot vo memo1
  Memo1.Text:=ADoQuery1.fieldbyname('Naziv_na_firma').AsString+
  '   '+ FormatDateTime('hh:mm:ss',Time)+
  '   '+FormatDateTime('dd-mm-yyyy',Date);

   //Tuka go prevzemame denesniot datum
  StatusBar1.Panels[1].Text:= FormatDateTime('dd-mm-yyyy',Date);


   Memo1.Lines.LoadFromFile('Potsetnik.txt');

end;


procedure TForm4.Memo1Change(Sender: TObject);
begin
   Panel3.Color := clRed;
end;

procedure TForm4.StatusBar1Click(Sender: TObject);
begin
//so klik se zapisuva vo memo1 datumot i vremeto no i se menuva bojata vo plava
  Memo1.Lines.Add('Datum - '+DateToStr(Date));
  Memo1.Lines.Add('Vreme -'+TimeToStr(Time));
  Panel3.Color := clBlue;
        // dali treba nova forma da se napravi ,,za aplikacijata,, i da se pise
        //vo nea malo zapoznavnje
end;




procedure TForm4.Image1Click(Sender: TObject);
begin
 ShellExecute(Handle, 'open', PChar('http://proleteras.com/'), nil, nil, SW_SHOW);


end;

procedure TForm4.Image3Click(Sender: TObject);
begin

 ShellExecute(Handle, 'open', PChar( 'https://www.google.com/maps/place/%D0%9F%D0%B0%D1%80%D1%82%D0%B8%D0%B7%D0%B0%D0%BD%D1%81%D0%BA%D0%B0+100,'), nil, nil, SW_SHOW);;
end;

procedure TForm4.Image2Click(Sender: TObject);
begin
        ShellExecute(Handle, 'open', PChar( 'http://www.avtocajka.com.mk/'), nil, nil, SW_SHOW);
end;

procedure TForm4.Izvestai1Click(Sender: TObject);
begin
      Form12:= TForm12.Create(self);
      Form12.ShowModal;
      Form12.Free;
end;

end.
