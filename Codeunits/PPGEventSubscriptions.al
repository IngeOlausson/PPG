codeunit 50031 "PPG EventSubscriptions"
{

[EventSubscriber(ObjectType::Page, 7335, 'OnAfterActionEvent', 'Create Pick w PPG' , true, true)]
local procedure PPGCreatePickTestOnAfterActionEvent(VAR Rec : Record "Warehouse Shipment Header");
var
    myInt : Integer;
begin
            Message('Event triggered: OnAfter Create Pick');
            myInt := 1;
end;

[EventSubscriber(ObjectType::Codeunit, 90, 'OnAfterFinalizePosting', '', true, true)]

local procedure PPGPReceiptOrderDownOnAfterFinalizePosting(var PurchHeader : Record "Purchase Header";
var PurchRcptHeader : Record "Purch. Rcpt. Header";var PurchInvHeader : Record "Purch. Inv. Header";
var PurchCrMemoHdr : Record "Purch. Cr. Memo Hdr.";var ReturnShptHeader : Record "Return Shipment Header";
var GenJnlPostLine : Codeunit "Gen. Jnl.-Post Line");
var
    PPGManagement : Codeunit PPGManagement;

Begin
    PPGManagement.ExportPPGPReceiptOrderdown(PurchRcptHeader);
End;
}