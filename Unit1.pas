unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, MPlayer;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    MediaPlayer1: TMediaPlayer;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
begin
   // ShowMessage('Prijaten den!!!');
   // zvuk na zatvorena vrata   wav

    try mediaplayer1.Open;
        mediaplayer1.Play;
       ShowMessage('Prijaten den!!!');
    except
    end;
    
    Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin

      Form2:=TForm2.Create(self);
      Form2.ShowModal;
      Form2.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

      Form3:=TForm3.Create(self);
      Form3.ShowModal;
      Form3.Free;
end;

end.
