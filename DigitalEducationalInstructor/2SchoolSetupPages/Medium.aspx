<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdmimMaster.Master" AutoEventWireup="true" CodeBehind="Medium.aspx.cs" Inherits="DigitalEducationalInstructor._2SchoolSetupPages.Medium" %>
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





</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <div class="w3-panel">

            <div class="w3-row-padding" style="margin:0 -16px">

                <div class="w3-third">


                    <!--<h5>Regions</h5>

                    <img src="/w3images/region.jpg" style="width:100%" alt="Google Regional Map">-->

                </div>

                <div class="w3-twothird">


                    <h5><b>Manage Medium</b></h5>

              






                    <table class="w3-table w3-striped">

                        <tr>
                            <td><label>Medium Name</label></td>
                            <td>
                                <input id="tags" class="form-control" type="text"/>
                            </td>
                        </tr>
                        <tr>

                            <td><label>Medium Description</label></td>

                            <td>
                                <textarea class="form-controlarea">

                                </textarea>
                            </td>

                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button class="w3-button w3-dark-grey">Save</button>
                            </td>
                        </tr>

                    </table>
                

                </div>

            </div>

        </div>


















        <div class="w3-container">



            <h5>Student Details</h5>

            <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
                <tr>
                    <th>Medium Name</th>
                    <th>Description</th>
                    <th>Operations</th>
                </tr>
                <tr>
                    <td><div class="switch-title">Telugu</div></td>
                    <td><div class="switch-title">Description Description Description</div></td>
                   <td> &nbsp &nbsp &nbsp &nbsp &nbsp <i class="fa fa-trash" aria-hidden="true"></i> &nbsp &nbsp &nbsp &nbsp &nbsp <i class="fa fa-pencil" aria-hidden="true"></i></td> 
                </tr>

               <tr>
                    <td><div class="switch-title">Telugu</div></td>
                    <td><div class="switch-title">Description Description Description</div></td>
                   <td> &nbsp &nbsp &nbsp &nbsp &nbsp <i class="fa fa-trash" aria-hidden="true"></i> &nbsp &nbsp &nbsp &nbsp &nbsp <i class="fa fa-pencil" aria-hidden="true"></i></td> 
                </tr>

                <tr>
                    <td><div class="switch-title">Telugu</div></td>
                    <td><div class="switch-title">Description Description Description</div></td>
                   <td> &nbsp &nbsp &nbsp &nbsp &nbsp <i class="fa fa-trash" aria-hidden="true"></i> &nbsp &nbsp &nbsp &nbsp &nbsp <i class="fa fa-pencil" aria-hidden="true"></i></td> 
                </tr>


            </table>

        </div>


</asp:Content>
