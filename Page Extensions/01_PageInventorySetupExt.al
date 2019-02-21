pageextension 50031 PageInventorySetupExt extends "Inventory Setup"
{
    layout
    {
        addafter(Numbering)
        {
            
            group(PPGGroup)
            {
                caption = 'PPG';
            }
        }
        addfirst(PPGGroup)
        {
            field("PPG ItemDown";"PPG ItemDown")
            {


            }
            field("PPG OrderDown";"PPG OrderDown")
            {
                Width = 80;
            }
            field("PPG OrderUp";"PPG OrderUp")
            {

            }
            field("Bin Kardex";"Bin Kardex")
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