pageextension 50032 PPGWarehouseShipment extends "Warehouse Shipment"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addafter("Create Pick")
        {
            action("Create Pick w PPG")
            {
                ApplicationArea = Advanced;
                Caption = 'Create Pick w PPG';
                Promoted = true;
                PromotedIsBig = false;
                Image = CreateInventoryPickup;

                trigger OnAction();
                begin
                    CurrPage.UPDATE(TRUE);
                    CurrPage.WhseShptLines.PAGE.PickCreate;
                    //PPGManagment.ExportPPGcu(Rec);
                    Message('OnAction Create Pick do PPG');
                end;
            }
        
        }        
    }
    
    var
        myInt : Integer;
}