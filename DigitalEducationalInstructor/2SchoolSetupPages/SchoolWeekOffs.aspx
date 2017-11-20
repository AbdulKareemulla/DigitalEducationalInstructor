<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdmimMaster.Master" AutoEventWireup="true" CodeBehind="SchoolWeekOffs.aspx.cs" Inherits="DigitalEducationalInstructor._2SchoolSetupPages.SchoolWeekOffs" %>
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

    
  <asp:Panel ID="panelSchool" GroupingText="School WeekOffs Details" runat="server">
      <div class="divTable">
          <div class="divTableBody">
              <div class="divTableRow">
                  <div class="divTableCell">
                      <asp:CheckBox ID="Monday" runat="server" Text="Monday" />
                  </div>
                  <div class="divTableCell">
                      <asp:CheckBox ID="Tuesday" runat="server" Text="Tuesday" />
                  </div>
                  <div class="divTableCell">
                      <asp:CheckBox ID="Wednesday" runat="server" Text="Wednesday" />
                  </div>
                  <div class="divTableCell">
                      <asp:CheckBox ID="Thursday" runat="server" Text="Thursday" />
                  </div>
                  <div class="divTableCell">
                      <asp:CheckBox ID="Friday" runat="server" Text="Friday " />
                  </div>
              </div>
              <div class="divTableRow">
                  <div class="divTableCell">
                      <asp:CheckBox ID="Saturday" runat="server" Text="Saturday" />
                  </div>
                  <div class="divTableCell">
                      <asp:CheckBox ID="Sunday" runat="server" Checked="true" Text="Sunday" />
                  </div>
                  <div class="divTableCell">
                      <asp:CheckBox ID="secondndSaturday" runat="server" Text="2nd Saturday" />
                  </div>
                  <div class="divTableCell">
                      <asp:CheckBox ID="fourthSaturday" runat="server" Text="4th Saturday" />
                  </div>
                  <div class="divTableCell">
                     
                  </div>
              </div>

              <div class="divTableRow">
                  <div class="divTableCell"></div>
              </div>
              <div class="divTableRow">
                  <div class="divTableCell">
                      <asp:Label ID="Commentss" Text="Comments" runat="server"></asp:Label>
                  </div>
                  <div class="divTableCell">
                      <textarea spellcheck="true" id="comments" runat="server"></textarea>
                  </div>
                  <div class="divTableCell">
                      <asp:Button ID="saveWeekoffs" Text="Save" runat="server"/>
                       <asp:Button ID="editWeekoffs" Text="Edit" runat="server"/>
                  </div>
                  
                  <div class="divTableCell">
                      
                  </div>
                  <div class="divTableCell">
                     
                  </div>
              </div>
          </div>
      </div>
  </asp:Panel>




</asp:Content>
