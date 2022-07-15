unit maquinaDeDinheiro.Interfaces.MaquinaDinheiro;

interface

uses
  System.Classes;

type
    IMaquina = interface
        ['{D6B9CF60-549D-4F30-BFBF-2D578D2ED771}']
        function MontarTroco(Troco: Double): TList;
    end;

implementation

end.
