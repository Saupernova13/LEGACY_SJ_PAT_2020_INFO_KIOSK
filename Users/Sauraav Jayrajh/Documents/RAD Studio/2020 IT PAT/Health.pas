unit Health;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, pngimage, ExtCtrls, Buttons;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Header1: TLabel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Image2: TImage;
    TabSheet3: TTabSheet;
    Image3: TImage;
    Panel3: TPanel;
    Image4: TImage;
    Image5: TImage;
    Label3: TLabel;
    Button18: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button18Click(Sender: TObject);
begin
  PageControl1.TabHeight := 2;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  PageControl1.TabIndex := 1;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  PageControl1.TabHeight := 1;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  PageControl1.TabHeight := 0;
end;

end.
