unit SauraavPatPhaseDesign;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, Restaurant, Cinema, DepartmentStores, Health,
  Pets, Technology, AdminSettings, StdCtrls,
  Buttons, ComCtrls;

type
  TForm_Main = class(TForm)
    Health_Logo: TImage;
    Electronics_Logo: TImage;
    Cinema_Logo: TImage;
    Supermarket_Logo: TImage;
    Pet_Logo: TImage;
    Restaurat_Logo: TImage;
    Timer1: TTimer;
    Welcome_Main: TLabel;
    Welcome_Sub: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit_Password: TEdit;
    Button_SignIn: TButton;
    Animation_Load: TShape;
    Restaurant_Text: TImage;
    Health_Text: TImage;
    Supermarket_Text: TImage;
    Cinema_Text: TImage;
    Electroics_Text: TImage;
    Pet_Text: TImage;
    Admin_Settings: TImage;
    RichEdit_Abbachio_Backup: TRichEdit;
    RichEdit_Bruno_Backup: TRichEdit;
    RichEdit_Giorno_Backup: TRichEdit;
    RichEdit_Fugo_Backup: TRichEdit;
    RichEdit_Mista_Backup: TRichEdit;
    RichEdit_Narancia_Backup: TRichEdit;
    BitBtn1: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button_SignInClick(Sender: TObject);
    procedure Cinema_LogoClick(Sender: TObject);
    procedure Supermarket_LogoClick(Sender: TObject);
    procedure Pet_LogoClick(Sender: TObject);
    procedure Restaurat_LogoClick(Sender: TObject);
    procedure Health_LogoClick(Sender: TObject);
    procedure Electronics_LogoClick(Sender: TObject);
    procedure Edit_PasswordClick(Sender: TObject);
    procedure Admin_SettingsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Main: TForm_Main;

implementation

{$R *.dfm}

procedure TForm_Main.Admin_SettingsClick(Sender: TObject);
begin
  Form_Admin.show;
end;

procedure TForm_Main.Button_SignInClick(Sender: TObject);
var
  tfile, tfile2: textfile;
  sline, sline2: string;
begin
  AssignFile(tfile, 'ADPasswords.txt');
  AssignFile(tfile2, 'USPasswords.txt');
  Reset(tfile);
  Reset(tfile2);
  Readln(tfile, sline);
  Readln(tfile2, sline2);
  if (Edit_Password.Text = sline) then
  begin
    Admin_Settings.Enabled := true;

    Panel2.Destroy;
  end;
  if (Edit_Password.Text = sline2) then
  begin
    Admin_Settings.Enabled := False;
    BitBtn1.Visible := False;
    Panel2.Destroy;
  end;
  CloseFile(tfile);
  CloseFile(tfile2);
end;

procedure TForm_Main.Edit_PasswordClick(Sender: TObject);
begin
  Edit_Password.Text := '';
end;

procedure TForm_Main.FormCreate(Sender: TObject);
var
  tfile, tAbb, tBru, tGio, tNara, tFu, tMis: textfile;

begin
  if not FileExists('USPasswords.txt') then
  begin
    RichEdit_Abbachio_Backup.Lines.SaveToFile('USPasswords.txt');
    RichEdit_Abbachio_Backup.Lines.Add('User');
    AssignFile(tfile, 'USPasswords.txt');
    Rewrite(tfile);
    Writeln(tfile, 'User');
    CloseFile(tfile);

  end;

  if not FileExists('ADPasswords.txt') then
  begin
    RichEdit_Abbachio_Backup.Lines.SaveToFile('ADPasswords.txt');
    RichEdit_Abbachio_Backup.Lines.Add('Admin');
    AssignFile(tfile, 'ADPasswords.txt');
    Rewrite(tfile);
    Writeln(tfile, 'Admin');
    CloseFile(tfile);

  end;

  if not FileExists('Abbachio.txt') then
  begin
    RichEdit_Abbachio_Backup.clear;
    RichEdit_Abbachio_Backup.Lines.Add('Item               Price');
    RichEdit_Abbachio_Backup.Lines.Add('------------------------');
    RichEdit_Abbachio_Backup.Lines.Add('Moody Blue Bage#20');
    RichEdit_Abbachio_Backup.Lines.Add('Rewinded Rigatoni#45');
    RichEdit_Abbachio_Backup.Lines.Add('Pene Policeman#50');
    RichEdit_Abbachio_Backup.Lines.Add('Ari Ari Alfredo#45');
    RichEdit_Abbachio_Backup.Lines.Add('Hot Cioccolata#25');
    RichEdit_Abbachio_Backup.Lines.SaveToFile('Abbachio.txt');
    AssignFile(tAbb, 'Abbachio.txt');
    Rewrite(tAbb);
    Writeln(tAbb, RichEdit_Abbachio_Backup.Text);
    CloseFile(tAbb);
    RichEdit_Abbachio_Backup.clear;
  end;
  if not FileExists('Narancia.txt') then
  begin
    RichEdit_Narancia_Backup.clear;
    RichEdit_Narancia_Backup.Lines.Add('Item               Price');
    RichEdit_Narancia_Backup.Lines.Add('------------------------');
    RichEdit_Narancia_Backup.Lines.Add('Aerosmith Omlette#20');
    RichEdit_Narancia_Backup.Lines.Add('Dancing Doughnut#25');
    RichEdit_Narancia_Backup.Lines.Add('Kiddies Kebab#40');
    RichEdit_Narancia_Backup.Lines.Add('Flying Fruitcakes#35');
    RichEdit_Narancia_Backup.Lines.Add('Youthy Yoghurt#25');
    RichEdit_Narancia_Backup.Lines.SaveToFile('Narancia.txt');
    AssignFile(tNara, 'Narancia.txt');
    Rewrite(tNara);
    Writeln(tNara, RichEdit_Narancia_Backup.Text);
    CloseFile(tNara);
    RichEdit_Narancia_Backup.clear;
  end;
  if not FileExists('Mista.txt') then
  begin
    RichEdit_Mista_Backup.clear;
    RichEdit_Mista_Backup.Lines.Add('Item               Price');
    RichEdit_Mista_Backup.Lines.Add('------------------------');
    RichEdit_Mista_Backup.Lines.Add('Fries of 4#20');
    RichEdit_Mista_Backup.Lines.Add('Six Shot Sausage#30');
    RichEdit_Mista_Backup.Lines.Add('Guido Granola#30');
    RichEdit_Mista_Backup.Lines.Add('Bullet Burrito#35');
    RichEdit_Mista_Backup.Lines.Add('Cheesy CrissCross#10');
    RichEdit_Mista_Backup.Lines.SaveToFile('Mista.txt');
    AssignFile(tMis, 'Mista.txt');
    Rewrite(tMis);
    Writeln(tMis, RichEdit_Mista_Backup.Text);
    CloseFile(tMis);
    RichEdit_Mista_Backup.clear;
  end;
  if not FileExists('Bruno.txt') then
  begin
    RichEdit_Bruno_Backup.clear;
    RichEdit_Bruno_Backup.Lines.Add('Item               Price');
    RichEdit_Bruno_Backup.Lines.Add('------------------------');
    RichEdit_Bruno_Backup.Lines.Add('Bucciratti Breakdown#25');
    RichEdit_Bruno_Backup.Lines.Add('Arriverderci Aartapples#20');
    RichEdit_Bruno_Backup.Lines.Add('Liars Tastebud#50');
    RichEdit_Bruno_Backup.Lines.Add('Zipped Up#15');
    RichEdit_Bruno_Backup.Lines.Add('Soulful Vessel#60');
    RichEdit_Bruno_Backup.Lines.SaveToFile('Bruno.txt');
    AssignFile(tBru, 'Bruno.txt');
    Rewrite(tBru);
    Writeln(tBru, RichEdit_Bruno_Backup.Text);
    CloseFile(tBru);
    RichEdit_Bruno_Backup.clear;
  end;
  if not FileExists('Giorno.txt') then
  begin
    RichEdit_Giorno_Backup.clear;
    RichEdit_Giorno_Backup.Lines.Add('Item               Price');
    RichEdit_Giorno_Backup.Lines.Add('------------------------');
    RichEdit_Giorno_Backup.Lines.Add('Gummi Experience#15');
    RichEdit_Giorno_Backup.Lines.Add('Muda Milkshake#25');
    RichEdit_Giorno_Backup.Lines.Add('Dreamy Delight#35');
    RichEdit_Giorno_Backup.Lines.Add('Passion Fruit Lemonade#30');
    RichEdit_Giorno_Backup.Lines.Add('Golden Wafer#35');
    RichEdit_Giorno_Backup.Lines.SaveToFile('Giorno.txt');
    AssignFile(tGio, 'Giorno.txt');
    Rewrite(tGio);
    Writeln(tGio, RichEdit_Giorno_Backup.Text);
    CloseFile(tGio);
    RichEdit_Giorno_Backup.clear;
  end;
  if not FileExists('Fugo.txt') then
  begin
    RichEdit_Fugo_Backup.clear;
    RichEdit_Fugo_Backup.Lines.Add('Item               Price');
    RichEdit_Fugo_Backup.Lines.Add('------------------------');
    RichEdit_Fugo_Backup.Lines.Add('Purp-arroni#30');
    RichEdit_Fugo_Backup.Lines.Add('Hazy Hot Chilli#30');
    RichEdit_Fugo_Backup.Lines.Add('Brilliant Beef#30');
    RichEdit_Fugo_Backup.Lines.Add('Green Onion#30');
    RichEdit_Fugo_Backup.Lines.Add('Fugo Fiesta#15');
    RichEdit_Fugo_Backup.Lines.SaveToFile('Fugo.txt');
    AssignFile(tFu, 'Fugo.txt');
    Rewrite(tFu);
    Writeln(tFu, RichEdit_Fugo_Backup.Text);
    CloseFile(tFu);
    RichEdit_Fugo_Backup.clear;
  end;
  if not FileExists('Order.txt') then
  begin
    RichEdit_Abbachio_Backup.Lines.SaveToFile('Orders.txt');
  end;

  Animation_Load.Width := 0;
  Panel2.Top := 0;
  Panel2.Left := 0;
end;

procedure TForm_Main.Health_LogoClick(Sender: TObject);
begin
  form4.show;

end;

procedure TForm_Main.Electronics_LogoClick(Sender: TObject);
begin
  Form5.show;

end;

procedure TForm_Main.Cinema_LogoClick(Sender: TObject);
begin
  Movies.show;

end;

procedure TForm_Main.Supermarket_LogoClick(Sender: TObject);
begin
  form2.show;

end;

procedure TForm_Main.Pet_LogoClick(Sender: TObject);
begin
  form3.show;

end;

procedure TForm_Main.Restaurat_LogoClick(Sender: TObject);
begin
  Animation_Load.Width := 34;
  Timer1.Enabled := true;
  OrderMenu.show;
end;

procedure TForm_Main.Timer1Timer(Sender: TObject);

begin
  if Animation_Load.Left < 576 then
  begin
    Animation_Load.Left := Animation_Load.Left + 25;
    Animation_Load.Visible := False;

  end;

end;

end.
