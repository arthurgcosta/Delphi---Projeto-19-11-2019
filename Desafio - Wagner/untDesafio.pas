unit untDesafio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, untSobre, untCalendario, untTabuada, untConv,
  untAumSal, untCatNad, untMedIdade, untFatorial, Shellapi;

type
  TFrmPrincipal = class(TForm)
    mnPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    Usurios1: TMenuItem;
    Produtos1: TMenuItem;
    Aplicaes1: TMenuItem;
    EstruturaLinear1: TMenuItem;
    EstruturadeDeciso1: TMenuItem;
    EstruturadeRepetio1: TMenuItem;
    Utilitrios1: TMenuItem;
    Calculadora1: TMenuItem;
    Navegador1: TMenuItem;
    Calendrio1: TMenuItem;
    Sair1: TMenuItem;
    Calculodeaumentosalarial1: TMenuItem;
    CatagoriadoNadador1: TMenuItem;
    FatorarNmero1: TMenuItem;
    abuadas1: TMenuItem;
    Sobre1: TMenuItem;
    ConversordeTemperatura1: TMenuItem;
    MediaIdade1: TMenuItem;

    procedure Sair1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Calendrio1Click(Sender: TObject);
    procedure Navegador1Click(Sender: TObject);
    procedure abuadas1Click(Sender: TObject);
    procedure ConversordeTemperatura1Click(Sender: TObject);
    procedure Calculodeaumentosalarial1Click(Sender: TObject);
    procedure CatagoriadoNadador1Click(Sender: TObject);
    procedure MediaIdade1Click(Sender: TObject);
    procedure FatorarNmero1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.abuadas1Click(Sender: TObject);
begin
  if FrmTabuada = nil then
  begin
    Application.CreateForm(TFrmTabuada, FrmTabuada);
  end;
  FrmTabuada.Show;
end;

procedure TFrmPrincipal.Calculadora1Click(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'calc.exe', '', nil, SW_SHOWNORMAL);
end;

procedure TFrmPrincipal.Calculodeaumentosalarial1Click(Sender: TObject);
begin
  if FrmAumSal = nil then
  begin
      Application.CreateForm(TFrmAumSal, FrmAumSal);
  end;
  FrmAumSal.Show;
end;

procedure TFrmPrincipal.Calendrio1Click(Sender: TObject);
begin
  if FrmCalendario = nil then
  begin
    Application.CreateForm(TFrmCalendario, FrmCalendario);
  end;
  FrmCalendario.Show;
end;

procedure TFrmPrincipal.CatagoriadoNadador1Click(Sender: TObject);
begin
  if FrmCatNad = nil then
  begin
    Application.CreateForm(TFrmCatNad, FrmCatNad);
  end;
  FrmCatNad.Show;
end;

procedure TFrmPrincipal.ConversordeTemperatura1Click(Sender: TObject);
begin
  if FrmTemp = nil then
  begin
    Application.CreateForm(TFrmTemp, FrmTemp);
  end;
  FrmTemp.Show;
end;

procedure TFrmPrincipal.FatorarNmero1Click(Sender: TObject);
begin
  if FrmFatorial = nil then
  begin
    Application.CreateForm(TFrmFatorial, FrmFatorial);
  end;
  FrmFatorial.Show;
end;

procedure TFrmPrincipal.MediaIdade1Click(Sender: TObject);
begin
  if FrmMedIdade = nil then
  begin
    Application.CreateForm(TFrmMedIdade, FrmMedIdade);
  end;
  FrmMedIdade.Show;
end;

procedure TFrmPrincipal.Navegador1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'chrome.exe', '', nil, SW_MAXIMIZE);
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TFrmPrincipal.Sobre1Click(Sender: TObject);
begin
    if frmSobre = nil then
    begin
      Application.CreateForm(TfrmSobre, frmSobre);
    end;
    frmSobre.Show;
end;

end.
