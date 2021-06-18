<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepartmentwiseEntry.aspx.cs" Inherits="Task.DepartmentwiseEntry"  %>



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

        .auto-style1 {
            margin-left: 0px;
        }

        .auto-style2 {
            color: #990000;
        }
        .auto-style3 {
            width: 402px;
        }
        .auto-style4 {
            width: 1405px;
        }
        .auto-style5 {
            width: 878px;
        }
        .auto-style6 {
            width: 241px;
        }


         .MenuItem
        {
            /*background-color: #7A95FF;*/
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

        <div>
        
        <!-- Sidebar -->

        <!-- Page Content -->
        <%--   <div style="margin-left: 5%">--%>

        <div id="Header">
            <center class="auto-style2"> 
                 
                    <asp:Button ID="Button12" class="btn btn-primary btn-lg btn-block"  runat="server"  Height="75%" Text="Daily Task Review"   width="100%" /> 
                    <br />
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
                    <br />
            </center>
            <div class="row">
                    <br />
                <table class="auto-style4" >
                    <tr>
                        <td class="auto-style3">

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="Label2" runat="server" Text="Select Department " Font-Bold="True"></asp:Label>
                        </td>
                        <td class="auto-style6">

                            <asp:DropDownList ID="DropDownList1" runat="server"  style="height: 22px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" AutoPostBack="true" >
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>CS Branch</asp:ListItem>
                     <asp:ListItem>Coop Shop / Mahafarm</asp:ListItem>
                    <asp:ListItem>Admin and O & M Branch</asp:ListItem>
                    <asp:ListItem>Training Branch</asp:ListItem>
                   <asp:ListItem>Fertilizers</asp:ListItem>
                    <asp:ListItem>SMART</asp:ListItem>
                    <asp:ListItem>Jalsamruddhi Branch</asp:ListItem>
                    <asp:ListItem>NABARD Branch</asp:ListItem>
                    <asp:ListItem>IT Branch</asp:ListItem>
                    <asp:ListItem>Account Branch</asp:ListItem>
              <%--      <asp:ListItem>Mahafarm Branch</asp:ListItem>--%>
                    <asp:ListItem>Atal Arthsahayy Branch</asp:ListItem>
                    <asp:ListItem>ABGC</asp:ListItem>
                </asp:DropDownList>
                        </td>
                        <td class="auto-style5">

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Tempus Sans ITC" NavigateUrl="~/MDSir.aspx" style="color:#990000" Font-Bold="True" CssClass="txtbox">Back</asp:HyperLink>
                        &nbsp;&nbsp;

                            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Login_MD.aspx" style="color:#990000" Font-Bold="True" CssClass="txtbox">Logout</asp:HyperLink>

                        </td>
                        <td>

                            &nbsp;&nbsp;

                            </td>
                    </tr>
                      <tr>
                        <td class="auto-style3">

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="Label7" runat="server" Text="Select Status" Font-Bold="True"></asp:Label>

                        </td>
                        <td class="auto-style6">

                            

                              <asp:RadioButton ID="RadioButton1" runat="server" Text="Completed" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" />          &nbsp;&nbsp;&nbsp;          <asp:RadioButton ID="RadioButton2" runat="server" Text="Pending" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged"  />

               

                        </td>
                          <td class="auto-style5">

               
                              &nbsp;&nbsp;&nbsp;          

               
                          </td>
                    </tr>
                      <tr>
                        <td class="auto-style3">

               
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="HOD"></asp:Label>
&nbsp;:

                            <asp:Label ID="lblhod" runat="server" Text="lblhod" Font-Bold="False" Font-Size="Small" Font-Names="Impact"></asp:Label>
                          </td>
                        <td class="auto-style6">

                            &nbsp;</td>
                    </tr>
                </table>
          
            </div>
            <br /> 
    
            <asp:Panel ID="Panel1" runat="server" Style="width: 100%; height: 400px; overflow: scroll">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"      OnDataBound= "GridView1_DataBound1" OnRowDataBound="GridView1_RowDataBound"
                    Font-Bold="False" DataKeyNames="id" Height="67px" HeaderStyle-ForeColor="White"  
                    PageSize="6" Width="100%" CssClass="auto-style1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"
                    OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"
                    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" Font-Names="Times New Roman" />
                    <RowStyle HorizontalAlign="Left" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#000066"  VerticalAlign="NotSet" />
                   <%-- <AlternatingRowStyle BackColor="#BFE4FF" /> --%>
                    <Columns>

                         <%-- <asp:TemplateField HeaderText = "Sr.No" ItemStyle-Width="100">
        <ItemTemplate>
            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" /> 
        </ItemTemplate>
                              <ItemStyle Width="100px" />
    </asp:TemplateField>--%>

                        <%--<asp:BoundField DataField="EmpName" HeaderText="Employee Name">
                            <FooterStyle Font-Size="Medium" />
                        </asp:BoundField>--%>

                     
                            <asp:TemplateField>
              <HeaderTemplate>
                        Sr.No.
              </HeaderTemplate>
              <ItemTemplate>
                  <%# Container.DataItemIndex + 1 %>
              </ItemTemplate>
          </asp:TemplateField>
                     


                        <asp:BoundField DataField="Task" HeaderText="Details of Work">
                            <FooterStyle Font-Size="Medium" />
                        </asp:BoundField>



            <%--  <asp:BoundField DataField="FileName" HeaderText="File Name">
                  <FooterStyle Font-Size="Medium" />
                        </asp:BoundField>--%>
      




                        <%--  <asp:TemplateField ItemStyle-HorizontalAlign = "Center">
            <ItemTemplate>
                <asp:LinkButton ID="lnkDownload" runat="server" Text="Download"  OnClick="DownloadFile" BackColor="YellowGreen"
                    CommandArgument='<%# Eval("ID") %>'></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>--%>

       
                         <asp:TemplateField ItemStyle-HorizontalAlign = "Center" HeaderText="File">
            <ItemTemplate>
                <asp:LinkButton ID="lnkDownload" runat="server" Text='<%# Eval("FileName")%>'   OnClick="DownloadFile" BackColor="YellowGreen"
                    CommandArgument='<%# Eval("id") %>'></asp:LinkButton>
            </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>

       

                      
                         <asp:TemplateField HeaderText="Task Creation Date">
                            <ItemTemplate>
                                <asp:Label ID="TaskCreationDate" runat="server" Text='<%# Eval("TaskCreationDate","{0:dd/MM/yy}")%>'></asp:Label>
                            </ItemTemplate>
                         
                        </asp:TemplateField>


                      


                         <asp:TemplateField HeaderText="Completion Date" >
                                <ItemTemplate>
                                    <asp:Label ID="TaskCompletionDate" runat="server" Text='<%# Eval("TaskCompletionDate","{0:dd/MM/yy}")%>'></asp:Label>
                                </ItemTemplate>
                             </asp:TemplateField>



                  <asp:BoundField DataField="Board_Resolution" HeaderText="Board Resolution " ReadOnly="true">
                                <FooterStyle Font-Size="Medium" />
                            </asp:BoundField>


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
                    <HeaderStyle BackColor="#006699" Font-Size="Small" ForeColor="White" Font-Underline="true" Height="40px" Font-Bold="True"  VerticalAlign="Middle" HorizontalAlign="Center"/>
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            
            
            </asp:Panel>

            






            <div id="footer">
                <p>
                    Copyright © 2018 MCDC. All Rights Reserved.
                </p>
            </div>
    </form>
</body>
</html>




