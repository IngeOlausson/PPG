pageextension 50030 "HTC Items"  extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
        addafter("Phys Invt Counting Period Code")
        {
            field("Bin Type";"Bin Type")
            {
                
            }
            field("Max Qty. in Bin";"Max Qty. in Bin")
            {

            }
            field("Transfered to PPG";"Transfered to PPG")
            {
                
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt : Integer;
}