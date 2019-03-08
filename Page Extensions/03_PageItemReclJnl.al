pageextension 50033 PPGItemReclJnl extends "Item Reclass. Journal"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter("Get Bin Content")
        {
            action("Create Orderdown PPG")
            {
                ApplicationArea = Advanced;
                Caption = 'Create Orderdown PPG';
                Promoted = true;
                PromotedIsBig = false;
                Image = CreateInventoryPickup;

                trigger OnAction();
                begin
                    PPGManagment.ExportPPGItemJnlLineOrderdown(Rec);
                end;
            }
        
        }                // Add changes to page actions here
    }
    
    var
        PPGManagment : Codeunit PPGManagement;
}