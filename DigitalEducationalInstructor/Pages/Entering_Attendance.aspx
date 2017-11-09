<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdmimMaster.Master" AutoEventWireup="true" CodeBehind="Entering_Attendance.aspx.cs" Inherits="DigitalEducationalInstructor.Pages.Entering_Attendance" %>
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


                    <h5><b>Entering Attendance</b></h5>

                    <table class="w3-table w3-striped">

                        <tr>
                            <td><label>Class</label></td>
                            <td>
                                <select class="form-control">
                                    <option>--Select--</option>
                                    <option>Class 1</option>
                                    <option>Class 2</option>
                                    <option>Class 3</option>
                                    <option>Class 4</option>
                                    <option>Class 5</option>
                                    <option>Class 6</option>
                                    <option>Class 7</option>
                                    <option>Class 8</option>
                                    <option>Class 9</option>
                                    <option>Class 10</option>
                                </select>
                            </td>
                        </tr>
                        <tr>

                            <td><label>Section</label></td>

                            <td>
                                <select class="form-control">
                                    <option>--Select--</option>
                                    <option>Section A</option>
                                    <option>Section B</option>
                                </select>
                            </td>

                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button class="w3-button w3-dark-grey">Get Data</button>
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
                    <th>Roll number</th>
                    <th>Student Name</th>
                    <th>Status</th>
                </tr>
                <tr>
                    <td><div class="switch-title">1001</div></td>
                    <td><div class="switch-title">Student 1</div></td>
                    <td>
                        <div class="switch-field">
                            <input type="radio" id="switch_left1" name="switch_12" value="yes" />
                            <label for="switch_left1">Present</label>
                            <input type="radio" id="switch_right1" name="switch_12" value="no" />
                            <label for="switch_right1">Absent</label>
                        </div>

                    </td>

                </tr>

                <tr>
                    <td><div class="switch-title">1002</div></td>
                    <td><div class="switch-title">Student 2</div></td>
                    <td>
                        <div class="switch-field">

                            <input type="radio" id="switch_left" name="switch_2" value="yes" />
                            <label for="switch_left">Present</label>
                            <input type="radio" id="switch_right" name="switch_2" value="no" />
                            <label for="switch_right">Absent</label>
                        </div>
                    </td>
                </tr>

                <tr>
                    <td><div class="switch-title">1003</div></td>
                    <td><div class="switch-title">Student 3</div></td>
                    <td>
                        <div class="switch-field">

                            <input type="radio" id="switch_left91" name="switch_129" value="yes" />
                            <label for="switch_left91">Present</label>
                            <input type="radio" id="switch_right91" name="switch_129" value="no" />
                            <label for="switch_right91">Absent</label>
                        </div>
                    </td>
                </tr>

                <tr>
                    <td><div class="switch-title">1004</div></td>
                    <td><div class="switch-title">Student 4</div></td>
                    <td>
                        <div class="switch-field">

                            <input type="radio" id="switch_left10" name="switch_22" value="yes" />
                            <label for="switch_left10">Present</label>
                            <input type="radio" id="switch_right10" name="switch_22" value="no" />
                            <label for="switch_right10">Absent</label>
                        </div>
                    </td>
                </tr>

                <tr>
                    <td><div class="switch-title">1005</div></td>
                    <td><div class="switch-title">Student 5</div></td>
                    <td>
                        <div class="switch-field">

                            <input type="radio" id="switch_left3" name="switch_23" value="yes" />
                            <label for="switch_left3">Present</label>
                            <input type="radio" id="switch_right3" name="switch_23" value="no" />
                            <label for="switch_right3">Absent</label>
                        </div>
                    </td>
                </tr>

                <tr>
                    <td><div class="switch-title">1006</div></td>
                    <td><div class="switch-title">Student 6</div></td>
                    <td>
                        <div class="switch-field">

                            <input type="radio" id="switch_left4" name="switch_24" value="yes" />
                            <label for="switch_left4">Present</label>
                            <input type="radio" id="switch_right4" name="switch_24" value="no" />
                            <label for="switch_right4">Absent</label>
                        </div>
                    </td>
                </tr>

                <tr>
                    <td><div class="switch-title">1007</div></td>
                    <td><div class="switch-title">Student 7</div></td>
                    <td>
                        <div class="switch-field">

                            <input type="radio" id="switch_left5" name="switch_25" value="yes" />
                            <label for="switch_left5">Present</label>
                            <input type="radio" id="switch_right5" name="switch_25" value="no" />
                            <label for="switch_right5">Absent</label>
                        </div>
                    </td>
                </tr>

            </table>

            <table class="w3-table w3-striped">
                <tr>
                    <td>
                        <button class="w3-button w3-dark-grey">Submit Attandance</button>
                    </td>
                </tr>

            </table>

            <br>



        </div>













</asp:Content>
