<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Task.Feedback" EnableEventValidation="false"%>



<!DOCTYPE html>
<html lang="en">
<head>
  <title>Ethical Assessment</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
<div class="container">
  <h2><asp:Label runat="server" Text="Ethical Assessment Form" Font-Bold="true" ForeColor="SkyBlue"></asp:Label></h2>
   <p><asp:Label runat="server" Text="We would love to hear your thoughts, suggestions, concerns or problems with anything so we can improve!" Font-Bold="true" ForeColor="LightGreen" ></asp:Label></p>


 &nbsp;<asp:Label ID="Label1" runat="server" Text="Label" CssClass="Mainlable" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300"></asp:Label>    &nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text="Label" CssClass="Mainlable" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300"></asp:Label>        

    </p>
        </div>
    <div class="form-group">
     

         <asp:Label runat="server" Text=" Select Employee Name who want to assess" Font-Bold="true" ForeColor="SkyBlue"></asp:Label>
      

        <asp:DropDownList ID="DropDownList1" class="form-control" runat="server"></asp:DropDownList>
                   

      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="form-group" runat="server">
         <asp:Label runat="server" Text="1.Punctuality in work :" Font-Bold="true" ForeColor="SkyBlue"></asp:Label>
        <asp:RadioButtonList ID="radiopan" runat="server" >
            <asp:ListItem> Bad</asp:ListItem>
             <asp:ListItem> Satisfied</asp:ListItem>
             <asp:ListItem> Average</asp:ListItem>
             <asp:ListItem> Good</asp:ListItem>
             <asp:ListItem> Very Good</asp:ListItem>
        </asp:RadioButtonList>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="*" ForeColor="Red" Font-Bold="true" Font-Size="Medium" ControlToValidate="radiopan"></asp:RequiredFieldValidator>

    </div>
    <div class="form-group" runat="server">
             <asp:Label runat="server" Text="1.Honesty :" Font-Bold="true" ForeColor="SkyBlue"></asp:Label>

         <asp:RadioButtonList ID="radiohonest" runat="server" >
            <asp:ListItem> Bad</asp:ListItem>
             <asp:ListItem> Satisfied</asp:ListItem>
             <asp:ListItem> Average</asp:ListItem>
             <asp:ListItem> Good</asp:ListItem>
             <asp:ListItem> Very Good</asp:ListItem>
        </asp:RadioButtonList>

       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="*" ForeColor="Red" Font-Bold="true" Font-Size="Medium" ControlToValidate="radiohonest"></asp:RequiredFieldValidator>

    </div>
        <div class="form-group" runat="server">
              <asp:Label runat="server" Text="3.Behaviour in Office:" Font-Bold="true" ForeColor="SkyBlue"></asp:Label>

         <asp:RadioButtonList ID="radiobehaviour" runat="server" >
             <asp:ListItem> Bad</asp:ListItem>
             <asp:ListItem> Satisfied</asp:ListItem>
             <asp:ListItem> Average</asp:ListItem>
             <asp:ListItem> Good</asp:ListItem>
             <asp:ListItem> Very Good</asp:ListItem>
            
        </asp:RadioButtonList>

       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="*" ForeColor="Red" Font-Bold="true" Font-Size="Medium" ControlToValidate="radiobehaviour"></asp:RequiredFieldValidator>

    </div>
   
        <div class="form-group" runat="server">
    <asp:Label runat="server" Text="4.Describe in few words:" Font-Bold="true" ForeColor="SkyBlue"></asp:Label>
            <br />
      <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="400px" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ErrorMessage="*" ForeColor="Red" Font-Bold="true" Font-Size="Medium" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

            <br />
    </div>
      <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" OnClick="Button1_Click1"/>
  &nbsp;
      </form>
</div>
    </form>
</body>
</html>




