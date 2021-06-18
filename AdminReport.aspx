<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminReport.aspx.cs" Inherits="Task.AdminReport" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script type = "text/javascript" >
      function preventBack() { window.history.forward(); }
     setTimeout("preventBack()", 0);
     window.onunload = function () { null };
</script>

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
 
#lblusername
{
    text-align:right;
    color :black;
     margin-right:4%;
 
}
.exportbtn
{
    margin-left:40%;
    margin-right:20%;
}
.txtbox{

box-shadow: 5px 5px 9px #33cc33;
}
.exportbtn
{
    margin-left:40%;
    margin-right:20%;
}
        .auto-style1 {
            margin-left: 0px;
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
<form runat="server">

   <div>
   </div>
<!-- Sidebar -->
<div id="login" class="w3-sidebar w3-light-gray w3-bar-block" style="width:20%"   >
  <h3 class="w3-bar-item" style="color:forestgreen; width: 99%;">&nbsp;</h3>
        <asp:Image ID="Image7" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/MDSir.aspx" style="color:forestgreen" Font-Bold="False" CssClass="txtbox">Back</asp:HyperLink>
    <br />
    <br />
        <asp:Image ID="Image6" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login_MD.aspx" style="color:forestgreen" Font-Bold="False" CssClass="txtbox">Logout</asp:HyperLink>
    <br />
    <br />
 </div>

<!-- Page Content -->
<div style="margin-left:22%">
<div id="Header" class="auto-style1" > 
 <center> 
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Update.aspx" style="color:forestgreen" Font-Bold="False" CssClass="txtbox" Enabled="False">Admin Report </asp:HyperLink>
    </center>&nbsp;<div class="row">	
    <br />
</div>
   
    <div id="lblusername">
    </div>
       
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Label ID="Label2" runat="server" Text="From"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"  MaxLength="10" TextMode="Date" Width="150px" CssClass="txtbox"></asp:TextBox>

        <asp:Label ID="Label3" runat="server" Text="To"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True"  MaxLength="10" TextMode="Date" Width="150px"   CssClass="txtbox"></asp:TextBox>
     &nbsp;<asp:Button ID="Button1" runat="server" Text="Generate Report" OnClick="Button1_Click" />&nbsp;<br />
     <br />
    <asp:Panel ID="Panel1" runat="server" style="width: 100%; height: 400px; overflow: scroll">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCreated="GridView1_RowCreated"  ShowFooter="true"  OnDataBound="OnDataBound"  OnRowDataBound="GridView1_RowDataBound"  Width="80%" Height="83px" >  
                  <RowStyle HorizontalAlign="Center" Font-Names="Times New Roman"  Font-Size="small" />
                    <Columns>  

                        <asp:TemplateField HeaderText = "Sr. No." ItemStyle-Width="100">
        <ItemTemplate>
            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
        </ItemTemplate>
                             <%--<FooterTemplate>
                                 <asp:Label ID="Label5" runat="server" Text="Grand Total"></asp:Label>
                             </FooterTemplate>--%>
                             <FooterStyle HorizontalAlign="right" Font-Bold="true" />
    </asp:TemplateField>
                      
                        <asp:BoundField DataField="BranchName" HeaderText="Branch Name " readonly="true" />

                          <asp:BoundField DataField="EmpName" HeaderText="Empolyee Name" readonly="true" />

                        <asp:TemplateField HeaderText="Completed">
                            
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Completed") %>'></asp:Label>
                            </ItemTemplate>
                          
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText=" Pending ">
                            
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Pending") %>'></asp:Label>
                            </ItemTemplate>
                           
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total ">
                            
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Total") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                          
                       </Columns>
                 <HeaderStyle BackColor="#F7F6F3" Font-Size="Small" ForeColor="#333333" Font-Bold="true"  Font-Names="Times New Roman"/>
             <FooterStyle BackColor="#F7F6F3" Font-Size="Small" ForeColor="#333333" Font-Bold="true"  Font-Names="Times New Roman" />
                </asp:GridView>
         <br />
    </asp:Panel>
      <br />
         
    <asp:Button ID="Button2" runat="server" Text="Download Report" OnClick="Button2_Click" CssClass="exportbtn" Height="31px"  Width="169px"/>
    <br />
    <asp:Panel ID="Panel2" runat="server" >
        
          
    </asp:Panel>


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
