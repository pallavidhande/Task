<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayInfo.aspx.cs" Inherits="Task.DisplayInfo" %>

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
<form id="f1" runat="server">

   <div>
   </div>
<!-- Sidebar -->
<div id="login" class="w3-sidebar w3-light-gray w3-bar-block" style="width:24%"   >
  <h3 class="w3-bar-item" style="color:forestgreen; width: 99%;">&nbsp;</h3>
        <br />
    <asp:Image ID="Image3" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/AdminReport.aspx" style="color:forestgreen" Font-Bold="False" CssClass="txtbox">Admin Report</asp:HyperLink>
    <br />
    <br />
        <asp:Image ID="Image7" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/AdminPage.aspx" style="color:forestgreen" Font-Bold="False" CssClass="txtbox">Back</asp:HyperLink>
    <br />
    <br />
        <asp:Image ID="Image6" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Loginnew.aspx" style="color:forestgreen" Font-Bold="false" CssClass="txtbox">Logout</asp:HyperLink>
    <br />
    <br />
 </div>

<!-- Page Content -->
<div style="margin-left:25%">
<div id="Header" class="auto-style1" > 
 <center> 
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Update.aspx" style="color:forestgreen" Font-Bold="False" CssClass="txtbox" Enabled="False">Action Taken Report</asp:HyperLink>
    </center>&nbsp;<div class="row">	
    <br />
</div>
   
    <div id="lblusername">
    </div>
       
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Label ID="Label2" runat="server" Text="From"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"  MaxLength="10" TextMode="Date" Width="150px" CssClass="txtbox"></asp:TextBox>

        <asp:Label ID="Label3" runat="server" Text="To"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True"  MaxLength="10" TextMode="Date" Width="150px"  CssClass="txtbox"></asp:TextBox>
       &nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Choose Status"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"  CssClass="txtbox">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Pending</asp:ListItem>
        <asp:ListItem>Completed</asp:ListItem>
    </asp:DropDownList>
       <br />
     <br />
    <asp:Panel ID="Panel1" runat="server" style="width: 100%; height: 400px; overflow: scroll">
        <asp:GridView ID="GridView2" runat="server"  AutoGenerateColumns="False" CssClass="auto-style2" Height="67px"   width="100%">
            <RowStyle HorizontalAlign="Center"  Font-Names="Times New Roman"  Font-Size="Large" />
            <Columns>
              <%--  <asp:BoundField DataField="ID" HeaderText="ID " readonly="true">
                <HeaderStyle BackColor="" />
                <ItemStyle />
                </asp:BoundField>--%>
                 <asp:BoundField DataField="EmpName" HeaderText="Name of Employee" readonly="true" >

                 <HeaderStyle Font-Bold="True" Font-Size="Medium" />
                </asp:BoundField>

                 <asp:BoundField DataField="TaskCreationDate" HeaderText="Task Creation Date " readonly="true" DataFormatString="{0:dd/MM/yy}" >
                           <HeaderStyle Font-Bold="True" Font-Size="Medium" />
                       </asp:BoundField>
                   <asp:BoundField DataField="TaskCompletionDate" HeaderText="Task Completion Date" readonly="true" DataFormatString="{0:dd/MM/yy}" >
                           <HeaderStyle Font-Bold="True" Font-Size="Medium" />
                       </asp:BoundField>
                  <asp:BoundField DataField="RevisedTimeline" HeaderText="Revised Timeline" ReadOnly="true" DataFormatString="{0:dd/MM/yy}"   />
                <asp:BoundField DataField="Task" HeaderText="Details of Work" readonly="true">

                <ItemStyle />
                <HeaderStyle Font-Bold="True" Font-Size="Medium" />
                </asp:BoundField>
                <%--<asp:BoundField DataField="TaskAssignBy" HeaderText="Task Assign By" readonly="true" >
                <HeaderStyle Font-Bold="True" Font-Size="Medium" />
                </asp:BoundField>--%>

                      
                        <asp:BoundField DataField="Revenue_Generated" HeaderText="Revenue Generated(In Rs)" ReadOnly="true" />
                        <asp:BoundField DataField="Expenditure_Incurred" HeaderText="Expenditure Incurred(In Rs)"  ReadOnly="true" />



                <asp:TemplateField HeaderText="TaskStatus">
                    <ItemTemplate>
                        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("TaskStatus")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="lblCity1" runat="server" Text='<%# Eval("TaskStatus")%>' Visible="false"></asp:Label>
                        <asp:DropDownList ID="ddlStatus" runat="server">
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <FooterStyle Font-Bold="True" Font-Size="Medium" />
                    <HeaderStyle Font-Bold="True" Font-Size="Medium" />
                </asp:TemplateField>
                    <asp:BoundField DataField="Remark" HeaderText="Progress During the Week"  >
                
                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Size="Medium" />
                </asp:BoundField>
                
                <%--<asp:CommandField ShowDeleteButton="true" />--%>
            </Columns>
            <HeaderStyle BackColor="#F7F6F3" Font-Size="Small" ForeColor="#333333" Font-Bold="true"  Font-Names="Times New Roman"/>
            <RowStyle BackColor="#F7F6F3" Font-Size="small" ForeColor="#333333" />
        </asp:GridView>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server" >
        
<asp:Button ID="btnlogin" runat="server" Text="Download Report"  CssClass="exportbtn"  Height="31px" OnClick="btnlogin_Click" Width="169px" />
          
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
