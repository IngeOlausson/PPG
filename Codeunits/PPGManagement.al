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
    begin
        CurrItem.SetRecFilter;
        CurrItem.SetRange("No.", '10188');
        Xmlport.Run(50000,false,false,CurrItem);

    end;
}