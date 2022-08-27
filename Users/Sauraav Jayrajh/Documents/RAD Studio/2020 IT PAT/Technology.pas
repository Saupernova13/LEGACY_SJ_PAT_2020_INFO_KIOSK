unit Technology;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, jpeg, ExtCtrls, ComCtrls, StdCtrls, Buttons;

type
  TForm5 = class(TForm)
    Panel_Technology: TPanel;
    PageControl_Tech: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Image_Feature: TImage;
    Image_Feature_Subtitle: TImage;
    Panel_Map: TPanel;
    Button_Back: TButton;
    Button_Tab2_Back: TButton;
    Button_Tab4_Next: TButton;
    BitBtn_Exit: TBitBtn;
    Panel_Aerohead: TPanel;
    Button_Next: TButton;
    Header_Title: TLabel;
    Image_Tech: TImage;
    Memo_Description: TMemo;
    Image_Map: TImage;
    Panel1: TPanel;
    Button1: TButton;
    RichEdit1: TRichEdit;
    procedure Button_NextClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button_Tab2_BackClick(Sender: TObject);
    procedure Button_Tab4_NextClick(Sender: TObject);
    procedure Button_BackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var
  sAns: string;
begin
  sAns := InputBox('RTX Competition',
    'Think of 2 letters and 5 numbers, then enter them down below! If you mathc it with our answer, you will win a 3090! EX: NM01143 ', '');
  if sAns = 'DR11037' then
  begin
    ShowMessage(
      'You just won a 3090! Head to the Radiohead Store and pick it up with the printed ticket below!');
  end;
  if not(sAns = 'DR11037') then
  begin
    ShowMessage('Sorry! You did not win.');
  end;
end;

procedure TForm5.Button_BackClick(Sender: TObject);
begin
  PageControl_Tech.TabIndex := 2;
end;

procedure TForm5.Button_NextClick(Sender: TObject);
begin
  PageControl_Tech.TabIndex := 1;
end;

procedure TForm5.Button_Tab2_BackClick(Sender: TObject);
begin
  PageControl_Tech.TabIndex := 0;
end;

procedure TForm5.Button_Tab4_NextClick(Sender: TObject);
begin
  PageControl_Tech.TabIndex := 2;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  PageControl_Tech.TabIndex := 0;
end;

end.
