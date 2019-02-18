xmlport 50000 "ExportPPG"
{
    caption='Export PPG';
    TextEncoding = Windows;
    Format =VariableText;
    Direction=Export;
    FieldSeparator=';';
    FieldDelimiter='"';
    UseRequestPage=false;
    FileName='\\SE0VIS075.htc-sweden.com\XMLDataExchange\PPG\Artikel\Down\ArtikelDown.txt';


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