<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Evalution.aspx.cs" Inherits="Task.Evalution" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    
             <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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

       .login {
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

        .auto-style2 {
            color: #990000;
        }
        </style>
</head>

<body background="2277.jpg">
    <form id="f1" runat="server">

        <div>
        </div>
        <div id="Header" >
            <center class="auto-style2"> 
                 
                    <asp:Button ID="Button12" class="btn btn-primary btn-lg btn-block"  runat="server"  Height="75%" Text="Evalution"   width="100%" /> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="#284E98" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#B5C7DE" />
                        <DynamicSelectedStyle BackColor="#507CD1" />
                        <Items>
                             <asp:MenuItem NavigateUrl="~/MDSir.aspx" Text="Home" Value="New Item"></asp:MenuItem>
                              <asp:MenuItem NavigateUrl="~/Evalution.aspx" Text="Evalution" Value="New Item"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/DepartmentwiseEntry.aspx" Text="Departmental Task" Value="New Item"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/MDUpdation.aspx" Text="Assign Task to Employee" Value="New Item"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/MDMonthdairy.aspx" Text="Monthly Dairy" Value="New Item"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/MD_Meeting.aspx" Text="Meetings" Value="New Item"></asp:MenuItem>
                             <asp:MenuItem NavigateUrl="~/Allfiles.aspx" Text="Departmental Files" Value="New Item"></asp:MenuItem>
                          
                        </Items>
                           <StaticMenuItemStyle CssClass="MenuItem" HorizontalPadding="5px" VerticalPadding="2px"/>
                    <StaticMenuItemStyle ItemSpacing ="20" />
                    <StaticHoverStyle CssClass="MenuHover"  ForeColor="White" />
                    <StaticSelectedStyle CssClass="MenuSelected" />
                    </asp:Menu>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

               

                <asp:HyperLink ID="HyperLink7" runat="server" Font-Names="Tempus Sans ITC" NavigateUrl="~/MDSir.aspx">Back</asp:HyperLink>
                        &nbsp;&nbsp; <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Login_MD.aspx" style="color:#990000" Font-Bold="True" CssClass="txtbox">Logout</asp:HyperLink>

               
                    <br />
            </center>
            <div class="row">
                    <br />
          
            </div>
             <asp:Button ID="Button14" class="btn btn-primary btn-lg btn-block"  runat="server" Height="75%" OnClick="Button1_Click" Text="SMART"  width="100%"/>
                           <br />
            <asp:Button ID="Button15" class="btn btn-primary btn-lg btn-block"  runat="server" Height="75%"  Text="AGRI BUSINESS GROWTH CELL"  width="100%" OnClick="Button15_Click1" />
                           <br />
            <asp:Button ID="Button16" class="btn btn-primary btn-lg btn-block"  runat="server" Height="75%" Text="TRAINING " width="100%"  OnClick="Button16_Click1" />
                           <br />
            <asp:Button ID="Button17" class="btn btn-primary btn-lg btn-block"  runat="server" Height="75%" Text="FERTILIEZERS"  width="100%" OnClick="Button17_Click"/>
                           <br />
             <asp:Button ID="Button1" class="btn btn-primary btn-lg btn-block"  runat="server" Height="75%" Text="Coopshop"  width="100%" OnClick="Button1_Click1"  />
                      <br />
            <asp:Button ID="Button18" class="btn btn-primary btn-lg btn-block"  runat="server" Height="75%" Text="Account"  width="100%" OnClick="Button18_Click" />
            <asp:Panel ID="Panel1" runat="server" Style="width: 100%; height: 400px; overflow: scroll">
            
            
            </asp:Panel>

            






            <div id="footer">
                <p>
                    Copyright © 2018 MCDC. All Rights Reserved.
                </p>
            </div>
    </form>
</body>
</html>




