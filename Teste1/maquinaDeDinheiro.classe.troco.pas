unit maquinaDeDinheiro.classe.troco;

interface
 uses
    maquinaDeDinheiro.Interfaces.troco;
type

    TCedula = (ceNota100, ceNota50, ceNota20, ceNota10, ceNota5, ceNota2,
                ceMoeda100, ceMoeda50, ceMoeda25, ceMoeda10, ceMoeda5, ceMoeda1);

    TTroco = Class
        private
            FTipo: TCedula;
            FQuantidade: Integer;
        public
            Constructor Create(Tipo: TCedula; Quantidade: Integer);
            function GetTipo: TCedula;
            function GetQuantidade: Integer;
            procedure SetQuantidade(Quantidade: Integer);
    End;

implementation

{ TTroco }

constructor TTroco.Create(Tipo: TCedula; Quantidade: Integer);
begin
    FTipo := Tipo;
    FQuantidade := Quantidade;
end;

function TTroco.GetQuantidade: Integer;
begin
    Result := FQuantidade;
end;

function TTroco.GetTipo: TCedula;
begin
    Result := FTipo;
end;

procedure TTroco.SetQuantidade(Quantidade: Integer);
begin
    FQuantidade := Quantidade;
end;

end.
