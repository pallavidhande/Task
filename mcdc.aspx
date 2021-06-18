<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mcdc.aspx.cs" Inherits="MCDC_New" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>MCDC</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
  font-family: Arial, Helvetica, sans-serif;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Style the content */
.content {
  background-color: #ddd;
  padding: 10px;
  height: 200px; /* Should be removed. Only for demonstration */
}

/* Style the footer */
.footer {
  background-color:white;
  padding: 10px;
  text-align:center;
  color:forestgreen;
}
.grid-container {
  display: grid;
  grid-template-columns: auto auto auto auto;
  grid-gap: 10px;
  background-color:;
  padding: 10px;
}

.grid-container > div {
  background-color: rgba(255, 255, 255, 1);
  text-align: center;
  padding: 10px 0;
  font-size: 10px;
   -moz-box-shadow:    inset 0 0 20px black;
   -webkit-box-shadow: inset 0 0 20px black;
   box-shadow:         inset 0 0 20px black;
   height:200px;
   width:300px;
}

.item1 {
  grid-column: 1 / span 2
  background-color:burlywood;
}
    .auto-style1 {
        overflow: hidden;
        background-color: white;
        height: 136px;
    }
    h1 {
  text-shadow: 2px 2px 5px red;
}
    .shadow {

}
</style>
</head>
<body >
<form id="form1" runat="server">
<div class="auto-style1">
     &nbsp;
     <asp:Image ID="Image10" runat="server" Height="138px" ImageUrl="~/img/mcdcmarathi log.png" Width="398px" />                     
&nbsp;<br />
</div>
    <br />
<div class="grid-container" style="background-color:lightsteelblue">
   

  <div class="item1">
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <asp:HyperLink ID="HyperLink9" runat="server"  CssClass="shadow" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" NavigateUrl="~/AdminWeb.aspx" >प्रशासन  विभाग</asp:HyperLink></div>
  <div class="item2"><br />
      <br />
      <br />
      <br />
      <br />
      <br /><asp:HyperLink ID="HyperLink10" runat="server"  CssClass="shadow" Font-Bold="True" Font-Size="X-Large" ForeColor="#006600" NavigateUrl="http://117.217.120.22:8088/Training_WebSite.aspx" >प्रशिक्षण</asp:HyperLink></div>
  <div class="item3"><br />
      <br />
      <br />
      <br />
      <br />
      <br /><asp:HyperLink ID="HyperLink11" runat="server"  CssClass="shadow" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF6600" NavigateUrl="File_Management.aspx">अटल अर्थसहाय्य्य योजना</asp:HyperLink></div>  
      <div class="item6"><br />
      <br />
      <br />
      <br />
      <br />
      <br /><asp:HyperLink ID="HyperLink12" runat="server"  CssClass="shadow" Font-Bold="True" Font-Size="X-Large" ForeColor="#663300" NavigateUrl="http://117.217.120.22:81/Central.aspx">कॉप -शॉप</asp:HyperLink></div>
  <div class="item4"><br />
      <br />
      <br />
      <br />
      <br />
      <br /><asp:HyperLink ID="HyperLink4" runat="server" CssClass="shadow" Font-Bold="True" Font-Size="X-Large" ForeColor="#00CC66">महाफार्मस</asp:HyperLink> </div>
  <div class="item5"><br />
      <br />
      <br />
      <br />
      <br />
      <br /><asp:HyperLink ID="HyperLink15" runat="server"  CssClass="shadow" Font-Bold="True" Font-Size="X-Large" ForeColor="#990099" >NBFC (Loan)</asp:HyperLink></div>
    <div class="item4">
        <br />
      <br />
      <br />
      <br />
      <br />
      <br /> <asp:HyperLink ID="HyperLink14" runat="server"  CssClass="shadow" Font-Bold="True" Font-Size="X-Large" ForeColor="#003399" ImageUrl="" NavigateUrl="http://117.217.120.22:8083/" >Input Supply </asp:HyperLink></div>
  <div class="item5">
       <br />
      <br />
      <br />
      <br />
      <br />
      <br /><asp:HyperLink ID="HyperLink1" runat="server"  CssClass="shadow" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF9900" >नाबार्ड -FPO कार्यशाळा 
                     </asp:HyperLink></div>
  <%--<div class="item7"></div>--%>
        

</div>

<div class="footer">
  <p>Copyright © 2019 MCDC. All Rights Reserved.</p>
</div>
    </form>
</body>
</html>
