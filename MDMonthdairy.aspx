<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MDMonthdairy.aspx.cs" Inherits="Task.MDMonthdairy" EnableEventValidation="false"%>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <script type = "text/javascript" >
     function preventBack() { window.history.forward(); }
     setTimeout("preventBack()", 0);
     window.onunload = function () { null };
</script>




             <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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

     .btn {
  background-color: DodgerBlue;
  border: none;
  color: white;
  padding: 12px 30px;
  cursor: pointer;
  font-size: 20px;
}

/* Darker background on mouse-over */
.btn:hover {
  background-color: RoyalBlue;
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

       .MenuItem
        {
           
            font-family: Microsoft Sans Serif;
            font-size: 12px;
            color: White;
            padding: 5px 10px 5px 10px;
            border-color: Black;
            border-style: solid;
            border-width: 1px 1px 0px 1px;
            display:inline-block;

        }
        .MenuHover
        {
            background-color: #6181FF;
        }
        .MenuSelected
        {
            background-color: #476CFF;
            padding: 6px 12px 5px 12px;
        }
    </style>
</head>

<body background="2277.jpg">
<form id="f1" runat="server">


<!-- Sidebar -->


<!-- Page Content -->

<div id="Header" > 
 <center> 
     <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Century" Font-Size="Large" ForeColor="Black" Text="Monthly Report"></asp:Label>
     <br />
                 
    </center>
    <div class="row">	
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="#284E98" StaticSubMenuIndent="10px">
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Visible="false" Text="Label" CssClass="txtbox" BackColor="White"></asp:Label>
</div>
     <br />
    <asp:Panel ID="Panel3" runat="server" >
       
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Castellar" ForeColor="#333333" Text="Select Employee Name"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Enabled="true" Height="21px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="146px">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="txtbox" Font-Bold="False" NavigateUrl="~/MDSir.aspx" style="color:forestgreen" Font-Names="Century" ForeColor="Black">Back</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="txtbox" Font-Bold="False" NavigateUrl="~/Login_MD.aspx" style="color:forestgreen" Font-Names="Century" ForeColor="#CC3300">Logout</asp:HyperLink>
        <br />
        <br />
        <asp:Label ID="lblname" runat="server" Text="Label" Font-Bold="True" Font-Names="Century" ForeColor="Black"></asp:Label>
        <br />
        <br />

         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <asp:Label ID="Label2" runat="server" Text="From" Font-Bold="True" Font-Names="Century" Font-Size="Large" ForeColor="Black"></asp:Label>

        &nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox" MaxLength="10" OnTextChanged="TextBox1_TextChanged" TextMode="Date" Width="150px"></asp:TextBox>
        <%-- <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox1" />--%>&nbsp;<asp:Label ID="Label3" runat="server" Text="To" Font-Bold="True" Font-Names="Century" Font-Size="Large" ForeColor="Black"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" CssClass="txtbox" MaxLength="10" OnTextChanged="TextBox2_TextChanged" TextMode="Date" Width="150px"></asp:TextBox>
        <%-- <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox2" />--%>&nbsp;
       

    </asp:Panel>
    <br />
    <asp:Panel ID="Panel1" runat="server" style="width: 100%; height:400px; overflow: scroll">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            Font-Bold="False"  DataKeyNames="id" Height="67px"  
           
           PageSize="6" width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle Font-Names="Times New Roman" Font-Size="Small" ForeColor="#000066" />
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        Sr No.
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Task" HeaderText="Details of Work" readonly="true">
                <FooterStyle Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="TaskCreationDate" DataFormatString="{0:dd/MM/yy}" HeaderText="Task Creation Date " readonly="true">
                <HeaderStyle Font-Bold="True" Font-Size="Small" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Task Completion Date">
                    <ItemTemplate>
                        <asp:Label ID="TaskCompletionDate" runat="server" Text='<%# Eval("TaskCompletionDate","{0:dd/MM/yy}")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDate" runat="server" Text='<%# Eval("TaskCompletionDate","{0:yyyy-MM-dd}")%>' TextMode="Date" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDate" ErrorMessage="*" ForeColor="White" ToolTip="कृपया पत्राची दिनांक टाका" ValidationGroup="gp1"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="RevisedTimeline" DataFormatString="{0:dd/MM/yy}" HeaderText="Revised Timeline" ReadOnly="true" />
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("TaskStatus")%>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlStatus" runat="server" SelectedValue='<%# Eval("TaskStatus")%>'>
                            <asp:ListItem Text="Completed"></asp:ListItem>
                            <asp:ListItem Text="Pending"></asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" Font-Names="Century" Font-Size="Small" Font-Underline="true" ForeColor="White" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </asp:Panel>
   </form>
    <br />
     <div id="footer">
            <p>
Copyright © 2018 MCDC. All Rights Reserved>
            
</html>


