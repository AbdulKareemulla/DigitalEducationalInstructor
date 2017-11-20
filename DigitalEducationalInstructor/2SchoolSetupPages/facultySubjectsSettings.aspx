<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdmimMaster.Master" AutoEventWireup="true" CodeBehind="facultySubjectsSettings.aspx.cs" Inherits="DigitalEducationalInstructor._2SchoolSetupPages.Medium" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
      $(function () {

          //$('#h_v').val();

    var availableTags = [
      "ActionScript",
      "AppleScript",
      "Asp",
      "BASIC",
      "C",
      "C++",
      "Clojure",
      "COBOL",
      "ColdFusion",
      "Erlang",
      "Fortran",
      "Groovy",
      "Haskell",
      "Java",
      "JavaScript",
      "Lisp",
      "Perl",
      "PHP",
      "Python",
      "Ruby",
      "Scala",
      "Scheme"
    ];
    $( "#tags" ).autocomplete({
      source: availableTags
    });
  } );
  </script>
   
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





</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
  <asp:Panel ID="panelSchool" GroupingText="Faculty Subjects Settings" runat="server">
      <div class="divTable">
          <div class="divTableBody">
              <div class="divTableRow">
               <div class="divTableCell">
                <asp:Label runat="server" Text="Select Faculty"></asp:Label>      
                  </div>
                  <div class="divTableCell">
                      <asp:Label runat="server" Text="Class"></asp:Label>
                      <asp:DropDownList runat="server" ID="class">
                          <asp:ListItem Text="Class 1" Value="Class 2" ></asp:ListItem>
                          <asp:ListItem Text="Class 2" Value="Class 2" ></asp:ListItem>
                      </asp:DropDownList>
                  </div>


                  <div class="divTableCell">
                      <asp:Label runat="server" Text="Section"></asp:Label>
                       <asp:DropDownList runat="server" ID="section">
                          <asp:ListItem Text="Section 1" Value="Section 1" ></asp:ListItem>
                          <asp:ListItem Text="Section 1" Value="Section 1" ></asp:ListItem>
                      </asp:DropDownList>
                  </div>
                  

                  <div class="divTableCell">
                      <asp:Label runat="server" Text="Faculty"></asp:Label>
                   <asp:DropDownList runat="server" ID="faculty">
                          <asp:ListItem Text="Faculty 1" Value="Faculty 1" ></asp:ListItem>
                          <asp:ListItem Text="Faculty 1" Value="Faculty 1" ></asp:ListItem>
                      </asp:DropDownList>
                  </div>
                  
                  <div class="divTableCell"></div>
                  <div class="divTableCell"></div>
              </div>
        <div class="divTableRow">
            <div class="divTableCell"></div>
        </div>
              <div class="divTableRow">
                  <div class="divTableCell">
                      <asp:Label ID="reasonLable" runat="server" Text="Map Subjects"></asp:Label>
                  </div>
                  <div class="divTableCell">
                      <asp:CheckBox id="subject1" runat="server" Text="Telugu"/>
                  </div>
                  <div class="divTableCell"> 
                      <asp:CheckBox id="CheckBox1" runat="server" Text="Hindi"/>
                  </div>
                  <div class="divTableCell"> 
                      <asp:CheckBox id="CheckBox2" runat="server" Text="Urdu"/>
                  </div>
           
              </div>

              <div class="divTableRow">
                  <div class="divTableCell">
                      <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                  </div>
                  <div class="divTableCell">
                      <asp:CheckBox id="CheckBox4" runat="server" Text="English Lab"/>
                  </div>
                  <div class="divTableCell"> 
                      <asp:CheckBox id="CheckBox5" runat="server" Text="Physics labs"/>
                  </div>
                  <div class="divTableCell"> 
                      <asp:CheckBox id="CheckBox6" runat="server" Text="Chemistry lab"/>
                  </div>

              </div>

              <div class="divTableRow">
                  <div class="divTableCell"></div>
                  <div class="divTableCell">
                      <asp:Button ID="save" Text="save" runat="server" />
                  </div>
                  
                  <div class="divTableCell"></div>
                  <div class="divTableCell"></div>

              </div>
          </div>
      </div>
  </asp:Panel>
    <br /><br />

<asp:Panel ID="panel1" GroupingText="Faculty Subjects Details" runat="server" >
    <div class="divTable" >
        <div class="divTableBody">
            <div class="divTableRow">
                <div class="divTableCell">
                    <asp:Label ID="SnoLabel" Text="S.No" runat="server" Font-Bold="true"></asp:Label>
                </div>
                <div class="divTableCell">
                    <asp:Label ID="Label1" Text="Class" runat="server" Font-Bold="true"></asp:Label>
                </div>
                <div class="divTableCell">
                    <asp:Label ID="Label2" Text="Section" runat="server" Font-Bold="true"></asp:Label>
                </div>
                <div class="divTableCell">
                    <asp:Label ID="Label3" Text="Faculty" runat="server" Font-Bold="true"></asp:Label>
                </div>
                <div class="divTableCell">
                    <asp:Label ID="Label4" Text="Subjects" runat="server" Font-Bold="true"></asp:Label>
                </div>
                <div class="divTableCell">
                    <asp:Label ID="Label5" Text="Operation" runat="server" Font-Bold="true"></asp:Label>
                </div>
            </div>

            <div class="divTableRow">
                <div class="divTableCell">
                    1
                </div>
                <div class="divTableCell">
                    Class XII
                </div>
                <div class="divTableCell">
                   Section - II
                </div>
                <div class="divTableCell">
                     Hanif Shaik
                </div>
                <div class="divTableCell">
                    Urdu, English Labs
                </div>
                <div class="divTableCell">
                     &nbsp <i class="fa fa-trash" aria-hidden="true"></i> &nbsp &nbsp <i class="fa fa-pencil" aria-hidden="true"></i>
                </div>
            </div>
        </div>
    </div>
</asp:Panel>

    Note - Operation and edition should be disabled to end user
</asp:Content>
