pageextension 50031 PageInventorySetupExt extends "Inventory Setup"
{
    layout
    {
        addlast(Numbering)
        {
            group(PPG)
            {
                caption = 'PPG';
                field("PPG ItemDown";"PPG ItemDown")
                {

                }
                field("PPG OrderDown";"PPG OrderDown")
                {

                }
                field("PPG OrderUp";"PPG OrderUp")
                {

                }
                field("Bin Kardex";"Bin Kardex")
                {

                }
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