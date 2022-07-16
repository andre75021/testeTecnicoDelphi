unit
    maquinaDeDinheiro.classe.MaquinaDinheiro;

interface

uses
  maquinaDeDinheiro.Interfaces.MaquinaDinheiro,
  System.Classes,
  maquinaDeDinheiro.classe.troco;

type
    TMaquinaDinheiro = class(TInterfacedObject, IMaquina)
        Constructor Create;
        Destructor Destroy; Override;
        function MontarTroco(troco: double): Tlist;
        class function New: IMaquina;
    end;
implementation

uses
  System.SysUtils;

{ TMaquinaDinheiro }

constructor TMaquinaDinheiro.Create;
begin
//
end;

destructor TMaquinaDinheiro.Destroy;
begin
  inherited;
end;

function TMaquinaDinheiro.MontarTroco(troco: double): Tlist;
const
    cedulas: Array[1..7] of integer = (100,50,20,10,5,2,1);
    moedas: Array[1..5]  of integer = (50, 25, 10, 5, 1);
var
    vTroco: TTroco;
    parteInteira, parteDecimal, i, jMoeda: integer;
    quantidadeDeCedulas, quantidadeDeMoedas: integer;
    listaDeTroco: TList;
begin
    // Definindo a parte inteira e calculando a quantidade de notas.
    parteInteira := Trunc(troco);
    i := 0;
    listaDeTroco := TList.Create;
    while parteInteira <> 0 do
    begin
        quantidadeDeCedulas := parteInteira div cedulas[i + 1];
        try
            try
                vTroco := TTroco.Create(TCedula(i), quantidadeDeCedulas);
                listaDeTroco.Add(vTroco);
            except
                continue
            end;
        finally

        end;
        parteInteira := parteInteira mod cedulas[i + 1];
        i := i + 1;
    end;

    // Definindo a parte decimal e calculando a quantidade de moedas.
    parteDecimal := Round(Frac(troco)* 100);
    jMoeda := 7; // Pega o índice da primeira moeda no enumerado.
    i := 0;

    while parteDecimal <> 0 do
    begin
        quantidadeDeMoedas := parteDecimal div moedas[i + 1];
        try
            try
                vTroco := TTroco.Create(TCedula(jMoeda), quantidadeDeMoedas);
                listaDeTroco.Add(vTroco);
            except
                continue
            end;
        finally

        end;
        parteDecimal := parteDecimal mod moedas[i + 1];
        i := i + 1;
        jMoeda := jMoeda + 1
    end;

    Result := listaDeTroco;
end;

class function TMaquinaDinheiro.New: IMaquina;
begin
    result := Self.Create;
end;

end.
