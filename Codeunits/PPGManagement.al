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
        InvSetup : Record "Inventory Setup";

    begin
        CurrItem.SetRecFilter;        
        InvSetup.Get;
        xmlFile.Create(InvSetup."PPG ItemDown");
        xmlFile.CreateOutStream(outStreamVar);
    
        Xmlport.Export(50000,outStreamVar,CurrItem);
        xmlFile.Close;

    end;
}