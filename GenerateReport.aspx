<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="GenerateReport.aspx.cs" Inherits="GenerateReport" EnableEventValidation="false"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
         .gridviewalign
        {
            margin-right:20%;
            margin-left:20%;
        }
          
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div style="margin-left:2%; margin-top:1%;">
        <table style="width:100%;">
            <tr>
                <td style="width:35%;"><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF9900" Text="Label"></asp:Label></td>
                <td style="width:55%; text-align:right;">
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="Black" ToolTip="Back" ImageHeight="20px" ImageUrl="~/img/backarrow.png" ImageWidth="20px" NavigateUrl="~/DataEntry.aspx">Back</asp:HyperLink>
                    </td><td></td><td></td><td>
        <asp:HyperLink ID="HyperLink6" runat="server" ImageHeight="20px" ImageUrl="~/img/logout.png" ImageWidth="20px" ToolTip="Logout" NavigateUrl="~/WebForm1.aspx">HyperLink</asp:HyperLink>
           </td>
                        </tr>
                </table>
    </div>
    <div style="margin-left:19%; margin-right:19%;">
     <asp:Panel ID="Panel4" runat="server" Width="100%">
          <table style=" Width:100%;"  border="0" >
         <tr>
             <td  > 
                 <asp:Label ID="Label5" runat="server" Font-Bold="true" ForeColor="#000066" Text="निवडा"></asp:Label>
                </td><td></td>
             <td >
     <asp:DropDownList ID="DropDownList3" runat="server"  AutoPostBack="true" Height="25px" Width="95%"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
         <asp:ListItem Selected="True">Select</asp:ListItem>      
         <asp:ListItem>All Applications</asp:ListItem>
         <asp:ListItem>Date Wise All Applications</asp:ListItem>
         <asp:ListItem>Date Wise Department Applications</asp:ListItem>
     </asp:DropDownList>
             
          
          
                 
                 <td></td>
                     
                                 <td >
                                     <asp:Label ID="Label11" runat="server" ForeColor="#000066" Font-Bold="true" Text="From"></asp:Label> </td><td></td>
                                     <td>
                                         
                                     <asp:TextBox ID="TextBox1" runat="server" Enabled="false" AutoPostBack="True" Height="20px" 
                                         Width="85%" TargetControlID="TextBox1" OnTextChanged="TextBox1_TextChanged"  TextMode="Date"></asp:TextBox>
                                     
                                            
                                     </td><td></td>
                                     <td>
                                     <asp:Label ID="Label17" runat="server" ForeColor="#000066" Font-Bold="true" Text="To"></asp:Label>
                                     </td><td></td>
                                     <td>
                                         
                                     <asp:TextBox ID="TextBox2" runat="server" Enabled="false" AutoPostBack="True" Height="20px" 
                                          Width="85%" OnTextChanged="TextBox2_TextChanged" TextMode="Date"></asp:TextBox>
                                         
                                                
                                 </td>

                     
                <td > <asp:Label ID="Label2" ForeColor="#000066" Font-Bold="true" runat="server" Text="विभाग"></asp:Label></td><td></td>
                <td valign="middle" class="style3">
                    
                    <asp:DropDownList ID="DropDownList4" 
                     runat="server" Enabled="false"  AutoPostBack="True" Height="25px" Width="85%" 
                     OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" >
                 <asp:ListItem Selected="True">Select</asp:ListItem>
                       <asp:ListItem>प्रशासन व आस्थापना</asp:ListItem>
                        <asp:ListItem>संपादन (Procurement)</asp:ListItem>
                    <asp:ListItem>माहिती तंत्रज्ञान</asp:ListItem>
                    <asp:ListItem>वित्त व लेखा </asp:ListItem>
                    <asp:ListItem>अटल  अर्थसहाय्य योजना</asp:ListItem>
                    <asp:ListItem>ॲग्री बिझिनेस स्टार्टअप प्रशिक्षण</asp:ListItem>
                    <asp:ListItem>NBFC (Loan)</asp:ListItem>
                   <asp:ListItem>Nabard-FPC/FPO</asp:ListItem>
                    <asp:ListItem>महाफार्म</asp:ListItem>
               <asp:ListItem>कंपनी सचिव</asp:ListItem>
                <asp:ListItem>जलसमृद्धी व्याज अर्थसहाय्य योजना </asp:ListItem>
               <asp:ListItem>ठेव संरक्षण योजना</asp:ListItem>
             <%--  <asp:ListItem>प्रशिक्षण</asp:ListItem>--%>
                <asp:ListItem>स्मार्ट प्रकल्प विभाग</asp:ListItem>
                <asp:ListItem> VSTF प्रकल्प</asp:ListItem>
            <asp:ListItem>अटल महापनन अभियान (क्रॉप शॉप )</asp:ListItem>
                 </asp:DropDownList>
                                                 
                 </td>
                 </tr>
            
              </table>
     </asp:Panel>
     </div>

     <asp:Panel ID="panel8" runat="server" style="width: 100%; height: 250px; overflow: scroll">
          <div class="gridviewalign">

       <asp:GridView ID="gvExport" runat="server"  EnableViewState="False" Width="100%"  AutoGenerateColumns="False" CellPadding="1"  ForeColor="Black" GridLines="Both" OnPageIndexChanging="gvExport_PageIndexChanging"  >

            <RowStyle  ForeColor="#333333" Font-Size="Small" />
           <%-- <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />--%>

            <AlternatingRowStyle BackColor="White" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="आवक क्रमांक  " readonly="true">
                <HeaderStyle Font-Bold="True" Font-Size="Small" />
                <ItemStyle />
                </asp:BoundField>

             


                <asp:BoundField DataField="AdminRecieved_Date" DataFormatString="{0:dd/MM/yy}" HeaderText="आवक दिनांक " readonly="true">
                <ItemStyle />
                <HeaderStyle Font-Bold="True" Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="FromWhomeRecieved" HeaderText="कोणाकडून आवक पत्र आले" readonly="true">
                <FooterStyle Font-Bold="True" Font-Size="Small" />
                <HeaderStyle Font-Bold="True" Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="Subject" HeaderText="विषय " readonly="true">
                <HeaderStyle Font-Bold="True" Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="SentTo" HeaderText="विभाग " readonly="true">
                <FooterStyle Font-Bold="True" Font-Size="Small" />
                <HeaderStyle Font-Bold="True" Font-Size="Small" />
                </asp:BoundField>

                    <asp:BoundField DataField="PersonName" HeaderText="कोणाला पत्र देण्यात आले " readonly="true"  >
                        <HeaderStyle Font-Size="Small"  Font-Bold="True"/>
                        <ItemStyle />
                        </asp:BoundField>
                   
                      <asp:BoundField DataField="Status" HeaderText="सध्याची स्थिती  " readonly="true">
                <FooterStyle Font-Bold="True" Font-Size="Small" />
                <HeaderStyle Font-Bold="True" Font-Size="Small" />
                </asp:BoundField>
               
            </Columns>
            <EditRowStyle BackColor="Black" />
            <FooterStyle ForeColor="Black" />
            <HeaderStyle ForeColor="Black" Width="200px" />
            <PagerStyle ForeColor="black" HorizontalAlign="Center" />
            <RowStyle HorizontalAlign="Center" />

         </asp:GridView>

         </div>
     </asp:Panel>





      
       
        <div style="text-align:center;">
                        <asp:Button ID="btnexcel" runat="server" onclick="Button1_Click" Text="Export Excel" Height="30px" Width="132px" BackColor="#003366" Font-Bold="True" ForeColor="White" />
    <%--&nbsp;<asp:Button ID="btnpdf" runat="server"  Text="Export PDF"  Height="30px" Width="132px" OnClick="Button2_Click" BackColor="#003366" Font-Bold="True" ForeColor="White" />--%>
        </div>

    
       



 
    
        <asp:Panel ID="Panel1" runat="server" Visible="true">
            <div class="gridviewalign">
          <%-- <asp:GridView ID="GridView2" runat="server" EnableViewState="False" Width="100%"  AutoGenerateColumns="False" CellPadding="1"  ForeColor="Black" GridLines="Both"   >

            <RowStyle  ForeColor="#333333" Font-Size="Small" />
         

            <AlternatingRowStyle BackColor="White" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="इनवर्ड  नंबर " readonly="true">
                <HeaderStyle Font-Bold="True" Font-Size="Small" />
                <ItemStyle />
                </asp:BoundField>
                <asp:BoundField DataField="AdminRecieved_Date" DataFormatString="{0:dd/MM/yy}" HeaderText="इनवर्ड दिनांक " readonly="true">
                <ItemStyle />
                <HeaderStyle Font-Bold="True" Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="FromWhomeRecieved" HeaderText="कोणाकडून इनवर्ड अँप्लिकेशन आले" readonly="true">
                <FooterStyle Font-Bold="True" Font-Size="Small" />
                <HeaderStyle Font-Bold="True" Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="Subject" HeaderText="विषय " readonly="true">
                <HeaderStyle Font-Bold="True" Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="SentTo" HeaderText="विभाग " readonly="true">
                <FooterStyle Font-Bold="True" Font-Size="Small" />
                <HeaderStyle Font-Bold="True" Font-Size="Small" />
                </asp:BoundField>
               
                <asp:BoundField DataField="Remark" HeaderText="शेरा ">
                <HeaderStyle Font-Bold="True" Font-Size="Small" />
                </asp:BoundField>
               
            </Columns>
            <EditRowStyle BackColor="Black" />
            <FooterStyle ForeColor="Black" />
            <HeaderStyle ForeColor="Black" Width="200px" />
            <PagerStyle ForeColor="black" HorizontalAlign="Center" />
            <RowStyle HorizontalAlign="Center" />

         </asp:GridView>--%>
                
                </div>
        </asp:Panel>
</asp:Content>

