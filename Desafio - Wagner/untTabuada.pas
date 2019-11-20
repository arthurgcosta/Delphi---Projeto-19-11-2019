unit untTabuada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, shellapi, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmTabuada = class(TForm)
    edtValor: TEdit;
    lsbResult: TListBox;
    btnGerar: TButton;
    lbl1: TLabel;
    pnlResult: TPanel;
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTabuada: TFrmTabuada;

implementation

{$R *.dfm}

procedure TFrmTabuada.btnGerarClick(Sender: TObject);
var
  num, i, mult: integer;
begin
  lsbResult.Clear;
  num:= strtoint(edtValor.text);
  for i := 0 to 10 do
    begin
      mult:= num * i;
      lsbResult.Items.Add(edtValor.Text + ' x ' + inttostr(i) + ' = ' + inttostr(mult));
      pnlResult.Caption(edtValor.Text + ' x ' + inttostr(i) + ' = ' + inttostr(mult));
    end;
end;

end.
