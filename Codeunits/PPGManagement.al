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
        FileName : Text[200];

    begin
        CurrItem.SetRecFilter;        
        InvSetup.Get;
        FileName := InvSetup."PPG ItemDown" + format(CurrentDateTime,12,'<Year><Month,2><Day,2><Hours24,2><Minutes,2><Seconds,2>') + '.txt';        
        xmlFile.Create(FileName);
        xmlFile.CreateOutStream(outStreamVar);
    
        Xmlport.Export(50000,outStreamVar,CurrItem);
        xmlFile.Close;
        message('PPG information has been sent');

    end;
    procedure ExportPPGWhseActOrderdown(var CurrWhseShip : Record "Warehouse Shipment Header");
    var
        myInt : Integer;
        xmlFile : File;
        outStreamVar : OutStream;
        InvSetup : Record "Inventory Setup"; 
        WhseActLine : Record "Warehouse Activity Line";
        FileName : Text[200];

    begin
        CurrWhseShip.SetRecFilter;
        InvSetup.Get;
        WhseActLine.SetRange("Activity Type",WhseActLine."Activity Type"::Pick);
        WhseActLine.SetRange("Whse. Document Type",WhseActLine."Whse. Document Type"::Shipment);
        WhseActLine.SetRange("Whse. Document No.",CurrWhseShip."No."); 
        WhseActLine.SetFilter("Bin Code",'=%1',InvSetup."Bin Kardex");
        WhseActLine.SetFilter("Action Type",'=%1',WhseActLine."Action Type"::Take);
        
        FileName := InvSetup."PPG OrderDown" + format(CurrentDateTime,12,'<Year><Month,2><Day,2><Hours24,2><Minutes,2><Seconds,2>') + '.txt';
        xmlFile.Create(FileName);
        xmlFile.CreateOutStream(outStreamVar);
    
        Xmlport.Export(50001,outStreamVar,WhseActLine);
        xmlFile.Close;        
    end;
}