<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginnew.aspx.cs" Inherits="Task.UpdateTask"  EnableEventValidation="false"%>

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
    /*background-image:url(https://wallpapertag.com/wallpaper/full/c/a/a/157415-simplistic-wallpapers-1920x1080-lockscreen.jpg)*/;
    
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
font-size: 20px;
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
	width: 100%;
	float: left;
	height: 40px;
	font-size: 18px;
}
        .auto-style1 {
            position: relative;
            display: table;
            border-collapse: separate;
            left: 0px;
            top: 0px;
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
          <br /> 
          <center> <b id="login-name">
                    <asp:Image ID="Image3" runat="server" Height="59px" ImageUrl="~/mcdclogo.png" Width="59px" />
              &nbsp;Login</b> 
              <br />
              <br />
          </center><div class="row">		
        </div>
	
<div class="form-group">
<label class="user"> User Name  </label>
<div class="input-group">
	<span class="input-group-addon" id="iconn"> <i class="glyphicon glyphicon-user"></i></span>

          <asp:TextBox ID="txtuserid" runat="server"  class="form-control"  placeholder="username"></asp:TextBox>
</div>	
</div>
<div class="form-group">
<label class="user"> Password </label>
<div class="auto-style1">
	<span class="input-group-addon" id="iconn1"> <i class="glyphicon glyphicon-lock"></i></span>
     <asp:TextBox ID="txtpassword" runat="server" class="form-control"  name="tl" placeholder=" Enter Password" TextMode="Password"></asp:TextBox>
</div>
</div>

<div class="form-group">

<asp:Button ID="btnlogin" runat="server" Text="Employee Login" class="btn btn-success" style="border-radius:0px;" OnClick="btnlogin_Click"/>
          <%--<asp:Button ID="btndanger" runat="server" Text="Reset" class="btn btn-danger"  style="border-radius:0px;" />--%>

    </div>

    <br/><br/><br/>
<%--    <a href="#" style="color: white; font-size: 15px; float: right; margin-right: 10px;"> Forget Password </a>
    <a href="#" style="color: white; font-size: 15px; float: right; margin-right: 10px;"> Register </a>--%>

    </form>

  </div>


	</div>

</div>


    </form>
     <div id="footer">
            <p>
Copyright © 2018 MCDC. All Rights Reserved.</p>
        </div>
</body>
</html>
