<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassTimeTable_1PeriodCreation.aspx.cs" Inherits="DigitalEducationalInstructor._2SchoolSetupPages.ClassTimeTable_1PeriodCreation" %>

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
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" >
        
     </script>
    
</head>

<body>
    
     
    <script>  
        $(document).ready(function () {
            var count = 2;
            $("#Add").on("click", function () {
                $("#textboxDiv").append("<div class=\"divTableRow\"><div class=\"divTableCell\" >Period " + count + "</div> <div class=\"divTableCell\"><input type=\"text\" id=\"StartingTime" + count + "\" required=\"required\" /></div> <div class=\"divTableCell\"><input type=\"text\" id=\"EndingTime" + count + "\"  required=\"required\" /></div> </div>");
                count++;
            });
            $("#Remove").on("click", function () {
                $("#textboxDiv").children().last().remove();
                if (count > 2) {
                    count--;
                }
            });
        });
    </script>  
    
    <form id="form1" runat="server">
        <asp:Panel ID="panelTimeTable" runat="server" GroupingText="Enter Time Table Details">
            <div  class="divTable" runat="server">
            <div class="divTableRow">
                <div class="divTableCell" >
                    <asp:Label ID="lblPeriod" runat="server" Text="Period" Font-Bold="true"></asp:Label>
                </div>
                <div class="divTableCell" >
                    <asp:Label ID="Label1" runat="server" Text="Starting Time" Font-Bold="true"></asp:Label>
                </div>
                <div class="divTableCell" >
                    <asp:Label ID="Label2" runat="server" Text="Ending Time" Font-Bold="true"></asp:Label>
                </div>
                
            </div>
            <div class="divTableRow">
                <div class="divTableCell">Period 1</div>
                <div class="divTableCell"><input type="text" id="StartingTime1" required="required"/></div>
                <div class="divTableCell"><input type="text" id="EndingTime1" required="required"/></div>
                
            </div>   
            <div id="textboxDiv" class="divTableBody">

            </div>
            <div class="divTableRow">
                <div class="divTableCell"></div>
                <div class="divTableCell">
                    <button id="Save">Save</button> <button id="Add">Add</button> <button id="Remove">Remove</button>  
                </div>
                <div class="divTableCell"></div>
            </div>
        </div>
        </asp:Panel>
    <div id="textboxDiv2"></div> 
        
    </form>
    
        
    
</body>
</html>