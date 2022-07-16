program pedido;

uses
  Vcl.Forms,
  pedido.view.manutencaoDePedidos in 'view\pedido.view.manutencaoDePedidos.pas' {frmManutencaoPedidos},
  pedido.view.principal in 'view\pedido.view.principal.pas' {frmPrincipal},
  pedido.view.manutencaoDeItens in 'view\pedido.view.manutencaoDeItens.pas' {frmManutencaoItens},
  pedido.Model.interfaces in 'model\pedido.Model.interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmManutencaoPedidos, frmManutencaoPedidos);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmManutencaoItens, frmManutencaoItens);
  Application.Run;
end.
