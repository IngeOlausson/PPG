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
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt : Integer;
}