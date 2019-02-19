codeunit 50000 PPGManagement
{
    trigger OnRun();
    begin
    end;
    
    var
        myInt : Integer;


    procedure ExportPPGcu(var CurrItem : Record Item);
    var
        myInt : Integer;
    begin
        CurrItem.SetRecFilter;
        Xmlport.Run(50000,false,false,CurrItem);

    end;
}