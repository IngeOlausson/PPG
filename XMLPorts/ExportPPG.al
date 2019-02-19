xmlport 50000 "ExportPPG"
{
    caption='Export PPG';
    TextEncoding = UTF8;
    Format =VariableText;
    Direction=Export;
    FieldSeparator=';';
    FieldDelimiter='<None>';
    UseRequestPage=false;
    //FileName='\\SE0VIS075.htc-sweden.com\XMLDataExchange\PPG\Artikel\Down\ArtikelDown.txt';
    

    schema
    {
        textelement(root)
        {
            tableelement(Item; Item)
            {
                //SourceTableView = WHERE ("No." = );
                XmlName='Item';
                fieldelement(ItemNo; Item."No.")
                {

                }
                fieldelement(Desc; Item."Description")
                {

                }  
                fieldelement(MaxQty ; Item."Max Qty. in Bin")
                {
                    
                }

                textelement(MinQty)
                {
                    trigger onbeforePassvariable();
                        var
                            MinQty: Integer;
                        begin
                            MinQty := 0;
                        end;

                }  
                fieldelement(Desc2; Item."Description 2")
                {

                }   
                textelement(StoreClass)
                {
                    trigger onbeforePassvariable();
                        var
 
                        begin
                            StoreClass := 'STD';
                        end;
                }                                                                        
                fieldelement(BinType; Item."Bin Type")
                {

                }
   
            }
        }
    }

 
    
    var
        CurrItem : Text;

}