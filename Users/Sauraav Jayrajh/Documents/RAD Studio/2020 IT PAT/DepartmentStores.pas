unit DepartmentStores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ComCtrls, pngimage, Buttons;

type
  TForm2 = class(TForm)
    Panel_Supermarket: TPanel;
    Button_Overview_Header: TLabel;
    PageControl_DepartmentStore: TPageControl;
    TabSheet1: TTabSheet;
    Image_Overview_2: TImage;
    Image_Overview_1: TImage;
    Button_Overview_Next: TButton;
    Memo_Overview_Desc: TMemo;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    FAQ_Memo: TMemo;
    Image_Map: TImage;
    Panel_Map: TPanel;
    BitBtn_Close: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button_Overview_NextClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  PageControl_DepartmentStore.TabIndex := 1;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  PageControl_DepartmentStore.TabIndex := 0;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
PageControl_DepartmentStore.TabIndex:=2;
end;

procedure TForm2.Button_Overview_NextClick(Sender: TObject);
begin
  PageControl_DepartmentStore.TabIndex := 1;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  PageControl_DepartmentStore.TabIndex := 0;
end;

end.
