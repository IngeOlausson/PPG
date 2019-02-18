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
        field(123456701;"Max Qty. in Bin";Decimal)
        {
            Caption='Max Qty. in Bin';
        }
        field(123456702;"Transfered to PPG";Boolean)
        {
            Caption='Transfered to PPG';
        }
    }
    
    var
        myInt : Integer;
}