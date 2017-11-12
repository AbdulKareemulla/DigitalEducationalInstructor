﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SchoolRegistration.aspx.cs" Inherits="DigitalEducationalInstructor._2SchoolSetupPages.SchoolRegistration" %>

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

        <div class="divTable">
            <div class="divTableBody">
                <div class="divTableRow" style="width: 100%">
                    <div class="divTableCell" style="width: 50%">
                        <asp:Panel ID="panelSchool" GroupingText="Institution Details" runat="server">

                            <div class="divTable">
                                <div class="divTableBody">
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblInstName" runat="server" Text="Institute Name"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:TextBox ID="txtInstName" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblInstCode" runat="server" Text="Institute Code"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:TextBox ID="txtInstCode" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblInstType" runat="server" Text="Institute Type"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlInstType" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblAffilUniversity" runat="server" Text="Affiliated University"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlAffilUniversity" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblSector" runat="server" Text="Institute Sector"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:RadioButtonList ID="radioSector" runat="server">
                                                <asp:ListItem Text="Private" Value="pvt" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="Private" Value="govt"></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblStdRange" runat="server" Text="Students Capacity"></asp:Label>
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
                        <asp:Panel ID="panelAddress" runat="server" GroupingText="Institution Address">
                            <div class="divTable">
                                <div class="divTableBody">
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlCountry" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlState" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblDistrict" runat="server" Text="District"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlDistrict" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlCity" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblPinCode" runat="server" Text="PinCode"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlPincode" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblAddress1" runat="server" Text="Address1"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlAddress1" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblAddress2" runat="server" Text="Address2"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlAddress2" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <asp:Label ID="lblLandMark" runat="server" Text="LandMark"></asp:Label>
                                        </div>
                                        <div class="divTableCell">
                                            <asp:DropDownList ID="ddlLandmark" runat="server"></asp:DropDownList>
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
                        <asp:Panel ID="panelContactDetails" runat="server" GroupingText="Contact Details">
                            <div class="divTable">
                                <div class="divTableBody">
                                    <div class="divTableRow">
                                        <div class="divTableCell">
                                            <div class="divTable">
                                                <div class="divTableBody">
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblInstEmail" runat="server" Text="Institution Email Id"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:TextBox ID="txtInstEmailId" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblInstPhNo" runat="server" Text="Institution Phone No"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:TextBox ID="txtInstPhNo" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblInstAlternateNo" runat="server" Text="Alternate Ph.No"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:TextBox ID="txtAlternatePhNo" runat="server"></asp:TextBox>
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
                                                            <asp:Label ID="lblVontactPersonName" runat="server" Text="Contact Person"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:TextBox ID="txtContactPerson" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblPhNo" runat="server" Text="Ph.No"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:TextBox ID="txtPhNo" runat="server"></asp:TextBox>
                                                            <asp:Button ID="btnReSendOTP" runat="server" Text="Re-Send" />
                                                        </div>
                                                    </div>
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblOtp" runat="server" Text="OTP"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:TextBox ID="txtOTP" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblHowToReach" runat="server" Text="How can we reach you?"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:DropDownList ID="ddlHowToReach" runat="server"></asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="divTableRow">
                                                        <div class="divTableCell">
                                                            <asp:Label ID="lblDemoRequired" runat="server" Text="Would you like to have a Demo?"></asp:Label>
                                                        </div>
                                                        <div class="divTableCell">
                                                            <asp:RadioButtonList ID="radioDemoRequired" runat="server">
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
                    <div class="divTableCell" style="text-align:end">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                    </div>
                    <div class="divTableCell" style="text-align:start">
                        <asp:Button ID="btnClear" runat="server" Text="Clear" />
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
    </form>
</body>
</html>