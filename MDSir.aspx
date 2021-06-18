<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MDSir.aspx.cs" Inherits="Task.MDSir" EnableEventValidation="false"%>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


      <script type = "text/javascript" >
     function preventBack() { window.history.forward(); }
     setTimeout("preventBack()", 0);
     window.onunload = function () { null };
     </script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        #login-name {
            font-size: 30px;
            font-family: arabic typesetting;
            /*border-bottom-style: ridge*/;
            color: forestgreen;
            /*background-color:rgba(13,13,13,0.2);*/
            /*min-height:500px;
padding: 40px 80px 40px 80px;*/
            box-shadow: -20px -20px 8px red;
        }

        #login {
            background-color: rgba(13,13,13,0.2);
            min-height: 500px;
            padding: 40px 80px 40px 80px;
            box-shadow: 5px 5px 9px #33cc33;
        }

        #lblusername {
            text-align: right;
            color: black;
            margin-right: 4%;
        }

        .txtbox {
            box-shadow: 5px 5px 9px #990000;
        }

        #login-name0 {
            font-size: 30px;
            font-family: arabic typesetting;
            /*border-bottom-style: ridge*/;
            color: forestgreen;
            /*background-color:rgba(13,13,13,0.2);*/
            /*min-height:500px;
padding: 40px 80px 40px 80px;*/
            box-shadow: -10px -10px 9px #33cc33;
        }

        #footer {
            clear: both;
            /*width: auto;*/
            /*height: 30px;
    padding: 10px;*/
            /*border: 3px solid #E3E3E3;*/
            text-align: center;
            color: brown;
            /*text-shadow: 0.1em 0.1em #333;*/
            background-image: url(../Images/bar_background.png);
        }


        .boxshadow
        {
        
   -moz-box-shadow:    inset 0 0 10px #33cc33;
   -webkit-box-shadow: inset 0 0 10px #33cc33;
   box-shadow:         inset 0 0 10px #33cc33;

        }

      .table
      {
          height:100%;
          width:100%;
      }
      
        </style>
</head>

<body background="2277.jpg">
    <form id="f1" runat="server">

        <div>
        </div>


            <div id="Header" class="table" >
                    <asp:Button ID="Button12" class="btn btn-primary btn-lg btn-block"  runat="server"  Height="75%" Text="Daily Task Review"   width="100%" /> 

                    <table style="width:100%">
       
                        <tr>
                       
                              <td >

                     </td><td>
                                  &nbsp;</td><td>
                                &nbsp;</td><td>
                           <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Small" ForeColor="#CC3300" NavigateUrl="~/Login_MD.aspx">Logout</asp:HyperLink>
                              </td>
                        </tr>
                   <tr >
                       <td style="width:25%">
                         
          
                         
                         <asp:Button ID="Button1" class="btn btn-primary btn-lg btn-block"  runat="server" Height="75%" OnClick="Button1_Click" Text="Departmental Tasks"  width="75%"/>
                           <br />
                       </td>

                       <td style="width:25%"> <asp:Button ID="Button11" class="btn btn-primary btn-lg btn-block"  runat="server"  Height="75%" Text="Assign Task to Emp"  OnClick="Button11_Click"  width="75%" /> 
                           <br />
                       </td>

                   <td style="width:25%">    <asp:Button ID="Button10"  class="btn btn-primary btn-lg btn-block"  runat="server"  Height="75%"  OnClick="monthdairy_Click" Text="Monthly Dairy"  width="75%" /> 
                       <br />
                       </td>



                       <td style="width:25%">
                       <asp:Button ID="Button9" class="btn btn-primary btn-lg btn-block"  runat="server"   Height="75%" OnClick="Dept_Click" Text="Departmental Files"   width="75%"/>
                           <br />
                       </td>


                        </tr>
                       <tr>
                           <td style="width:25%">
                       <asp:Button ID="Button4" class="btn btn-primary btn-lg btn-block"  runat="server"  Height="75%" OnClick="Request_Click" Text="Grievance"  width="75%"/></td>
                      <td style="width:25%">
                     
                         
                          <asp:Button ID="Button6" class="btn btn-primary btn-lg btn-block"  runat="server"   Height="75%" OnClick="Ethical_Click" Text="Ethical Assessment "   width="75%"/>
       
                         
                           </td>
                       <td style="width:25%"> <asp:Button ID="Button5" class="btn btn-primary btn-lg btn-block"  runat="server"   Height="75%"  OnClick="meeting_Click" Text="Meeting Details"   width="75%"/></td>
                 
                          <td style="width:25%"> <asp:Button ID="btnabgc" class="btn btn-primary btn-lg btn-block"  runat="server"  Height="75%" OnClick="ABGC_Click" Text="Evaluation"  width="75%"/></td>
                    
                 <%--    <td><asp:Button ID="Button5"class="btn btn-primary btn-lg btn-block"  runat="server"   Height="100px" OnClick="meeting_Click"  Text="Meeting Details"  /></td>--%>
                      <td>&nbsp;</td>
                       <td>
                         </td>
                    
                    
                   </tr>
                    </table>

                </form>
</body>
</html>



