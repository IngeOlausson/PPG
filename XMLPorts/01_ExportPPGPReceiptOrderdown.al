xmlport 50002 xmlExportPPGPReceiptOrderdown
{
    caption='Export PPGPReceiptOrderdown';
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
            tableelement("Purch. Rcpt. Line"; "Purch. Rcpt. Line")
            {
                XmlName='PReceipt';
                textelement(SourceNo)
                {
                    trigger onbeforePassvariable();
                    var
                        PurchRecHdr : Record "Purch. Rcpt. Header";

                    begin
                        if PurchRecHdr.Get("Purch. Rcpt. Line"."Document No.") then
                            SourceNo := PurchRecHdr."Order No."
                        else
                            SourceNo := "Purch. Rcpt. Line"."Document No.";
                    end;                  
                }

                fieldelement(ItemNo; "Purch. Rcpt. Line"."No.")
                {
                }                
                textelement(Qty)
                {
                    trigger onbeforePassvariable();
                    var
                        
                    begin
                        Qty := format("Purch. Rcpt. Line"."Quantity (Base)");
                    end;
                }                
            }
        }
    }

}