unit Reciept;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TForm6 = class(TForm)
    Panel_Receipt: TPanel;
    Memo_Receipt: TMemo;
    Label_Reciept: TLabel;
    Button1: TButton;
    SafePanel: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure SafePanelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  ShowMessage(
    'Thank You for placing your order! Please take your printed receipt');
  SafePanel.Show;
  Memo_Receipt.Clear;
  Form6.Close;
end;

procedure TForm6.SafePanelClick(Sender: TObject);
var
  tFile: textfile;
  sline: string;

begin
  Memo_Receipt.Clear;
  AssignFile(tFile, 'Order.txt');
  Reset(tFile);
  while not eof(tFile) do
  begin
    Readln(tFile, sline);
    Memo_Receipt.Lines.Add(sline);
  end;
  CloseFile(tFile);
  SafePanel.Hide;
end;

end.
