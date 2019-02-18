xmlport 50000 "ExportPPG"
{
    caption='Export PPG';
    TextEncoding = Windows;
    Format =VariableText;
    Direction=Export;
    FieldSeparator=';';
    FieldDelimiter='"';
    FileName='C:\XMLDataExchange\PPG\Artikel\Down\ArtikelDown.txt';


    schema
    {
        textelement(root)
        {
            tableelement(Item; Item)
            {
                XmlName='Item';
                fieldelement(ItemNo; Item."No.")
                {

                }
                fieldelement(BinType; Item."Bin Type")
                {

                }
                fieldelement(MaxQty ; Item."Max Qty. in Bin")
                {

                }
                fieldelement(TransferedPPG ; Item."Transfered to PPG")
                {

                }                                
            }
        }
    }

 
    
    var
        myInt : Integer;
}