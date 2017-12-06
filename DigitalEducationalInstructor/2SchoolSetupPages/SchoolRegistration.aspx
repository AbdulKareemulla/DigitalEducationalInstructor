<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SchoolRegistration.aspx.cs" Inherits="DigitalEducationalInstructor._2SchoolSetupPages.SchoolRegistration" %>--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdmimMaster.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="SchoolRegistration.aspx.cs" Inherits="DigitalEducationalInstructor._2SchoolSetupPages.SchoolRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>

    <script src="../1CommonPages/JS/CommonValidationJS.js"></script>

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
    <script src="../js/jquery-1.12.4.js"></script>
    <script src="../js/jquery-ui.js"></script>
    <link href="../CSS/jquery-ui.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html xmlns="http://www.w3.org/1999/xhtml">

    <body>
        <%--<form id="form1" runat="server">--%>

        <div class="divTable">
            <div class="divTableBody">
                <div class="divTableRow" style="width: 100%">
                    <div class="divTableCell" style="width: 50%">
                        <asp:Panel ID="panelSchool" GroupingText="Institution Details" runat="server" Font-Bold="True">

                            <div class="divTable">
                                <div class="divTableBody">
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblInstName" runat="server" Text="Institute Name" Font-Bold="False"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:TextBox ID="txtInstName" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblInstCode" runat="server" Text="Institute Code" Font-Bold="False"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:TextBox ID="txtInstCode" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblInstType" runat="server" Text="Institute Type" Font-Bold="False"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlInstType" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblAffilUniversity" runat="server" Text="Affiliated University" Font-Bold="False"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlAffilUniversity" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblSector" runat="server" Text="Institute Sector Type" Font-Bold="False"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:RadioButtonList ID="radioSector" runat="server" Font-Bold="False">
                                                <asp:ListItem Text="Private" Value="pvt" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="Government" Value="govt"></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblStdRange" runat="server" Text="Students Capacity" Font-Bold="False"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlStudentRange" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </asp:Panel>
                    </div>
                    <div class="divTableCell" style="width: 50%">
                        <asp:Panel ID="panelAddress" runat="server" GroupingText="Institution Address" Font-Bold="True">
                            <div class="divTable">
                                <div class="divTableBody">
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblCountry" runat="server" Text="Country" Font-Bold="False"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblState" runat="server" Text="State" Font-Bold="False"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblDistrict" runat="server" Text="District" Font-Bold="False"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlDistrict" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblCity" runat="server" Text="City" Font-Bold="False"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblPinCode" runat="server" Text="PinCode" Font-Bold="False"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:TextBox ID="txtPincode" MaxLength="10" runat="server" onkeypress="return numeric(event);"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblAddress1" runat="server" Text="Address1" Font-Bold="False"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblAddress2" runat="server" Text="Address2" Font-Bold="False"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblLandMark" runat="server" Text="LandMark" Font-Bold="False"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:TextBox ID="txtLandMark" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </div>


            </div>
        </div>
        <div class="divTable">
            <div class="divTableBody">
                <div class="divTableRow" style="width: 100%">
                    <div class="divTableCell">
                        <asp:Panel ID="panelContactDetails" runat="server" GroupingText="Contact Details" Font-Bold="True">
                            <div class="divTable">
                                <div class="divTableBody">
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <div class="divTable">
                                                <div class="divTableBody">
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblInstEmail" runat="server" Text="Institution Email Id" Font-Bold="False"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:TextBox ID="txtInstEmailId" runat="server" onfocusout="ValidateEmail(this.value)"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblInstPhNo" runat="server" Text="Institution Phone No" Font-Bold="False"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:TextBox ID="txtInstPhNo" runat="server" MaxLength="12" onkeypress="return numeric(event);"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblInstAlternateNo" runat="server" Text="Alternate Ph.No" Font-Bold="False"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:TextBox ID="txtAlternatePhNo" MaxLength="12" onkeypress="return numeric(event);" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="divTableCell">
                                            <div class="divTable">
                                                <div class="divTableBody">
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblVontactPersonName" runat="server" Text="Contact Person" Font-Bold="False"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:TextBox ID="txtContactPerson" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblPhNo" runat="server" Text="Ph.No" Font-Bold="False"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:TextBox ID="txtPhNo" MaxLength="12" onkeypress="return numeric(event);" runat="server"></asp:TextBox>
                                                            <asp:Button ID="btnReSendOTP" runat="server" Text="Re-Send" />
                                                        </div>
                                                    </div>
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblOtp" runat="server" Text="OTP" Font-Bold="False"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:TextBox ID="txtOTP" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblHowToReach" runat="server" Text="How can we reach you?" Font-Bold="False"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:DropDownList ID="ddlHowToReach" runat="server">
                                                                <asp:ListItem Text="Meet Directly" Value="Direct"></asp:ListItem>
                                                                <asp:ListItem Text="Through PhoneCall" Value="Phone"></asp:ListItem>
                                                                <asp:ListItem Text="Through Email" Value="Email"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblDemoRequired" runat="server" Text="Would you like to have a Demo?" Font-Bold="False"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:RadioButtonList ID="radioDemoRequired" runat="server" Font-Bold="False">
                                                                <asp:ListItem Text="Yes" Value="1" Selected="True"></asp:ListItem>
                                                                <asp:ListItem Text="No" Value="0"></asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </asp:Panel>
                    </div>

                </div>

            </div>
        </div>
        <div class="divTable">
            <div class="divTableBody">
                <div class="divTableRow" style="width: 100%">
                    <div class="divTableCell" style="text-align: end">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </div>
                    <div class="divTableCell" style="text-align: start">
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                    </div>
                </div>
            </div>
        </div>
        <%--<div class="w3-panel">

            <div class="w3-row-padding" style="margin: 0 -16px">

                <div class="w3-third">
                </div>

                <div class="w3-twothird">


                    <h5><b>School Registration</b></h5>
                    <table class="w3-table w3-striped">

                        <tr>
                            <td>
                                <label>School Name</label></td>
                            <td>
                                <asp:TextBox ID="txtSchoolName" runat="server" class="form-control" placeholder="Enter School Name" disabled="disabled"></asp:TextBox>

                            </td>

                        </tr>

                        <tr>

                            <td>
                                <label>Institute Name</label></td>
                            <td>
                                <asp:TextBox ID="txtInstituteName" runat="server" class="form-control" placeholder="Enter Institute Name"></asp:TextBox>

                            </td>

                        </tr>

                        <tr>
                            <td>
                                <label>Type Of Institute</label></td>
                            <td>
                                
                                <select class="form-control">
                                    <option>School</option>
                                    <option>Junior College</option>
                                    <option>General Degree</option>
                                    <option>Engineering</option>
                                    <option>Medical</option>
                                </select>
                            </td>

                        </tr>

                        <tr>

                            <td>
                                <label>Institute Code</label></td>
                            <td>
                                <input class="form-control" type="text" placeholder="Institute Code" />
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <label>Country</label></td>
                            <td>
                                <select class="form-control">
                                    <option>India</option>
                                    <option>America</option>
                                    <option>Australia</option>
                                    <option>England</option>
                                    <option>South Africa</option>
                                </select>
                            </td>

                        </tr>

                        <tr>

                            <td>
                                <label>State</label></td>
                            <td>
                                <select class="form-control">
                                    <option>Andhra Pradesh </option>
                                    <option>Telangana </option>
                                    <option>Madhya Pradesh </option>
                                    <option>Tamil Nadu </option>
                                    <option></option>
                                </select>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <label>District</label></td>
                            <td>
                                <select class="form-control">
                                    <option>Krishna </option>
                                    <option>Vizag </option>
                                    <option>West Godavari </option>
                                    <option>Nalagonda </option>
                                    <option>Nellore </option>
                                </select>
                            </td>

                        </tr>

                        <tr>

                            <td>
                                <label>City</label></td>
                            <td>
                                <select class="form-control">
                                    <option>Vijayawada </option>
                                    <option>Ganavaram </option>
                                    <option>Kondapalli </option>
                                    <option>Machilipatnam </option>
                                    <option>Nandigama </option>
                                </select>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <label>Address1</label></td>
                            <td>
                                <textarea class="form-controlarea" rows="4"></textarea>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <label>Address2</label></td>
                            <td>
                                <textarea class="form-controlarea" rows="4"></textarea>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <label>Pin Code</label></td>
                            <td>
                                <input class="form-control" type="text" placeholder="Pin Code" />
                            </td>

                        </tr>

                        <tr>

                            <td>
                                <label>Sector</label></td>
                            <td>
                                <div class="switch-field">

                                    <input type="radio" id="switch_left3" name="switch_23" value="yes" />
                                    <label for="switch_left3">Govt</label>
                                    <input type="radio" id="switch_right3" name="switch_23" value="no" />
                                    <label for="switch_right3">Privt</label>
                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <label>Institute Phone</label></td>
                            <td>
                                <input class="form-control" type="text" placeholder="Institute Phone" />
                            </td>

                        </tr>

                        <tr>

                            <td>
                                <label>Alternative Phone</label></td>
                            <td>
                                <input class="form-control" type="text" placeholder="Alternative Phone" />
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <label>Email Id</label></td>
                            <td>
                                <input class="form-control" type="text" placeholder="Email Id" />
                            </td>

                        </tr>

                        <tr>

                            <td>
                                <label>OTP</label></td>
                            <td>
                                <input class="form-control" type="text" placeholder="OTP" />
                            </td>

                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button class="w3-button w3-dark-grey">Submit</button></td>
                        </tr>

                    </table>
                    <table class="w3-table w3-striped ">
                    </table>

                </div>

            </div>

        </div>--%>
        <%-- </form>--%>
    </body>
    </html>

</asp:Content>
