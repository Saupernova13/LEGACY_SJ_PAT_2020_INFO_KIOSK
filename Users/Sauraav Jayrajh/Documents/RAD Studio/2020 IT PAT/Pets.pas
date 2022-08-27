unit Pets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, StdCtrls, pngimage, ExtCtrls, ComCtrls, Buttons, Spin, Reciept;

type
  TForm3 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Image1: TImage;
    Button2: TButton;
    Button1: TButton;
    Panel2: TPanel;
    Header1: TLabel;
    Label1: TLabel;
    Memo1: TMemo;
    Image2: TImage;
    TabSheet3: TTabSheet;
    Button5: TButton;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Panel3: TPanel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    SpinEdit1: TSpinEdit;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    Button3: TButton;
    Button4: TButton;
    RichEdit3: TRichEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  PageControl1.TabIndex := 1;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  PageControl1.TabIndex := 3;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  PageControl1.TabIndex := 1;
end;

procedure TForm3.Button5Click(Sender: TObject);
var
  sLine: string;
  tFile: textfile;

begin
  RichEdit3.Clear;
  RichEdit3.Lines.Add('Owner name: ' + Edit2.Text);
  RichEdit3.Lines.Add('Pet name: ' + Edit1.Text);
  RichEdit3.Lines.Add('Time Registered: ' + DateToStr(DateTimePicker1.DateTime)
    );
  RichEdit3.Lines.Add('Animal Age: ' + IntToStr(SpinEdit1.Value));

  RichEdit3.Lines.Add('Animal Status: ' + ComboBox1.Text);
  if RadioGroup1.ItemIndex = 0 then
  begin
    RichEdit3.Lines.Add('Animal Species: Cat');
  end;
  if RadioGroup1.ItemIndex = 1 then
  begin
    RichEdit3.Lines.Add('Animal Species: Dog');
  end;
  if RadioGroup1.ItemIndex = 2 then
  begin
    RichEdit3.Lines.Add('Animal Species: Bird');
  end;
  if RadioGroup1.ItemIndex = 3 then
  begin
    RichEdit3.Lines.Add('Animal Species: Rabbit');
  end;
  if RadioGroup2.ItemIndex = 0 then
  begin
    RichEdit3.Lines.Add('Animal Gender: Male');
  end;
  if RadioGroup1.ItemIndex = 0 then
  begin
    RichEdit3.Lines.Add('Animal Gender: Female');
  end;
  RichEdit3.Lines.Add('Pet Visual Description: ' + RichEdit1.Text);
  RichEdit3.Lines.Add('Pet Additional Information: ' + RichEdit2.Text);
  RichEdit3.Lines.Add('----------------------');

  if ComboBox1.Text = 'Animal is lost.' then
  begin

    RichEdit3.Lines.Add('Price: Free');
  end;

  if ComboBox1.Text = 'Animal has been booked in kennel.' then
  begin

    RichEdit3.Lines.Add('Price: R150');
  end;

  AssignFile(tFile, 'Order.txt');
  Rewrite(tFile);
  Writeln(tFile, RichEdit3.Text);
  CloseFile(tFile);
  RichEdit3.Clear;
  Form6.Show;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
end;

end.
