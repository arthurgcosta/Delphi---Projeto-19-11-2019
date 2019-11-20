program Desafio;

uses
  Vcl.Forms,
  untDesafio in 'untDesafio.pas' {FrmPrincipal},
  untSobre in 'untSobre.pas' {frmSobre},
  untCalendario in 'untCalendario.pas' {FrmCalendario},
  untAumSal in 'untAumSal.pas' {FrmAumSal},
  untCatNad in 'untCatNad.pas' {FrmCatNad},
  untMedIdade in 'untMedIdade.pas' {FrmMedIdade},
  untFatorial in 'untFatorial.pas' {FrmFatorial},
  untConv in 'untConv.pas' {FrmTemp},
  untTabuada in 'untTabuada.pas' {FrmTabuada};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
