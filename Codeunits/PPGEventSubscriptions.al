codeunit 50031 "PPG EventSubscriptions"
{

[EventSubscriber(ObjectType::Page, 7335, 'OnAfterActionEvent', 'Create Pick', true, true)]
local procedure PPGCreatePick ();
var
    myInt : Integer;
begin
            Message('Event triggered: Pick Created');
end;
}