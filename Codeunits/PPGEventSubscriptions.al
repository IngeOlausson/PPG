codeunit 50031 "PPG EventSubscriptions"
{

[EventSubscriber(ObjectType::Page, 7335, 'OnBeforeActionEvent', 'Co&mments', true, true)]
local procedure PPGCreatePickTestOnBeforeActionEvent(VAR Rec : Record "Warehouse Shipment Header");
var
    myInt : Integer;
begin
            Message('Event triggered: OnBefore Comments');
            myInt := 1;
end;
}