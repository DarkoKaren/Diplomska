unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, MPlayer,  ShellApi;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
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
    Label14: TLabel;
    Image2: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Panel4: TPanel;
    MediaPlayer1: TMediaPlayer;
    Image3: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin

    MediaPlayer1.Close;
    
    Close;
end;

procedure TForm3.Image2Click(Sender: TObject);
begin
//    ShellExecute(0,nil,PChar('cmd'),PChar('/c start www.delphi.fandom.com/wiki/Delphi/'),nil,0);


    ShellExecute(Handle, 'open', PChar('http://www.delphi.fandom.com/wiki/Delphi/'), nil, nil, SW_SHOW);

    end;

procedure TForm3.Image3Click(Sender: TObject);
begin
 ShellExecute(Handle, 'open', PChar('https://uacs.edu.mk/home/?lang=mk_mk'), nil, nil, SW_SHOW);
end;

end.
