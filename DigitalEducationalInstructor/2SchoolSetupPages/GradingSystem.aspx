<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GradingSystem.aspx.cs" Inherits="DigitalEducationalInstructor._2SchoolSetupPages.GradingSystem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/font-awesome.css" rel="stylesheet" />
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

    <script runat="server">
        protected void btnCancel_Click(object sender, System.EventArgs e)
        {
            txtGradeNew.Visible = false;
            btnAddNew.Visible = true;
            btnCancel.Visible = false;
            txtGradeNew.Text = "";
            ddlGradeNameValue.Visible = true;

            ddlGradeNameValue.SelectedIndex = 0;
        }
        protected void btnAddNew_Click(object sender, System.EventArgs e)
        {
            txtGradeNew.Visible = true;
            btnAddNew.Visible = false;
            btnCancel.Visible = true;
            ddlGradeNameValue.Visible = false;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="divTable" style="width: 70%">
                <div class="divTableBody">
                    <div class="divTableRow">
                        <div class="divTableCell" style="width: 20%">
                            <asp:Label ID="lblGradeName" runat="server" Text="Grade:"></asp:Label>
                        </div>
                        <div class="divTableCell" style="width: 80%">

                            <asp:DropDownList ID="ddlGradeNameValue" runat="server">
                                <%--<asp:ListItem Text="Select Grade" Value="Unit Test 1"></asp:ListItem>
                                <asp:ListItem Text="A +" Value="Unit Test 1"></asp:ListItem>
                                <asp:ListItem Text="A" Value="Unit Test 2"></asp:ListItem>
                                <asp:ListItem Text="B +" Value="Pre Final"></asp:ListItem>
                                <asp:ListItem Text="B" Value="Semi Final"></asp:ListItem>--%>
                            </asp:DropDownList>
                            <asp:TextBox ID="txtGradeNew" runat="server" Visible="false" placeholder="Enter New Grade"></asp:TextBox>
                            <asp:Button ID="btnCancel" runat="server" ForeColor="" Text="X" ToolTip="Close" OnClick="btnCancel_Click" Font-Bold="false" Visible="false" />
                            <asp:Button ID="btnAddNew" runat="server" Font-Bold="false" ForeColor="" Text="+AddNew" OnClick="btnAddNew_Click" ToolTip="Add New Grade" />

                        </div>
                    </div>
                    <div class="divTableRow">
                        <div class="divTableCell">
                            <asp:Label ID="lblGradePercentage" runat="server" Text="Grade Percentage"></asp:Label>
                        </div>
                        <div class="divTableCell">

                            <asp:TextBox TextMode="Number" ID="txtGradePercentage" runat="server" min="0" max="100" step="1" placeholder="" ToolTip="numbers only" />
                            &nbsp;&nbsp;&nbsp;
                            
                        </div>
                    </div>

                    <div class="divTableRow">
                        <div class="divTableCell"></div>
                        <div class="divTableCell">
                            <asp:Button ID="btnSave" Text="Save" runat="server" OnClick="btnSave_Click" />
                        </div>
                    </div>

                </div>
            </div>

        </div>
        <br />
        <br />
        <br />
        <div class="divTable">
            <div class="divTableBody">
                <div class="divTableRow">
                    <asp:GridView ID="gridGrades" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        <Columns>
                            <asp:BoundField DataField="RecordId" HeaderText="RecordId" />
                            <asp:BoundField DataField="RecordId" HeaderText="RecordId" />
                            <asp:BoundField DataField="RecordId" HeaderText="RecordId" />
                            <asp:BoundField DataField="RecordId" HeaderText="RecordId" />
                            <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                                <ItemTemplate>

                                    <i id="btnEdit" runat="server" class="fa fa-edit"></i>


                                    <i id="btnDelete" runat="server" class="fa fa-trash-o"></i>



                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                </div>


            </div>
        </div>
    </form>
</body>
</html>
