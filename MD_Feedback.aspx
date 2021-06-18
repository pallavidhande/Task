<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MD_Feedback.aspx.cs" Inherits="Task.MD_Feedback" EnableEventValidation="false"%>



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
     <%--   <div style="margin-left: 5%">--%>

            <div id="Header">
                <center> 
                   
                    <asp:Button ID="Button3" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Height="39px" Text="Ethical Assessment Review" Width="234px" Font-Size="Large" />
                     <br />
                     <br />
    </center>
                <div class="row">
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
&nbsp;
            <asp:Image ID="Image7" runat="server" Height="21px" ImageUrl="new.jfif" Width="21px" ImageAlign="Left" />
            &nbsp;<asp:HyperLink ID="HyperLink6" runat="server" Font-Names="Times New Roman" NavigateUrl="~/Feedback.aspx" Font-Bold="True" Font-Size="Large" ForeColor="#000099" BackColor="#CCFF99">Employee Assessment Form </asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Times New Roman" NavigateUrl="~/MDSir.aspx" Font-Bold="True" Font-Size="Large" ForeColor="#993300">Back</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Login_MD.aspx" style="color:#990000" Font-Bold="True" CssClass="txtbox" ForeColor="#CC3300">Logout</asp:HyperLink>
                    <br />
                </div>

                <br />
                <asp:Panel ID="Panel1" runat="server" Style="width: 100%; height: 400px; overflow: scroll">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                        Font-Bold="False" 
                        Height="67px" PageSize="6" Width="100%" CssClass="auto-style1">
                        <RowStyle HorizontalAlign="Center" Font-Names="Times New Roman" Font-Size="Medium" />
                        <Columns>
                            <asp:TemplateField HeaderText = "Serial Number" ItemStyle-Width="100">
        <ItemTemplate>
            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
        </ItemTemplate>
                                <ItemStyle Width="100px" />
    </asp:TemplateField>
                           <%--   <asp:BoundField DataField="create_date" HeaderText="Date " ReadOnly="true" >
                                <FooterStyle Font-Size="Medium" />
                            </asp:BoundField>--%>

                             <asp:TemplateField HeaderText="Record Generated on" >
                                <ItemTemplate>
                                    <asp:Label ID="record_date" runat="server" Text='<%# Eval("record_date","{0:dd/MM/yy}")%>'></asp:Label>
                                </ItemTemplate>
                                <%--<EditItemTemplate>
                                   <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Text='<%# Eval("TaskCompletionDate","{0:yyyy-MM-dd}")%>' ReadOnly="true" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDate" ErrorMessage="*" ToolTip="कृपया पत्राची दिनांक टाका" ValidationGroup="gp1" ForeColor="White"></asp:RequiredFieldValidator>
                               </EditItemTemplate>--%>
                            </asp:TemplateField>


                            <asp:BoundField DataField="fromperson" HeaderText="From"  ReadOnly="true">
                                <FooterStyle Font-Size="Medium" />
                            </asp:BoundField>
                        
                            <asp:BoundField DataField="toperson" HeaderText="To" ReadOnly="true">
                                <FooterStyle Font-Size="Medium" />
                            </asp:BoundField>

                           
                                 <asp:BoundField DataField="panctality" HeaderText="Punctuality"  ReadOnly="true">
                                <FooterStyle Font-Size="Medium" />
                            </asp:BoundField>
                        
                          
                                <asp:BoundField DataField="honesty" HeaderText="Honesty"  ReadOnly="true">
                                <FooterStyle Font-Size="Medium" />
                            </asp:BoundField>

                                <asp:BoundField DataField="behaviour" HeaderText="Behaviour in office"  ReadOnly="true">
                                <FooterStyle Font-Size="Medium" />
                            </asp:BoundField>
                 
                             <asp:BoundField DataField="feedback" HeaderText="Description if any"  ReadOnly="true">
                                <FooterStyle Font-Size="Medium" />
                            </asp:BoundField>


                           
                        </Columns>
                        <HeaderStyle Font-Size="Small"  Font-Underline="true"  Height="40px"/>
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




