<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdmimMaster.Master" AutoEventWireup="true" CodeBehind="HolidayLists.aspx.cs" Inherits="DigitalEducationalInstructor.1CommonPages.HolidayLists" %>
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

    
  <asp:Panel ID="panelSchool" GroupingText="School Holiday Lists" runat="server">
      <div class="divTable">
          <div class="divTableBody">
              <div class="divTableRow">
                  <div class="divTableCell">
                      <asp:Label runat="server" Text="Starting date"></asp:Label>
                  </div>
                  <div class="divTableCell">
                      <asp:TextBox ID="startingDate" runat="server" Text='<%# Bind("DateofBirth") %>' TextMode="Date"></asp:TextBox>
                  </div>

                  <div class="divTableCell">
                      <asp:Label runat="server" Text="Ending date"></asp:Label>
                  </div>
                  <div class="divTableCell">
                      <asp:TextBox ID="endingDate" runat="server" Text='<%# Bind("DateofBirth") %>' TextMode="Date"></asp:TextBox>
                  </div>
              </div>
              <div class="divTableRow">
                  <div class="divTableCell">
                      <asp:Label ID="reasonLable" runat="server" Text="Reason"></asp:Label>
                  </div>
                  <div class="divTableCell">
                      <textarea runat="server" id="reason"></textarea>
                  </div>
                  <div class="divTableCell">
                      <asp:Button runat="server" ID="saveHolidays" text="Save"/>
                  </div>
                  <div class="divTableCell"></div>
              </div>
          </div>
      </div>
  </asp:Panel>
    <br />

<asp:Panel ID="panel1" GroupingText="School Holiday Lists" runat="server" >
    <div class="divTable" >
        <div class="divTableBody">
            <div class="divTableRow">
                <div class="divTableCell">
                    <asp:Label ID="SnoLabel" Text="S.No" runat="server" Font-Bold="true"></asp:Label>
                </div>
                <div class="divTableCell">
                    <asp:Label ID="Label1" Text="Reason" runat="server" Font-Bold="true"></asp:Label>
                </div>
                <div class="divTableCell">
                    <asp:Label ID="Label2" Text="Start Day" runat="server" Font-Bold="true"></asp:Label>
                </div>
                <div class="divTableCell">
                    <asp:Label ID="Label3" Text="End Day" runat="server" Font-Bold="true"></asp:Label>
                </div>
                <div class="divTableCell">
                    <asp:Label ID="Label4" Text="No Of days" runat="server" Font-Bold="true"></asp:Label>
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
                    Pongal Holidays
                </div>
                <div class="divTableCell">
                   11-Jan-2018
                </div>
                <div class="divTableCell">
                     18-Jan-2018
                </div>
                <div class="divTableCell">
                    8
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
