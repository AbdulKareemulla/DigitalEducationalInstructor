<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SchoolMediums.aspx.cs" Inherits="DigitalEducationalInstructor._2SchoolSetupPages.SchoolMediums" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .divTable {
            display: table;
            width: 100%;
        }

        .divTableRow {
            display: table-row;
        }

        .divTableHeading {
            background-color: #EEE;
            display: table-header-group;
        }

        .divTableCell, .divTableHead {
            border: 1px solid #999999;
            display: table-cell;
            padding: 3px 10px;
        }

        .divTableHeading {
            background-color: #EEE;
            display: table-header-group;
            font-weight: bold;
        }

        .divTableFoot {
            background-color: #EEE;
            display: table-footer-group;
            font-weight: bold;
        }

        .divTableBody {
            display: table-row-group;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="divTable">
            <div class="divTableBody">

                <div class="divTableRow">
                    <asp:Panel ID="panelMediums" runat="server" GroupingText="Add/Edit School Mediums">
                        <div class="divTable" style="width:30%">
                            <div class="divTableBody">

                                <div class="divTableRow">
                                    <div class="divTableCell">
                                        <asp:Label ID="lblSelectMedium" runat="server" Text="Select Mediums"></asp:Label>
                                    </div>
                                    <div class="divTableCell">
                                        <asp:CheckBoxList ID="check" runat="server">
                                            <asp:ListItem Text="English" Value="eng" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Telugu" Value="telugu" Selected="false"></asp:ListItem>
                                            <asp:ListItem Text="Urdu" Value="urdu" Selected="false"></asp:ListItem>
                                            <asp:ListItem Text="Tamil" Value="tamil" Selected="false"></asp:ListItem>
                                        </asp:CheckBoxList>
                                        <asp:Button ID="addNew" runat="server" Text="Add New" />
                                    </div>
                                    
                                </div>
                                <div class="divTableRow">
                                    <div class="divTableCell">
                                        
                                    </div>
                                    <div class="divTableCell" >
                                        <asp:Button ID="btnSave" runat="server" Text="Save" />
                                        <asp:Button id="Button1" runat="server" Text="Cancell" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>

                </div>
                <div class="divTableRow">
                    <div class="divTable">
                        <div class="divTableBody">

                            <div class="divTableRow">
                                <div class="divTableCell">
                                    <asp:GridView ID="gridMediums" runat="server">
                                        
                                    </asp:GridView>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>


    </form>
</body>
</html>
