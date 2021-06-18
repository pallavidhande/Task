<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Task.Login" EnableEventValidation="false" %>

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
        .auto-style1 {
            position: relative;
            display: table;
            border-collapse: separate;
            left: 1px;
            top: -1px;
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
    </style>





  

</head>
<body background="2277.jpg">
    <form id="form1" runat="server">
      <div class="container">
<br/>
<br/>
<br/>
<br/>

<center> <b id="login-name">
                    <asp:Image ID="Image3" runat="server" Height="59px" ImageUrl="~/mcdclogo.png" Width="59px" />
          Daily Task Monitor 
    <br />
    </b> </center><div class="row">		
<div class="col-md-6 col-md-offset-3" id="login">  
<form>


<div class="input-group">
<asp:Label ID="Label3" runat="server" Text="Name of Employee : " CssClass="Mainlable"></asp:Label><asp:Label ID="Label1" runat="server" Text="Label" CssClass="Mainlable"></asp:Label>        
 </div>
<div class="input-group">
<asp:Label ID="Label4" runat="server" Text="Branch : " CssClass="Mainlable"></asp:Label> <asp:Label ID="Label2" runat="server" Text="Label" CssClass="Mainlable"></asp:Label>        
 </div>
    <br />
<div class="form-group">
    <label class="Mainlable"> Task Assign by Head of the Department  Department </label>
<asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="Black"  AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
    <asp:ListItem>Managing Director</asp:ListItem>
    <asp:ListItem>General Manager</asp:ListItem>
    <asp:ListItem>Asst.General Manager</asp:ListItem>
    <asp:ListItem>Company Secretary</asp:ListItem>
    <asp:ListItem>State Manager</asp:ListItem>
    <asp:ListItem>Admin Officer</asp:ListItem>
    <asp:ListItem>Chief Account Officer</asp:ListItem>
<asp:ListItem>Nodal Officer</asp:ListItem>
    <asp:ListItem>Training Officer</asp:ListItem>
    <asp:ListItem>Mahafarms Officer</asp:ListItem>
    <asp:ListItem>NBFC Officer</asp:ListItem>
    <asp:ListItem>IT Expert</asp:ListItem>
    <asp:ListItem>Nabard FPO / FPC Officer</asp:ListItem>
     <asp:ListItem>Procurement Officer</asp:ListItem>
    <asp:ListItem>Chartered Accountant</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Choose Task Assign by Head of the Department  Department " ControlToValidate="RadioButtonList1" ForeColor="Red"></asp:RequiredFieldValidator>
</div>	
<label  class="Mainlable"> Task Completion Date  </label>
<div class="auto-style1">
	
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:TextBox ID="TextBox1" runat="server" DataFormatString="{0:MM/dd/yy}" AutoPostBack="True"  ></asp:TextBox>
    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server"  TargetControlID="TextBox1" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Choose Date " ControlToValidate="TextBox1" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    
</div>
 
<label  class="Mainlable"> Details of Work </label>
<div class="input-group">
	
     <asp:TextBox ID="TextBox3" runat="server" Height="45px" TextMode="MultiLine" Width="170px"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Details of Work " ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
       
<div class="input-group">
	
    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#3399FF" NavigateUrl="~/BM Decisions Sheet 2016 to 2020.pdf">Board Resolution PDF </asp:HyperLink>
   
    <br />
    <br />
    <label  class="Mainlable"> Board Resolution </label>
<div class="input-group">
	
     <asp:TextBox ID="txtboard" runat="server" Height="45px" TextMode="MultiLine" Width="170px"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Board resolution " ControlToValidate="txtboard" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <label  class="Mainlable"> Attach File Here if any  </label>
    <asp:FileUpload ID="FileUpload1" runat="server" />
     <br />
    <br />
     <label  class="Mainlable"> File related data&nbsp;&nbsp;&nbsp;  </label>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Allfiles.aspx">Click Here </asp:HyperLink>
     <br />
    <br />

    <label  class="Mainlable"> Monthly Evalution Sheet &nbsp;&nbsp;&nbsp;  </label>
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Emp_valution.aspx">Click Here </asp:HyperLink>
     <br />
    <br />
</div>
    <div class="form-group">
<%--<asp:Button ID="btnlogin" runat="server" Text="Submit" class="btn btn-success" style="border-radius:0px;" OnClick="btnlogin_Click1" Width="304px"/>--%>
        <div class="form-group">

<asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-success" style="border-radius:0px;" OnClick="Button1_Click"/>
          
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
