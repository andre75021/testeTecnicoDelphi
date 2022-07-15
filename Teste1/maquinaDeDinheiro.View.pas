unit maquinaDeDinheiro.View;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  maquinaDeDinheiro.classe.MaquinaDinheiro,
  TypInfo,
  maquinaDeDinheiro.classe.troco;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    btnCalculaNotas: TButton;
    memDisplay: TMemo;
    procedure btnCalculaNotasClick(Sender: TObject);
    procedure ExibeResultado;
    function NotaComQuantidade(Value: TCedula): string;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;
  listaDeCedulas: TList;


implementation

uses
  System.Generics.Collections;

{$R *.dfm}

procedure TForm1.btnCalculaNotasClick(Sender: TObject);

begin
    listaDeCedulas := TList.Create;
    try
        listaDeCedulas := TMaquinaDinheiro
                            .New
                            .MontarTroco(strtoFloat(Edit1.Text));
        ExibeResultado;
    finally
        FreeAndNil(listaDeCedulas)
    end;

end;

procedure TForm1.ExibeResultado;
var
    i, finalDaLista, qtd : integer;
    tipo: string;
    item: TTroco;

begin
    i := 0;
    finalDaLista := pred(listaDeCedulas.Count);
    memDisplay.Lines.Clear;
    memDisplay.Lines.Add('---Cédulas que deverão ser dadas como troco---');
    memDisplay.Lines.Add('');

    while i <=  finalDaLista  do
    begin
        qtd := 0;
        item := nil;

        item := listaDeCedulas.Items[i];
        if not (item.GetQuantidade > 0) then
        begin
            i := i+1;
            Continue;
        end;
        qtd := item.GetQuantidade;
        tipo := NotaComQuantidade(item.GetTipo);
        memDisplay.Lines.Add(qtd.ToString + ' ' + tipo);

        i := i+1;
    end;
end;

function TForm1.NotaComQuantidade(Value: TCedula): string;
begin
    case Value of
        ceNota100: Result := 'cédula(s) de 100 Reais';
        ceNota50: Result := 'cédula(s) de 50 Reais';
        ceNota20: Result := 'cédula(s) de 20 Reais';
        ceNota10: Result := 'cédula(s) de 10 Reais';
        ceNota5: Result := 'cédula(s) de 5 Reais';
        ceNota2: Result := 'cédula(s) de 2 Reais';
        ceMoeda100: Result := 'moeda(s) de 1 centavos';
        ceMoeda50: Result := 'moeda(s) de 50 centavos';
        ceMoeda25: Result := 'moeda(s) de 25 centavos';
        ceMoeda10: Result := 'moeda(s) de 10 centavos';
        ceMoeda5: Result := 'moeda(s) de 5 centavos';
        ceMoeda1: Result := 'moeda(s) de 1 centavos';
    end;

end;

end.
