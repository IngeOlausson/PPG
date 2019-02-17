table 50000 "BinType"
{
    //DataClassification = ToBeClassified;
    
    fields
    {
        field(10;"Bin Type";Text[20])
        {
            Caption = 'Bin Type';
            //DataClassification = ToBeClassified;
        }
        field(20;"Description";Text[30])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(PK;"Bin Type")
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}