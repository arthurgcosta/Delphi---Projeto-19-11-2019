unit untMedIdade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmMedIdade = class(TForm)
    lblAge1: TLabel;
    lblAge2: TLabel;
    lblAge3: TLabel;
    edtAge1: TEdit;
    edtAge2: TEdit;
    edtAge3: TEdit;
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
  FrmMedIdade: TFrmMedIdade;

implementation

{$R *.dfm}

procedure TFrmMedIdade.btnCalcClick(Sender: TObject);
var
  ida1, ida2, ida3, med: real;
begin
  ida1 := strtofloat(edtAge1.Text);
  ida2 := strtofloat(edtAge2.Text);
  ida3 := strtofloat(edtAge3.Text);
  med := (ida1 + ida2 + ida3)/3;
  if (med > 50) then
    pnlResult.Caption := ('A média das idades é maior que 50 anos')
  else;
  if (med < 50) then
    pnlResult.Caption := ('A média das idades é menor que 50 anos')
  else;
  if (med = 50) then
    pnlResult.Caption := ('A média das idades é igual a 50 anos')
end;

procedure TFrmMedIdade.btnLimparClick(Sender: TObject);
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

procedure TFrmMedIdade.FrmOnClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmMedIdade.FrmOnDestroy(Sender: TObject);
begin
  FrmMedIdade := nil;
end;

procedure TFrmMedIdade.FrmOnKeyDown(Sender: TObject; var Key: Word;
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
