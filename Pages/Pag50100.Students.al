page 50100 Students
{
    ApplicationArea = All;
    Caption = 'Students';
    PageType = List;
    SourceTable = Students;
    UsageCategory = Lists;
    CardPageId = "Student Card";
    ModifyAllowed = false;
    DeleteAllowed = true;
    InsertAllowed = true;



    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Student ID"; Rec."Student ID")
                {
                    ToolTip = 'Specifies the value of the Student ID field.';
                    Editable = false;
                }
                field("Student Name"; Rec."Student Name")
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ToolTip = 'Specifies the value of the Date of Birth field.';
                }
                field(Age; Rec.Age)
                {
                    ToolTip = 'Specifies the value of the Age field.';
                }
                field(Class; Rec.Class)
                {
                    ToolTip = 'Specifies the value of the Class field.';
                }
                field(Active; Rec.Active)
                {
                    ToolTip = 'Specifies the value of the Active field.';
                }
                field("Attendance Count"; Rec."Attendance Count")
                {
                    ToolTip = 'Specifies the value of the Attendance Count field.';
                }
                field("Student Image"; Rec."Student Image")
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Sample Processing")
            {
                ApplicationArea = All;
                Image = Properties;
                Scope = Repeater;
                // Enabled = false;
                // Visible = false;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}
