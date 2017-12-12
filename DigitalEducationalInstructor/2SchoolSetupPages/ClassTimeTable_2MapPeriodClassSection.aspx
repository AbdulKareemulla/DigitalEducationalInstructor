<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassTimeTable_2MapPeriodClassSection.aspx.cs" Inherits="DigitalEducationalInstructor._2SchoolSetupPages.ClassTimeTable_2MapPeriodClassSection" %>

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
            <asp:Panel ID="panelTimeTableDetails" GroupingText="Weekly Class Time Table" runat="server">
                <div class="divTable">
                    <div class="divTableBody">
                        <div class="divTableRow">
                            <div class="divTableCell"><asp:Label ID="lblWeek" Text="Week" runat="server" Font-Bold="true"></asp:Label></div>
                            <div class="divTableCell"><asp:Label ID="lblPeriod1" Text="09 Am-10 Am" runat="server" Font-Bold="true"></asp:Label></div>
                            <div class="divTableCell"><asp:Label ID="Label1" Text="09 Am-10 Am" runat="server" Font-Bold="true"></asp:Label></div>
                            <div class="divTableCell"><asp:Label ID="Label2" Text="10 Am-11 Am" runat="server" Font-Bold="true"></asp:Label></div>
                            <div class="divTableCell"><asp:Label ID="Label3" Text="11 Am-12 Pm" runat="server" Font-Bold="true"></asp:Label></div>
                            <div class="divTableCell"><asp:Label ID="Label4" Text="12 pm-01 pm" runat="server" Font-Bold="true"></asp:Label></div>
                            <div class="divTableCell"><asp:Label ID="Label5" Text="02 pm-03 pm" runat="server" Font-Bold="true"></asp:Label></div>
                            <div class="divTableCell"><asp:Label ID="Label6" Text="03 pm-04 pm" runat="server" Font-Bold="true"></asp:Label></div>
                            <div class="divTableCell"><asp:Label ID="Label7" Text="04 pm-05 pm" runat="server" Font-Bold="true"></asp:Label></div>
                        </div>

                        <div class="divTableRow" >
                            <div class="divTableCell">
                                <asp:Label ID="lblMonday" runat="server" Text="Monday"></asp:Label>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="lblMonday1" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox1" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox2" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox3" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox4" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox5" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox6" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox7" runat="server" Width="60%"></asp:textBox>
                            </div>
                        </div>
                        <div class="divTableRow" >
                            <div class="divTableCell">
                                <asp:Label ID="Label9" runat="server" Text="Tuesday"></asp:Label>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox16" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox17" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox18" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox19" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox20" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox21" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox22" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox23" runat="server" Width="60%"></asp:textBox>
                            </div>
                        </div>
                        <div class="divTableRow" >
                            <div class="divTableCell">
                                <asp:Label ID="Label10" runat="server" Text="Wednesday"></asp:Label>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox24" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox25" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox26" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox27" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox28" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox29" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox30" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox31" runat="server" Width="60%"></asp:textBox>
                            </div>
                        </div>
                        <div class="divTableRow" >
                            <div class="divTableCell">
                                <asp:Label ID="Label11" runat="server" Text="Thursday"></asp:Label>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox32" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox33" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox34" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox35" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox36" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox37" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox38" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox39" runat="server" Width="60%"></asp:textBox>
                            </div>
                        </div>
                        <div class="divTableRow" >
                            <div class="divTableCell">
                                <asp:Label ID="Label12" runat="server" Text="Friday"></asp:Label>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox40" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox41" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox42" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox43" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox44" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox45" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox46" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox47" runat="server" Width="60%"></asp:textBox>
                            </div>
                        </div>
                        <div class="divTableRow" >
                            <div class="divTableCell">
                                <asp:Label ID="Label8" runat="server" Text="Saterday"></asp:Label>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox8" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox9" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox10" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox11" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox12" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox13" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox14" runat="server" Width="60%"></asp:textBox>
                            </div>
                            <div class="divTableCell" >
                                <asp:textBox ID="TextBox15" runat="server" Width="60%"></asp:textBox>
                            </div>
                        </div>

                        <br />
                        <div class="divTableRow">
                            <div class="divTableCell">Select</div>
                            <div class="divTableCell">
                                <asp:DropDownList ID="selectedClass" runat="server">
                                    <asp:ListItem Text="-Class-"></asp:ListItem>
                                    <asp:ListItem Text="XII" Value="XII"></asp:ListItem>
                                    <asp:ListItem Text="XI" Value="XI"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            
                            <div class="divTableCell">
                                   <asp:DropDownList ID="selectedSections" runat="server">
                                    <asp:ListItem Text="-Section-"></asp:ListItem>
                                    <asp:ListItem Text="A" Value="A"></asp:ListItem>
                                    <asp:ListItem Text="B" Value="B"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="divTableCell"><asp:Button ID="btnSave" runat="server" Text="Save" /></div>
                            <div class="divTableCell"></div>
                            <div class="divTableCell"></div>
                            <div class="divTableCell"></div>
                            <div class="divTableCell"></div>
                            <div class="divTableCell"></div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div> 
    </form>
</body>
</html>
