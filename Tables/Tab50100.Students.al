table 50100 Students
{
    Caption = 'Students';
    DataClassification = OrganizationIdentifiableInformation;

    fields
    {
        field(50000; "Student ID"; Integer)
        {
            Caption = 'Student ID';
            AutoIncrement = true;
        }

        field(50001; "Student Name"; Text[100])
        {
            Caption = 'Name';
        }
        field(50002; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';

            trigger OnValidate()
            var
                AgeL: Integer;
            begin
                Clear(AgeL);
                AgeL := Date2DMY(Today, 3) - Date2DMY(Rec."Date of Birth", 3);
                Rec.Validate(Age, AgeL);
            end;
        }
        field(50003; "Age"; Integer)
        {
            Caption = 'Age';
            Editable = false;

        }
        field(50004; "Class"; Enum Classes)
        {
            Caption = 'Class';
        }
        field(50005; "Active"; Boolean)
        {
            Caption = 'Active';
            InitValue = true;
        }
        field(50006; "Attendance Count"; Integer)
        {
            Caption = 'Attendance Count';
            FieldClass = FlowField;
            CalcFormula = Count(Attendances where("Student ID" = field("Student ID"), Date = field("Attendance Count Filter")));
        }
        field(50007; "Attendance Count Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
    }
    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        //When new record is created
    end;

    trigger OnModify()
    begin
        //When modifying non-PK fields for a record
    end;

    trigger OnRename()
    begin
        //When modifying PK fields for a record
    end;

    trigger OnDelete()
    begin
        //When deleting a record
        if Rec.Active then
            Error('Cannot delete active records.');
    end;
}
