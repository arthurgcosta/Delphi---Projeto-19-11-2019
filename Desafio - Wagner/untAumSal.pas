unit untAumSal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmAumSal = class(TForm)
    lblValor: TLabel;
    edtSal: TEdit;
    lblPerc: TLabel;
    edtPerc: TEdit;
    lblResult: TLabel;
    btnCalc: TButton;
    btnLimpar: TButton;
    pnlResult: TPanel;
    procedure btnCalcClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FrmOnClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmOnDestroy(Sender: TObject);
    procedure FrmOnKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAumSal: TFrmAumSal;

implementation

{$R *.dfm}

procedure TFrmAumSal.btnCalcClick(Sender: TObject);
var
  salAtu, perAum, vrAum, salNovo : real;
begin
  salAtu := strtofloat (edtSal.Text);
  perAum := strtofloat (edtPerc.Text);
  vrAum := (salAtu/100)*perAum;
  salNovo := salAtu + vrAum;
  pnlResult.Caption := ('R$ ' + floattostr(salNovo));
end;

procedure TFrmAumSal.btnLimparClick(Sender: TObject);
var
  i, j: integer;
begin
 for i := 0 to Self.ControlCount - 1 do
    if (Self.Controls[i] is TEdit) then
      (Controls[i] as TEdit).Text := '';
 for j := 0 to Self.ControlCount - 1 do
    if (Self.Controls[j] is TPanel) then
      (controls[j] as TPanel).caption := '';
end;

procedure TFrmAumSal.FrmOnClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmAumSal.FrmOnDestroy(Sender: TObject);
begin
  FrmAumSal := nil;
end;

procedure TFrmAumSal.FrmOnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se for pressionado ESC
  if (key = vk_escape) then
  begin
    //fecha o form
    close;
  end;
end;

end.
