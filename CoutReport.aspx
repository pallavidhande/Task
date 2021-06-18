<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoutReport.aspx.cs" Inherits="Task.CoutReport" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        #login-name{
font-size: 30px;
font-family: arabic typesetting;
/*border-bottom-style: ridge*/;
color:forestgreen;
/*background-color:rgba(13,13,13,0.2);*/
/*min-height:500px;
padding: 40px 80px 40px 80px;*/
box-shadow: -10px -10px 9px #33cc33;
}
#login{
background-color:rgba(13,13,13,0.2);
min-height:500px;
padding: 40px 80px 40px 80px;
box-shadow: 5px 5px 9px #33cc33;
}
.txtbox{

box-shadow: 5px 5px 9px #33cc33;
}
 
#lblusername
{
    text-align:right;
    color :black;
     margin-right:4%;
     
}
        #login-name0{
font-size: 30px;
font-family: arabic typesetting;
/*border-bottom-style: ridge*/;
color:forestgreen;
/*background-color:rgba(13,13,13,0.2);*/
/*min-height:500px;
padding: 40px 80px 40px 80px;*/
box-shadow: -10px -10px 9px #33cc33;
}
        .exportbtn
{
    margin-left:40%;
    margin-right:20%;
}

     .username{
        
     }
      #footer
{
    clear: both;
    /*width: auto;*/
    /*height: 30px;
    padding: 20px;*/
    /*border: 3px solid #E3E3E3;*/
    text-align: center;
    color: green;
    /*text-shadow: 0.1em 0.1em #333;*/
    background-image: url(../Images/bar_background.png);
}
    </style>
</head>

<body background="2277.jpg">
<form id="f1" runat="server">

   <div>
   </div>
<!-- Sidebar -->
<div id="login" class="w3-sidebar w3-light-gray w3-bar-block" style="width:24%"   >
  <h3 class="w3-bar-item" style="color:forestgreen; width: 99%;">&nbsp;</h3>
        <asp:Image ID="Image1" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Update.aspx" style="color:forestgreen" Font-Bold="false" CssClass="txtbox">Submit Response</asp:HyperLink>
    <br />
    <br />
        <asp:Image ID="Image2" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/DisplayInfo.aspx" style="color:forestgreen" Font-Bold="false" CssClass="txtbox">Download Report</asp:HyperLink>
    <br />
    <br />
        <asp:Image ID="Image7" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Loginnew.aspx" style="color:forestgreen" Font-Bold="false" CssClass="txtbox">Logout</asp:HyperLink>
    </a>
</div>

<!-- Page Content -->
<div style="margin-left:25%">

<div id="Header" > 
 <center> 
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Update.aspx" style="color:forestgreen" Font-Bold="False" CssClass="txtbox">Daily Tasks..</asp:HyperLink>
    </center><div class="row">	
    <br />
</div>
   
    <div id="lblusername">
         <asp:Label ID="Label1" runat="server" Text="Label" CssClass="txtbox" BackColor="White"></asp:Label>
    </div>
     <br />
    <asp:Panel ID="Panel3" runat="server" >
       
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Label ID="Label2" runat="server" Text="From"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" MaxLength="10" Width="150px" CssClass="txtbox"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server"  TargetControlID="TextBox1"/>

        <asp:Label ID="Label3" runat="server" Text="To"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged" MaxLength="10" Width="150px"  CssClass="txtbox"></asp:TextBox>
              <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server"  TargetControlID="TextBox2"/>
       
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
      

    </asp:Panel>
    <br />
    <asp:Panel ID="Panel1" runat="server" style="width: 100%; height: 500px; overflow: scroll">
  <%--         <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" CssClass="auto-style2" Height="67px"   width="100%">
            <RowStyle HorizontalAlign="Center" />
            <Columns>
             
                  <asp:BoundField DataField="TaskCreationDate" HeaderText=" Date " readonly="true" />
                <asp:BoundField DataField="Task" HeaderText="Details of Work" readonly="true">
                <ItemStyle />
                </asp:BoundField>
                 <asp:BoundField DataField="TaskAssignBy" HeaderText="Concern person" readonly="true" />
           
                    <asp:BoundField DataField="Remark" HeaderText="Remark"  />
             
            </Columns>
               <HeaderStyle BackColor="#F7F6F3" Font-Size="Small" ForeColor="#333333" Font-Bold="false"   Font-Underline="true"/>
            <RowStyle BackColor="#F7F6F3" Font-Size="Small" ForeColor="#333333" />
        </asp:GridView>--%>

        <asp:GridView ID="GridView2" runat="server" Width="351px">

        </asp:GridView>
      
    
    </asp:Panel>
    <br />
   

    




<div class="w3-container">
</div>
    <div id="footer">
            <p>
Copyright © 2018 MCDC. All Rights Reserved.</p>
        </div>
</div>
    </form>  
</body>
</html>


