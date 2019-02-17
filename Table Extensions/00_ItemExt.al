tableextension 50030 "HTC Item" extends Item
{
    fields
    {
        // Add changes to table fields here
        field(123456700;"Bin Type";Text[20])
        {
            Caption='Bin Type';
            TableRelation="BinType";
        }
    }
    
    var
        myInt : Integer;
}