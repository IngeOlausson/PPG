xmlport 50001 xmlExportPPGWhseActOrderdown
{
    caption='Export PPGWhseActOrderdown';
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
            tableelement("Warehouse Activity Line"; "Warehouse Activity Line")
            {
                XmlName='WhseActLine';
                fieldelement(SourceNo; "Warehouse Activity Line"."Source No.")
                {
                }

                fieldelement(ItemNo; "Warehouse Activity Line"."Item No.")
                {
                }                
                textelement(Qty)
                {
                    trigger onbeforePassvariable();
                    var
                        
                    begin
                        Qty := format("Warehouse Activity Line"."Qty. (Base)" * -1);
                    end;
                }                
            }
        }
    }

 
    
    var
        myInt : Integer;
}