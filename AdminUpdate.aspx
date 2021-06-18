<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUpdate.aspx.cs" Inherits="Task.AdminUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        .auto-style1 {
            margin-left: 0px;
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
                <center> 
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Update.aspx" style="color:#990000" Font-Bold="False" CssClass="txtbox">Task Updation Sheet </asp:HyperLink>
    </center>
                <div class="row">
                    <br />
                </div>

                <div id="lblusername">
                    <asp:Label ID="Label1" runat="server" Text="System Admin" CssClass="txtbox"></asp:Label>
                </div>
                <br />
                <asp:Panel ID="Panel1" runat="server" Style="width: 100%; height: 400px; overflow: scroll">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                        Font-Bold="False" DataKeyNames="id" Height="67px" OnPageIndexChanging="GridView1_PageIndexChanging"
                        OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"
                        OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="6" Width="100%" CssClass="auto-style1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle HorizontalAlign="Center" Font-Names="Times New Roman" Font-Size="small" BackColor="White" ForeColor="#330099" />
                        <Columns>
                        
                            <asp:BoundField DataField="Task" HeaderText="Details of Work" >
                                <FooterStyle Font-Size="Small" />
                            </asp:BoundField>

                           

                 


                            <asp:TemplateField HeaderText="Task Completion Date">
                                <ItemTemplate>
                                    <asp:Label ID="TaskCompletionDate" runat="server" Text='<%# Eval("TaskCompletionDate","{0:dd/MM/yy}")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                   <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Text='<%# Eval("TaskCompletionDate","{0:yyyy-MM-dd}")%>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDate" ErrorMessage="*" ToolTip="कृपया पत्राची दिनांक टाका" ValidationGroup="gp1" ForeColor="White"></asp:RequiredFieldValidator>
                               </EditItemTemplate>
                            </asp:TemplateField>



                      



                            <asp:TemplateField HeaderText="TaskAssignBy">
                                <ItemTemplate>
                                    <asp:Label ID="lbltaskassignby" runat="server" Text='<%# Eval("TaskAssignBy")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddlassignby" runat="server" SelectedValue='<%# Eval("TaskAssignBy")%>'>
                                                        <asp:ListItem>Managing Director</asp:ListItem>
                                                        <asp:ListItem>General Manager</asp:ListItem>
                                                        <asp:ListItem>Asst.General Manager</asp:ListItem>
                                                        <asp:ListItem>Company Secretary</asp:ListItem>
                                                      <asp:ListItem>State Manager</asp:ListItem>
                                                      <asp:ListItem>Admin Officer</asp:ListItem>
                                                    <asp:ListItem>Chief Account Officer</asp:ListItem>
                                                    <asp:ListItem>Training Officer</asp:ListItem>
                                                    <asp:ListItem>Mahafarms Officer</asp:ListItem>
                                                    <asp:ListItem>NBFC Officer</asp:ListItem>
                                                  <asp:ListItem>IT Expert</asp:ListItem>
                                                 <asp:ListItem>Nabard FPO / FPC Officer</asp:ListItem>
                                               <asp:ListItem>Procurement Officer</asp:ListItem>
                                         <asp:ListItem>Procurement Officer</asp:ListItem>
                                        <asp:ListItem>Chartered Accountant</asp:ListItem>

                                    </asp:DropDownList>
                                </EditItemTemplate>
                            </asp:TemplateField>


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


                            <asp:BoundField DataField="Remark" HeaderText="Remark" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="img1" runat="server" CommandName="Edit" ImageUrl="edit.png" ToolTip="Edit" Width="30px" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Update" Height="30px" ImageUrl="update.png" ToolTip="Update" Width="30px" />
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ID="img2" runat="server" CommandName="Delete"  ImageUrl="del.png" 
                            onclientclick="return confirm('Are you sure you want to delete this record::');" ToolTip="Delete" Width="30px" />
                    </ItemTemplate>
                </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Size="Small" ForeColor="#FFFFCC"  Font-Underline="true"  Height="40px"/>
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
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


