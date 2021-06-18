<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ANR.aspx.cs" Inherits="Task.ANR" %>




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
        #login-name {
            font-size: 30px;
            font-family: arabic typesetting;
            /*border-bottom-style: ridge*/;
            color: forestgreen;
            /*background-color:rgba(13,13,13,0.2);*/
            /*min-height:500px;
padding: 40px 80px 40px 80px;*/
            box-shadow: -10px -10px 9px #33cc33;
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
            box-shadow: 5px 5px 9px #33cc33;
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
        <div id="login" class="w3-sidebar w3-light-gray w3-bar-block" style="width: 24%">
            <h3 class="w3-bar-item" style="color: forestgreen; width: 99%;">&nbsp;</h3>
            <asp:Image ID="Image1" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Update.aspx" Style="color: forestgreen" Font-Bold="false" CssClass="txtbox">Create Daily Task</asp:HyperLink>
            <br />
            <br />
            <asp:Image ID="Image6" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/MonthlyReport.aspx" Style="color: forestgreen" Font-Bold="False" CssClass="txtbox">Monthly Report</asp:HyperLink>
            <br />
            <br />



 <asp:Image ID="Image78" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
            <asp:HyperLink ID="HyperLink51" runat="server" NavigateUrl="https://docs.google.com/spreadsheets/d/1mutXRLXHnpFv0Te5RcRKqNsW3IfiXm_O-F4J2OKZfsc/edit?usp=sharing" Style="color: forestgreen" Font-Bold="False" CssClass="txtbox">ABGC Department</asp:HyperLink>
            <br />
            <br />



            <asp:Image ID="Image8" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Request.aspx" Style="color: forestgreen" Font-Bold="False" CssClass="txtbox">Request & Inovations</asp:HyperLink>
            <br />
            <br />
            <asp:Image ID="Image9" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/meeting.aspx" Style="color: forestgreen" Font-Bold="False" CssClass="txtbox">Meeting Attended</asp:HyperLink>
            <br />
            <br />
            <asp:Image ID="Image10" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Feedback.aspx" Style="color: forestgreen" Font-Bold="False" CssClass="txtbox">Ethical Assessment</asp:HyperLink>
            <br />
            <br />
            <asp:Image ID="Image7" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Loginnew.aspx" Style="color: forestgreen" Font-Bold="false" CssClass="txtbox">Logout</asp:HyperLink>
            </a>
        </div>

        <!-- Page Content -->
        <div style="margin-left: 25%">

            <div id="Header">
                <center> 
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Update.aspx" style="color:forestgreen" Font-Bold="False" CssClass="txtbox">Task Updation Sheet </asp:HyperLink>
    </center>
                <div class="row">
                    <br />
                </div>

                <div id="lblusername">
                    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="txtbox"></asp:Label>
                </div>
                <br />
                <asp:Panel ID="Panel1" runat="server" Style="width: 100%; height: 400px; overflow: scroll">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="false"
                        Font-Bold="False" DataKeyNames="id" Height="67px" OnPageIndexChanging="GridView1_PageIndexChanging"
                        OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"
                        OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="6" Width="100%" CellSpacing="0">
                        <RowStyle HorizontalAlign="Center" Font-Names="Times New Roman" Font-Size="small" />
                        <Columns>
                            <%--   <asp:BoundField DataField="ID" HeaderText="ID " readonly="true">
                <HeaderStyle BackColor="" />
                <ItemStyle />
                </asp:BoundField>--%>
                            <asp:BoundField DataField="Task" HeaderText="Details of Work" ReadOnly="true">
                                <ItemStyle />
                                <FooterStyle Font-Size="Small" />
                            </asp:BoundField>

                            <%--   <asp:BoundField DataField="TaskCompletionDate" HeaderText="Task Completion Date " DataFormatString="{0:MM/dd/yy}" readonly="true" />--%>

                            <asp:BoundField DataField="TaskCreationDate" HeaderText="Task Creation Date " ReadOnly="true" DataFormatString="{0:dd/MM/yy}">
                                <HeaderStyle Font-Bold="True" Font-Size="small" />
                            </asp:BoundField>


                         <%--   <asp:TemplateField HeaderText="Task Completion Date">
                                <ItemTemplate>
                                    <asp:Label ID="TaskCompletionDate" runat="server" Text='<%# Eval("TaskCompletionDate","{0:dd/MM/yy}")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                   <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Text='<%# Eval("TaskCompletionDate","{0:yyyy-MM-dd}")%>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDate" ErrorMessage="*" ToolTip="कृपया पत्राची दिनांक टाका" ValidationGroup="gp1" ForeColor="White"></asp:RequiredFieldValidator>

                               </EditItemTemplate>
                            </asp:TemplateField>--%>

                                <asp:BoundField DataField="TaskCompletionDate" HeaderText="Task Completion Date" ReadOnly="true" DataFormatString="{0:dd/MM/yy}">
                                <ItemStyle />
                                <FooterStyle Font-Size="Small" />
                            </asp:BoundField>



                            <asp:TemplateField HeaderText="Revised Completion Date">
                                <ItemTemplate>
                                    <asp:Label ID="RevisedTimeline" runat="server" Text='<%# Eval("RevisedTimeline","{0:dd/MM/yy}")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                   <asp:TextBox ID="txtextendeddate" runat="server" TextMode="Date" Text='<%# Eval("RevisedTimeline","{0:yyyy-MM-dd}")%>' DataFormatString="{0:dd/MM/yy}"  />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtextendeddate" ErrorMessage="*" ToolTip="कृपया पत्राची दिनांक टाका" ValidationGroup="gp1" ForeColor="White"></asp:RequiredFieldValidator>
                               </EditItemTemplate>
                            </asp:TemplateField>




                                <%--  <asp:BoundField DataField="Revenue_Generated" HeaderText="Revenue Generated(In Rs)" />
                                  <asp:BoundField DataField="Expenditure_Incurred" HeaderText="Expenditure Incurred(In Rs)" />--%>


                           <%-- <asp:BoundField DataField="TaskAssignBy" HeaderText="Task Assign By" ReadOnly="true" />--%>

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


                             <asp:TemplateField HeaderText="Your Remark">
                                <ItemTemplate>
                                    <asp:Label ID="lblRemark" runat="server" Text='<%# Eval("Emp_Remark")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                   <asp:TextBox ID="txtRemark" runat="server" Text='<%# Eval("Emp_Remark")%>'  />
                                </EditItemTemplate>
                            </asp:TemplateField>




                            <asp:BoundField DataField="Remark" HeaderText="MD Sir Remark"  ReadOnly="true" />



                            <%--<asp:BoundField DataField="FileName" HeaderText="File Name"/>--%>
                            <asp:TemplateField>  
                             
                            <HeaderTemplate>  
                                <asp:Label ID="hlblimg" runat="server" Text="File"></asp:Label>  
                            </HeaderTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lbl" runat="server" Text='<%# Eval("FileName") %>'></asp:Label> 
                                </ItemTemplate>  
                                <EditItemTemplate>  
                                    <asp:FileUpload ID="fu1" runat="server"  />  
                                </EditItemTemplate>  
                            </asp:TemplateField>  


        <asp:TemplateField ItemStyle-HorizontalAlign = "Center">
            <ItemTemplate>
                <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile" BackColor="YellowGreen"
                    CommandArgument='<%# Eval("ID") %>'></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>




                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="img1" runat="server" CommandName="Edit" Height="30px" ImageUrl="edit.png" ToolTip="Edit" Width="30px" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Update" Height="30px" ImageUrl="update.png" ToolTip="Update" Width="30px" />
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <%--<asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ID="img2" runat="server" CommandName="Delete" Height="30px" ImageUrl="del.png" 
                            onclientclick="return confirm('Are you sure you want to delete this record::');" ToolTip="Delete" Width="30px" />
                    </ItemTemplate>
                </asp:TemplateField>--%>
                        </Columns>
                        <HeaderStyle BackColor="#F7F6F3" Font-Size="Small" ForeColor="#333333" Font-Bold="false" Font-Underline="true" />
                        <RowStyle BackColor="#F7F6F3" Font-Size="Small" ForeColor="#333333" Font-Names="Times New Roman" />
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

