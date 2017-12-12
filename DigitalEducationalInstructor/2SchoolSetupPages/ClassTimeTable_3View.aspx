<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassTimeTable_3View.aspx.cs" Inherits="DigitalEducationalInstructor._2SchoolSetupPages.ClassTimeTable_3View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
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
            border: 0px solid #999999;
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
        <div>
            <asp:Panel ID="panelViewTimeTable" runat="server" GroupingText="View Class Time Table">
                <div class="divTable">
                    <div class="divTableBody">
                        <div class="divTableRow">
                            <div class="divTableCell"><asp:Label ID="lblclass" runat="server" Text="Select Class"></asp:Label></div>
                            <div class="divTableCell">
                                <asp:DropDownList ID="selectedClass" runat="server">
                                    <asp:ListItem Text="-Select-" Value=""></asp:ListItem>
                                    <asp:ListItem Text="XII" Value="XII"></asp:ListItem>
                                    <asp:ListItem Text="XII" Value="XII"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="divTableCell">
                                <div class="divTableCell"><asp:Label ID="Label1" runat="server" Text="Select Section"></asp:Label></div>
                            </div>
                            <div class="divTableCell">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Text="-Select-" Value=""></asp:ListItem>
                                    <asp:ListItem Text="A" Value="A"></asp:ListItem>
                                    <asp:ListItem Text="B" Value="B"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="divTableCell"><asp:Button ID="btnView" runat="server" Text="view" /></div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </form>
    <br /><br />
    <asp:Panel ID="panelTimeTable" runat="server" GroupingText="Section Wise TimeTable">
        <div class="divTable">
            <div class="divTableRow">
                <div class="divTableCell">Selected Class : XII</div>
                <div class="divTableCell">Selected Section : A</div>
            </div>
        </div>
        <br />

        <div class="divTable" style="border:medium; border-width:medium">
            <div class="divTableBody">
                <div class="divTableRow">
                    <div class="divTableCell"><asp:Label ID="lblWeek" runat="server" Text="Week"></asp:Label></div>
                    <div class="divTableCell">09 am-10 am</div>
                    <div class="divTableCell">10 am-11 am</div>
                    <div class="divTableCell">11 am-12 pm</div>
                    <div class="divTableCell">12 pm-01 pm</div>
                    <div class="divTableCell">01 pm-02 pm</div>
                    <div class="divTableCell">02 pm-03 pm</div>
                    <div class="divTableCell">03 pm-04 pm</div>
                    <div class="divTableCell">04 pm-05 pm</div>
                    <div class="divTableCell">Action</div>
                </div>
                <div class="divTableRow">
                    <div class="divTableCell"><asp:Label ID="Label2" runat="server" Text="Monday"></asp:Label></div>
                    <div class="divTableCell">Telugu</div>
                    <div class="divTableCell">Maths</div>
                    <div class="divTableCell">English</div>
                    <div class="divTableCell">Scince</div>
                    <div class="divTableCell">Computer Labs</div>
                    <div class="divTableCell">C programming</div>
                    <div class="divTableCell">Communications lab</div>
                    <div class="divTableCell">Practicals</div>
                    <div class="divTableCell"><i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i></div>
                </div>

                <div class="divTableRow">
                    <div class="divTableCell"><asp:Label ID="Label3" runat="server" Text="Tuesday"></asp:Label></div>
                    <div class="divTableCell">Computer Labs</div>
                    <div class="divTableCell">C programming</div>
                    <div class="divTableCell">Communications lab</div>
                    <div class="divTableCell">Practicals</div>
                    <div class="divTableCell">Telugu</div>
                    <div class="divTableCell">Maths</div>
                    <div class="divTableCell">English</div>
                    <div class="divTableCell">Scince</div>
                    
                    <div class="divTableCell"><i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i></div>
                </div>

                <div class="divTableRow">
                    <div class="divTableCell">English</div>
                    <div class="divTableCell">Scince</div>
                    <div class="divTableCell">Computer Labs</div>
                    <div class="divTableCell"><asp:Label ID="Label4" runat="server" Text="Wednesday"></asp:Label></div>
                    <div class="divTableCell">Telugu</div>
                    <div class="divTableCell">Maths</div>
                    
                    <div class="divTableCell">C programming</div>
                    <div class="divTableCell">Communications lab</div>
                    <div class="divTableCell">Practicals</div>
                    <div class="divTableCell"><i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i></div>
                </div>
            </div>
        </div>
    </asp:Panel>
</body>
</html>
