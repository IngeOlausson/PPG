pageextension 50030 "HTC Items"  extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
        addafter("Phys Invt Counting Period Code")
        {
            group(PPG)
            {
                field("Bin Type";"Bin Type")
                {
                
                }
                field("Max Qty. in Bin";"Max Qty. in Bin")
                {   
                    DecimalPlaces=0:2;
                }
                field("Transfered to PPG";"Transfered to PPG")
                {

                }
            }
            
        }
    }

    actions
    {
        // Add changes to page actions here
        addlast("F&unctions")
        {
            group("PPG Kardex")
            {
                action("Send to PPG")
                {
                    ApplicationArea=All;
                    Caption='Send to PPG';
                    trigger OnAction();
                    begin
                        Message('Skickar filen');
                    end;
                }
            }
        }
    }
    
    var
        myInt : Integer;
}