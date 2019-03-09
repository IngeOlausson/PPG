xmlport 50003 xmlExportPPGIReclJnlOrderdown
{
    caption='Export PPGItemReclJnlOrderdown';
    TextEncoding = UTF8;
    Format =VariableText;
    Direction=Export;
    FieldSeparator=';';
    FieldDelimiter='<None>';
    UseRequestPage=false;
    schema
    {
        textelement(root)
        {
            tableelement("Item Journal Line";"Item Journal Line")
            {
                XmlName='ItemReclJnl';

                textelement(SourceNo)
                {
                    trigger OnBeforePassVariable();
                    var
                        InvSetup : Record "Inventory Setup"; 
                    begin
                        InvSetup.Get;                         
                        if ("Item Journal Line"."Bin Code" = InvSetup."Bin Kardex") and
                        ("Item Journal Line"."New Bin Code" <> InvSetup."Bin Kardex") then
                            SourceNo := "Item Journal Line"."Document No." + 'UT'
                        else
                            SourceNo := "Item Journal Line"."Document No." + 'IN';
                    end;                    
                }

                fieldelement(ItemNo; "Item Journal Line"."Item No.")
                {
                }                
                textelement(Qty)
                {
                    trigger onbeforePassvariable();
                    var
                        InvSetup : Record "Inventory Setup"; 

                    begin
                        InvSetup.Get; 
                        if ("Item Journal Line"."Bin Code" = InvSetup."Bin Kardex") and
                        ("Item Journal Line"."New Bin Code" <> InvSetup."Bin Kardex") then
                            Qty := format("Item Journal Line".Quantity * -1);
                        if ("Item Journal Line"."New Bin Code" = InvSetup."Bin Kardex") and
                        ("Item Journal Line"."Bin Code" <> InvSetup."Bin Kardex") then
                            Qty := format("Item Journal Line".Quantity);                            
                    end;
                } 
              
            }
        }
    }

}