program maquinaDeDinheiro;

uses
  Vcl.Forms,
  maquinaDeDinheiro.View in 'maquinaDeDinheiro.View.pas' {Form1},
  maquinaDeDinheiro.Interfaces.MaquinaDinheiro in 'maquinaDeDinheiro.Interfaces.MaquinaDinheiro.pas',
  maquinaDeDinheiro.classe.MaquinaDinheiro in 'maquinaDeDinheiro.classe.MaquinaDinheiro.pas',
  maquinaDeDinheiro.classe.troco in 'maquinaDeDinheiro.classe.troco.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
