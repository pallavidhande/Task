<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="meeting.aspx.cs" Inherits="Task.meeting" EnableEventValidation="false" %>




<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <script type = "text/javascript" >
     function preventBack() { window.history.forward(); }
     setTimeout("preventBack()", 0);
     window.onunload = function () { null };
        </script>

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="personal-style.css">

    <style>
        body{
	/*background-image:url(https://wallpapertag.com/wallpaper/full/c/a/a/157415-simplistic-wallpapers-1920x1080-lockscreen.jpg)*/
}
#login-name{
font-size: 30px;
font-family: arabic typesetting;
border-bottom-style: ridge;
color:forestgreen;
}
#login{
background-color:rgba(13,13,13,0.2);
min-height:400px;
padding: 40px 80px 40px 80px;
box-shadow: -10px -10px 9px #33cc33;

}
.user{
font-size: 18px;

font-family: arabic typesetting;

color: white;
}
.Mainlable{
font-size: 18px;

font-family: arabic typesetting;

color: Black;
}
.Mainlable1{
font-size: 23px;

font-family: arabic typesetting;

color: black;
}
#iconn{

background-color: #5cb85c;
border-color: #4cae4c;
color: white;

}
#iconn1{

background-color: #5cb85c;
border-color: #4cae4c;
color: white;

}

#text1{

	border-radius: 0;
	height: 40px;
}
#text2{

	border-radius: 0;
	height: 40px;
}

.btn{
	width: 50%;
	float: left;
	height: 40px;
	font-size: 18px;
}
        .imglogo{
            margin-left:20%;
        }

        .hypback{
            margin-left:70%;
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
        .auto-style2 {
            position: relative;
            display: table;
            border-collapse: separate;
            left: 0px;
            top: 0px;
        }
        .auto-style3 {
            font-weight: bold;
            color: #CC3300;
        }
    </style>





  

</head>
<body background="2277.jpg">
    <form id="form1" runat="server">
      <div class="container">
<br/>

<center> <b id="login-name">
                    &nbsp;Describe Your Meeting Here..... 
    <br />
    <br />
    </b> </center><div class="row">		


<div class="input-group">
&nbsp;&nbsp;
<asp:Label ID="Label3" runat="server" Text="Name of Employee : " CssClass="Mainlable"></asp:Label><asp:Label ID="Label1" runat="server" Text="Label" CssClass="Mainlable"></asp:Label>        
 </div>
<div class="input-group">
&nbsp;&nbsp;
<asp:Label ID="Label4" runat="server" Text="Branch : " CssClass="Mainlable"></asp:Label> <asp:Label ID="Label2" runat="server" Text="Label" CssClass="Mainlable"></asp:Label>        
 </div>
              <br />
              <span class="auto-style3">&nbsp;Please add Meeting attended with meeting minitues</span><br />
    <br />

    
 
&nbsp;&nbsp;&nbsp;&nbsp;

    
 
<label  class="Mainlable">Meeting Date :</label>
<div class="auto-style2">
	
     &nbsp;&nbsp;&nbsp;&nbsp;
	
     <asp:TextBox ID="txtmeeting" runat="server" Height="27px" TextMode="Date" Width="136px"></asp:TextBox>
     &nbsp;
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmeeting" ErrorMessage ="*" Font-Bold="True" ForeColor="#FF3300" Font-Size="X-Large"></asp:RequiredFieldValidator>
     <br />
     

&nbsp;<div class="auto-style2">
	
      <label  class="Mainlable">&nbsp;&nbsp;&nbsp;&nbsp; Minutes of Meeting / Describe meeting purpose </label>
&nbsp;<div class="input-group">
	
     &nbsp;&nbsp;&nbsp;
	
     <asp:TextBox ID="txtremarkmeeting" runat="server" Height="41px" TextMode="MultiLine" Width="627px"></asp:TextBox>
     &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtremarkmeeting"  ErrorMessage="*" Font-Bold="True" ForeColor="#FF3300" Font-Size="X-Large"></asp:RequiredFieldValidator>
             <br />
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
         <label  class="Mainlable">&nbsp;&nbsp;&nbsp;&nbsp;Attach Proceedings and compliences&nbsp; here... </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:FileUpload ID="FileUpload1" runat="server" />
             <br />
&nbsp;&nbsp;&nbsp;
     <br />
    <br />
    <div class="form-group">
<%--<asp:Button ID="btnlogin" runat="server" Text="Submit" class="btn btn-success" style="border-radius:0px;" OnClick="btnlogin_Click1" Width="304px"/>--%>
        <div class="form-group">

<asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-success" style="border-radius:0px;" OnClick="Button1_Click" Height="36px" Width="636px"/>
          
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
 <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/back.jfif" NavigateUrl="~/ANR.aspx" ToolTip="Back">Back</asp:HyperLink>
    </div>
        
        <div>
            <br />
        <br />
     
        </div>
 </div>
 
           <div>
               
        </div>
 </div>


    </form>
  </div>
	</div>
    </form>
       <div id="footer">
            <p>
Copyright © 2018 MCDC. All Rights Reserved.</p>
        </div>
</body>
</html>


