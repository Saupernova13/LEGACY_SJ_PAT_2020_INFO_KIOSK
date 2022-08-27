program SauPat;

uses
  Forms,
  SauraavPatPhaseDesign in 'SauraavPatPhaseDesign.pas' {Form_Main},
  Restaurant in 'Restaurant.pas' {OrderMenu},
  Unit1 in 'Unit1.pas' {DBModuleStuff: TDataModule},
  Cinema in 'Cinema.pas' {Movies},
  DepartmentStores in 'DepartmentStores.pas' {Form2},
  Pets in 'Pets.pas' {Form3},
  Health in 'Health.pas' {Form4},
  Technology in 'Technology.pas' {Form5},
  Reciept in 'Reciept.pas' {Form6},
  AdminSettings in 'AdminSettings.pas' {Form_Admin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDBModuleStuff, DBModuleStuff);
  Application.CreateForm(TForm_Main, Form_Main);
  Application.CreateForm(TOrderMenu, OrderMenu);
  Application.CreateForm(TMovies, Movies);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm_Admin, Form_Admin);
  Application.Run;
end.
