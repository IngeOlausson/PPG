codeunit 50030 PPGManagement
{
    trigger OnRun();
    begin
    end;
    
    var
        myInt : Integer;


    procedure ExportPPGcu(var CurrItem : Record Item);
    var
        myInt : Integer;
        xmlFile : File;
        outStreamVar : OutStream;

    begin
        CurrItem.SetRecFilter;
        xmlFile.Create('\\SE0VIS075.global.hvwan.net\XMLDataExchange\PPG\Artikel\Down\ArtikelDown.txt');
        xmlFile.CreateOutStream(outStreamVar);
    
        Xmlport.Export(50000,outStreamVar,CurrItem);
        xmlFile.Close;

    end;
}