<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeptMonitoring.aspx.cs" Inherits="Task.DeptMonitoring" %>




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
    </style>
</head>

<body background="2277.jpg">
    <form id="f1" runat="server">

        <div>
        </div>
        <!-- Sidebar -->

        <!-- Page Content -->
        <%--   <div style="margin-left: 5%">--%>

        <div id="Header">
            <center class="auto-style2"> 
                 
                    <asp:Button ID="Button12" class="btn btn-primary btn-lg btn-block"  runat="server"  Height="75%" Text="Departmental Task"   width="100%" /> 
            </center>
            <div class="row">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Select Department "></asp:Label>
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server"  style="height: 22px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>CS Branch</asp:ListItem>
                     <asp:ListItem>Coop Shop</asp:ListItem>
                    <asp:ListItem>Admin and O & M Branch</asp:ListItem>
                    <asp:ListItem>Training Branch</asp:ListItem>
                   <asp:ListItem>Fertilizers</asp:ListItem>
                    <asp:ListItem>Project Branch</asp:ListItem>
                    <asp:ListItem>Jalsamruddhi Branch</asp:ListItem>
                    <asp:ListItem>NABARD Branch</asp:ListItem>
                    <asp:ListItem>IT Branch</asp:ListItem>
                    <asp:ListItem>Account Branch</asp:ListItem>
                    <asp:ListItem>Mahafarm Branch</asp:ListItem>
                    <asp:ListItem>Atal Arthsahayy Branch</asp:ListItem>
                    <asp:ListItem>ABGC</asp:ListItem>
                </asp:DropDownList>
                &nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Status"></asp:Label>
                &nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Completed</asp:ListItem>
                    <asp:ListItem>Pending</asp:ListItem>
                </asp:DropDownList>
                    &nbsp; <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
            </div>
            <br />
            <asp:Panel ID="Panel1" runat="server" Style="width: 100%; height: 400px; overflow: scroll">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    Font-Bold="False" DataKeyNames="id" Height="67px" HeaderStyle-ForeColor="White" 
                    PageSize="6" Width="100%" CssClass="auto-style1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4"
                    OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"
                    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle HorizontalAlign="Center" Font-Names="Times New Roman" Font-Size="Medium" BackColor="White" ForeColor="#003399" />
                    <Columns>

                          <asp:TemplateField HeaderText = "Sr.No" ItemStyle-Width="100">
        <ItemTemplate>
            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
        </ItemTemplate>
                              <ItemStyle Width="100px" />
    </asp:TemplateField>

                        <asp:BoundField DataField="EmpName" HeaderText="Employee Name">
                            <FooterStyle Font-Size="Medium" />
                        </asp:BoundField>

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
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#006699" Font-Size="Small" ForeColor="White" Font-Underline="true" Height="40px" Font-Bold="True" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
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




