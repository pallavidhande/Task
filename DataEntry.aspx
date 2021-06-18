<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="DataEntry.aspx.cs" Inherits="DataEntry" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="https://www.google.com/jsapi" type="text/javascript">
    </script>
    <script lang="javascript" type="text/javascript">
        google.load("elements", "1", { packages: "transliteration" });

        function onLoad() {
            var options = {
                //Source Language
                sourceLanguage: google.elements.transliteration.LanguageCode.ENGLISH,
                // Destination language to Transliterate
                destinationLanguage: [google.elements.transliteration.LanguageCode.MARATHI],
                shortcutKey: 'ctrl+g',
                transliterationEnabled: true
            };

            var control = new google.elements.transliteration.TransliterationControl(options);
            control.makeTransliteratable(['<%=TextBox8.ClientID%>']);
            control.makeTransliteratable(['<%=TextBox7.ClientID%>']);
            control.makeTransliteratable(['<%=TextBox5.ClientID%>']);
        }
        google.setOnLoadCallback(onLoad);
</script>
    <style>
        .auto-style5 {
            width: 16.5%;
        }
        .auto-style6 {
            width: 35%;
        }
        
       
        .auto-style4 {
            width: 100%;
            height: 271px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="margin-left:75%; margin-top:1%;">
        <table>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink9" runat="server" ForeColor="#000099" NavigateUrl="~/GenerateReport.aspx">Download Report</asp:HyperLink>
                </td>
                <td></td><td></td>
                <td>
        <asp:HyperLink ID="HyperLink1" runat="server"  ToolTip="Back" Font-Bold="True" ForeColor="Black" ImageHeight="20px" ImageUrl="~/img/backarrow.png" ImageWidth="20px" NavigateUrl="~/WebForm1.aspx">Back</asp:HyperLink>
                    </td><td></td><td></td><td>
        <asp:HyperLink ID="HyperLink6" runat="server"  ToolTip="Logout" ImageHeight="20px" ImageUrl="~/img/logout.png" ImageWidth="20px" NavigateUrl="~/WebForm1.aspx">HyperLink</asp:HyperLink>
           </td>
                        </tr>
                </table>
    </div>
     <div style="text-align:center;   margin-top:0%;">
         <asp:Label ID="Label13" runat="server" CssClass="inwardLbl" BackColor="White"  ForeColor="#003366" Text="INWARD ENTRY" Font-Bold="True"  ></asp:Label>
     </div>
 <div style="background-color:#000066; margin-left:23%; margin-right:23%; margin-top:2%; height:80%;">

           <table border="1" 
                   style="border-left: thin none White; border-right: thin none White; border-top: thin solid White; border-bottom: thin none White; " class="auto-style4" >
           <tr>
           <td align="right" colspan="2" >
            <asp:Label ID="Label8" runat="server" Font-Bold="False"  ForeColor="White" Text="आवक क्र . "></asp:Label>
           </td>
           <td align="left" colspan="2" class="style3"> 
              
            <asp:TextBox ID="TextBox2" runat="server" 
                   ToolTip="Enter Inward Number"  BackColor="White"   AutoPostBack="true" Font-Bold="True" 
                   Height="25px" Width="30%"  ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox2" ValidationGroup="gp1" ErrorMessage="**" ToolTip="कृपया आवक क्रमांक टाका" ForeColor="White"></asp:RequiredFieldValidator>
             
                                                
               </td>
           </tr>
           <tr>
           <td align="right" class="auto-style5" >
           <asp:Label ID="Label9"  runat="server" Font-Bold="False" ForeColor="White" Text="दिनांक "></asp:Label>
           </td>
           <td class="auto-style6" >
           <asp:TextBox ID="TextBox1" runat="server" 
                   ToolTip="Enter Date"  BackColor="White" Font-Bold="True" 
                   Height="25px" Width="78%"  TextMode="Date" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox1" ToolTip="कृपया दिनांक टाका" ErrorMessage="**" ValidationGroup="gp1" ForeColor="White"></asp:RequiredFieldValidator>
               <%--<ajaxToolkit:CalendarExtender ID="CalendarExtender2"  runat="server" TargetControlID="TextBox1" Format="dd/MM/yyyy"/>--%>
           </td>
           <td align="right" >
           <asp:Label ID="Label6" runat="server" ForeColor="White" Text="पत्राचा दिनांक " Font-Bold="False"></asp:Label>
           </td>
           <td >

           <asp:TextBox ID="TextBox6" runat="server" 
                   ToolTip="Enter Date "  BackColor="White" Font-Bold="True" 
                   Height="25px" Width="78%" TextMode="Date"></asp:TextBox>
               <%--<ajaxToolkit:CalendarExtender ID="CalendarExtender1"  runat="server" TargetControlID="TextBox6" Format="dd/MM/yyyy"/>--%>
                  <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox6" ToolTip="" ErrorMessage="**" ValidationGroup="gp1" ForeColor="White"></asp:RequiredFieldValidator>--%>
 
           </td>
           </tr>
           <tr>
           <td align="right" class="auto-style5" >
           <asp:Label ID="Label15" runat="server" Font-Bold="False" ForeColor="White" Text="कोणाकडून पत्र आले त्याचे नाव "></asp:Label>
           </td>
           <td valign="middle" class="auto-style6" >
           <asp:TextBox ID="TextBox8" runat="server" BackColor="White" Font-Bold="True"  
                   Height="25px" Width="78%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox8" ToolTip="कृपया कोणाकडून पत्र आले त्याचे नाव टाका" ErrorMessage="**" ValidationGroup="gp1" ForeColor="White"></asp:RequiredFieldValidator>
           </td>
           <td align="right" >
           <asp:Label ID="Label7" runat="server" Font-Bold="False" ForeColor="White" Text="पत्ता "></asp:Label>
           </td>
           <td valign="baseline">
           <asp:TextBox ID="TextBox7" runat="server" BackColor="White" TextMode="MultiLine" 
                   Font-Bold="True" Height="45px" Width="78%"/>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="**" ToolTip="कृपया पत्ता टाका" ValidationGroup="gp1" ForeColor="White"></asp:RequiredFieldValidator>
           </td>
           </tr>
           <tr>
           <td align="right" class="auto-style5" >
           <asp:Label ID="Label10" runat="server" Font-Bold="False" Text="विभाग आणि कर्मचाऱ्याचे नाव " ForeColor="White"></asp:Label>
           </td>
           <td class="auto-style6" >
           <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True"  Height="26px" 
                   Width="78%" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnTextChanged="DropDownList1_TextChanged">
                   <asp:ListItem Text="Select" Selected="True">Select</asp:ListItem>
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
               <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="DropDownList1"
                 ValidationGroup="gp1" ForeColor="White" InitialValue="Select" ErrorMessage="**"  ToolTip="कृपया विभाग निवडा"></asp:RequiredFieldValidator>
               <br />
               <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True"  Height="26px" 
                   Width="78%">
               </asp:DropDownList>
               <br />
           </td>

           <td align="right" >
           <asp:Label ID="Label12" runat="server" Font-Bold="False" ForeColor="White" Text="विषय"></asp:Label>
           </td>
           <td align="bottom" >
           <asp:TextBox ID="TextBox5" runat="server" BackColor="White" Font-Bold="True" 
                   TextMode="MultiLine" Height="45px" Width="78%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="**" ToolTip="कृपया विषय टाका" ValidationGroup="gp1" ForeColor="White"></asp:RequiredFieldValidator>
           </td>
           </tr>
           <tr>
           <td align="right" colspan="2">
               <asp:Button ID="Button2" runat="server" ForeColor="#000066" BackColor="White"  OnClick="Button2_Click" ValidationGroup="gp1" Text="Save"  Width="99px" />
               <br />
           </td>
           <td colspan="2">
           &nbsp;&nbsp;
               
               <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="White" NavigateUrl="~/NewdataEntry.aspx" Font-Underline="True">Edit Your Records</asp:HyperLink>
        
               </td>
           </tr>
           </table>
           </div> 
        
</asp:Content>

