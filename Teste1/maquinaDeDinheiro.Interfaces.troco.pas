unit maquinaDeDinheiro.Interfaces.troco;

interface

type

    TCedula = (ceNota100, ceNota50, ceNota20, ceNota10, ceNota5, ceNota2,
                    ceMoeda100, ceMoeda50, ceMoeda25, ceMoeda10, ceMoeda5, ceMoeda1);

    ITroco = interface
        ['{962C782E-76B5-4D53-AAA4-BB565AE1B424}']

        function GetTipo: TCedula;
        function GetQuantidade: Integer;
        procedure SetQuantidade(Quantidade: Integer);
    end;

implementation

end.
