<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdmimMaster.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="DigitalEducationalInstructor._8StudentPages.StudentRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div class="w3-panel">

            <div class="w3-row-padding" style="margin:0 -16px">

                <div class="w3-third">


                    <!--<h5>Regions</h5>

                    <img src="/w3images/region.jpg" style="width:100%" alt="Google Regional Map">-->

                </div>

                <div class="w3-twothird">


                    <h5><b>Student Registration Form</b></h5>


                     <asp:Table runat="server"  style="Width:100%">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:table runat="server">
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="firstName" runat="server" Text="First Name"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox runat="server" ID="fName"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="Label1" runat="server" Text="Last Name"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox runat="server" ID="lastName"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="Label2" runat="server" Text="Date Of Birth"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox ID="TxtDob" runat="server" Text='<%# Bind("DateofBirth") %>' TextMode="Date"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="Label3" runat="server" Text="Date Of Joining"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DateofBirth") %>' TextMode="Date"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            Select Gender
                                        </asp:TableCell>
                                        <asp:TableCell>
                                           <asp:RadioButton ID="rbtnMale" runat="server" GroupName="gender" Text="Male" />
                                        <asp:RadioButton ID="rtbnFemale" runat="server" GroupName="gender" Text="Female" /> 
                                        </asp:TableCell>
                                    </asp:TableRow>
                                     <asp:TableRow>
                                        <asp:TableCell>
                                            Previous Class %
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            Blood Group
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:DropDownList runat="server" ID="bloodGroup">
                                                <asp:ListItem Text="- Select -" Value=""/>
                                                <asp:ListItem Text="A+" Value="A+"/>
                                                <asp:ListItem Text="A-" Value="A-"/>
                                                <asp:ListItem Text="B+" Value="B+"/>
                                                <asp:ListItem Text="B-" Value="B-"/>
                                                <asp:ListItem Text="O+" Value="O+"/>
                                                <asp:ListItem Text="O-" Value="O-"/>
                                                <asp:ListItem Text="AB+" Value="AB+"/>
                                                <asp:ListItem Text="AB-" Value="AB-"/>
                                                </asp:DropDownList>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            Photo
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:FileUpload runat="server" ID="photo" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            Previous School 
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox ID="previousSchool" runat="server" ></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="Label8" runat="server" Text="Phone number"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox runat="server" ID="phno"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="Label9" runat="server" Text="Email id"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox runat="server" ID="email"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:table>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:table runat="server">
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="Label4" runat="server" Text="Father Qualification"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox runat="server" ID="fatherQualification"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="Label5" runat="server" Text="Mother Qualification"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox runat="server" ID="motherQualification"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="Label6" runat="server" Text="Notification Subscription"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:DropDownList runat="server" ID="subscriptionType">
                                                <asp:ListItem Text="- Select - " ></asp:ListItem>
                                                <asp:ListItem Text="SMS" Value="SMS"></asp:ListItem>
                                                <asp:ListItem Text="Whatsapp" Value="Whatsapp"></asp:ListItem>
                                                <asp:ListItem Text="E-Mail" Value="E-Mail"></asp:ListItem>
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            School Type
                                        </asp:TableCell>
                                        <asp:TableCell>
                                           <asp:RadioButton ID="dayScholor" runat="server" GroupName="schoolType" Text="Day Scholor" />
                                           <asp:RadioButton ID="hostel" runat="server" GroupName="schoolType" Text="Hostel" /> 
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="Label10" runat="server" Text="Father Name"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox ID="father" runat="server" ></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="Label11" runat="server" Text="Mother Name"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox ID="mother" runat="server" ></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="address" runat="server" Text="Present Address"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                           <asp:TextBox id="currentAddress" TextMode="multiline" Columns="15" Rows="2" runat="server" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                     <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label ID="Label16" runat="server" Text="Permanent Address"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                           <asp:TextBox id="permanentAddress" TextMode="multiline" Columns="15" Rows="2" runat="server" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label Text="Parent Phone no" runat="server"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                           <asp:TextBox ID="parentPhone" runat="server"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label runat="server" Text="Parent Email id"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox runat="server" ID="parentEmail"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label runat="server" Text="Parent Emergency concat"></asp:Label> 
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox ID="parentEmengency" runat="server" ></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table >
                    <br />
                    <asp:table runat="server" class="w3-table w3-stripped" style="Width:100%">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:table runat="server">
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="Label12" runat="server" Text="Tution Fee"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox runat="server" ID="tutionFee"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="Label13" runat="server" Text="Exam Fee"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox runat="server" ID="examFee"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="Label14" runat="server" Text="Other Fee"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox runat="server" ID="otherFee"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                        <asp:Label ID="Label15" runat="server" Text="Referrel Faculty"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:TextBox runat="server" ID="referrelFaculty"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:table>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:table runat="server">
                                                                        <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label runat="server" Text="Assigned Co-Ordinator"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:DropDownList runat="server" ID="DropDownList3">
                                                <asp:ListItem Text="- Select -" Value=""/>
                                                <asp:ListItem Text="Co-Ordinator-1" Value="A+"/>
                                                <asp:ListItem Text="Co-Ordinator-2" Value="A-"/>
                                                <asp:ListItem Text="Co-Ordinator-3" Value="B+"/>
                                                
                                                </asp:DropDownList>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                     <asp:TableRow>
                                        <asp:TableCell>
                                            Joining class
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:DropDownList runat="server" ID="joiningClass">
                                                <asp:ListItem Text="- Select -" Value=""/>
                                                <asp:ListItem Text="Class - I" Value="A+"/>
                                                <asp:ListItem Text="Class-2" Value="A-"/>
                                                <asp:ListItem Text="Class-3" Value="B+"/>
                                                </asp:DropDownList>
                                        </asp:TableCell>
                                    </asp:TableRow>
                           
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            Type of Medium
                                        </asp:TableCell>
                                        <asp:TableCell>
                                            <asp:DropDownList runat="server" ID="medium">
                                                <asp:ListItem Text="- Select -" Value=""/>
                                                <asp:ListItem Text="Urdu" Value="A+"/>
                                                <asp:ListItem Text="English" Value="A-"/>
                                                <asp:ListItem Text="Hindi" Value="B+"/>
                                                </asp:DropDownList>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                      <button class="w3-button w3-dark-grey">Save</button>
                                         </asp:TableCell>
                                    </asp:TableRow>
                                </asp:table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>

                </div>

            </div>

        </div>

        
</asp:Content>
