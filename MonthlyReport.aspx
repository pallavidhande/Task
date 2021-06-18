<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MonthlyReport.aspx.cs" Inherits="Task.MonthlyReport" EnableEventValidation="false" %>

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
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Update.aspx" style="color:forestgreen" Font-Bold="false" CssClass="txtbox">Create Daily Task</asp:HyperLink>
    <br />
    <br />
        <asp:Image ID="Image8" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ANR.aspx" style="color:forestgreen" Font-Bold="False" CssClass="txtbox">Back</asp:HyperLink>
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
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Update.aspx" style="color:forestgreen" Font-Bold="False" CssClass="txtbox" Enabled="False">Monthly Report</asp:HyperLink>
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
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" MaxLength="10" TextMode="Date" Width="150px" CssClass="txtbox"></asp:TextBox>
       <%-- <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox1" />--%>

        <asp:Label ID="Label3" runat="server" Text="To"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged" MaxLength="10" TextMode="Date" Width="150px"  CssClass="txtbox"></asp:TextBox>
       <%-- <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox2" />--%>

    </asp:Panel>
    <br />
    <asp:Panel ID="Panel1" runat="server" style="width: 100%; height:400px; overflow: scroll">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="false"
            Font-Bold="False"  DataKeyNames="id" Height="67px"  
           
           PageSize="6" width="100%"  CellSpacing="0">
            <RowStyle HorizontalAlign="Center" Font-Names="Times New Roman"  Font-Size="small" />
            <Columns>
          
                <asp:BoundField DataField="Task" HeaderText="Details of Work" readonly="true">
                <ItemStyle />
                <FooterStyle Font-Size="Small" />
                </asp:BoundField>
           
               <asp:BoundField DataField="TaskCreationDate" HeaderText="Task Creation Date " readonly="true" DataFormatString="{0:dd/MM/yy}" >
                           <HeaderStyle Font-Bold="True" Font-Size="small" />
                       </asp:BoundField>


                <asp:TemplateField HeaderText="Task Completion Date">
            <ItemTemplate>
                <asp:Label ID="TaskCompletionDate" runat="server" Text='<%# Eval("TaskCompletionDate","{0:dd/MM/yy}")%>'   ></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Text='<%# Eval("TaskCompletionDate","{0:yyyy-MM-dd}")%>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDate"  ErrorMessage="*" ToolTip="कृपया पत्राची दिनांक टाका" ValidationGroup="gp1" ForeColor="White"></asp:RequiredFieldValidator>
              
                </EditItemTemplate>
                            </asp:TemplateField>

                 <asp:BoundField DataField="RevisedTimeline" HeaderText="Revised Timeline" ReadOnly="true" DataFormatString="{0:dd/MM/yy}"   />
                    
                        <asp:BoundField DataField="Revenue_Generated" HeaderText="Revenue Generated(In Rs)" ReadOnly="true" />
                        <asp:BoundField DataField="Expenditure_Incurred" HeaderText="Expenditure Incurred(In Rs)"  ReadOnly="true" />


             <%--   <asp:BoundField DataField="TaskAssignBy" HeaderText="Task Assign By" readonly="true" />--%>
                 <asp:TemplateField HeaderText="Status">
            <ItemTemplate>
                <asp:Label ID="lblCity" runat="server" Text='<%# Eval("TaskStatus")%>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:DropDownList ID="ddlStatus"  runat="server" SelectedValue='<%# Eval("TaskStatus")%>' >      
               <asp:ListItem Text="Completed"></asp:ListItem>
               <asp:ListItem Text="Pending"></asp:ListItem>
                </asp:DropDownList>
            </EditItemTemplate>
        </asp:TemplateField>


                    <asp:BoundField DataField="Remark" HeaderText="Remark"  />
          
              
            </Columns>
            <HeaderStyle BackColor="#F7F6F3" Font-Size="Small" ForeColor="#333333" Font-Bold="false"   Font-Underline="true"/>
            <RowStyle BackColor="#F7F6F3" Font-Size="Small" ForeColor="#333333" Font-Names="Times New Roman"  />
        </asp:GridView>
    </asp:Panel>
    <br />
      <asp:Panel ID="Panel2" runat="server" >  

<asp:Button ID="btnlogin" runat="server" Text="Download Report"  class="exportbtn" Height="31px" OnClick="btnlogin_Click" Width="169px"   />

</asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
       
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


