<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MDUpdation.aspx.cs" Inherits="Task.MDUpdation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
  background-color:lightgray
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
        .auto-style1 {
            height: 127px;
            width: 93%;
        }
        .auto-style4 {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
            width: 669px;
        }
        .auto-style5 {
            font-family: Castellar;
            font-weight: bold;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style4">
 


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Size="X-Large" ForeColor="Maroon" Text="Task Assign To"></asp:Label>
 


                <label for="fname">
                <br />
                <br />
                </label>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Employee Name" Font-Names="Castellar"></asp:Label>



                <br />



                <br />



                <asp:DropDownList ID="dropname" runat="server" Width="322px" Font-Bold="True" Font-Names="Calisto MT" ValidationGroup="grp1" AutoPostBack="True" OnSelectedIndexChanged="dropname_SelectedIndexChanged"></asp:DropDownList> 
    <label for="lname"><asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="dropname" InitialValue="Please select" ValidationGroup="grp1" ErrorMessage="Please select something" />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Email" Font-Names="Castellar"></asp:Label>
                &nbsp;<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                </label>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Font-Names="Castellar" Text="TASK Completition Date"></asp:Label>

                <br />

                <br />

                <asp:TextBox ID="txtdate" runat="server" TextMode="Date" Height="37px" Width="293px"></asp:TextBox>

                <label for="country">
                <br />
                <br />
                </label>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Font-Names="Castellar" Text="Task Details"></asp:Label>
                <br />
                <br />

                <asp:TextBox ID="txttask" runat="server" placeholder="Write something.." class="auto-style1" Height="55px" Width="585px"></asp:TextBox>

                <br />
                <span class="auto-style5">ReMARK if ANY</span><asp:TextBox ID="txtremark" runat="server" placeholder="Write something.." class="auto-style1" Height="55px" Width="585px"></asp:TextBox>

                <br />

                <br />

    <asp:Button ID="Button2" runat="server" Text="Submit" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="46px" Width="255px" Font-Names="Castellar" OnClick="Button2_Click"/>&nbsp;&nbsp;

    <asp:Button ID="Button1" runat="server" Text="Back"  Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="46px" Width="255px" Font-Names="Castellar" OnClick="Button1_Click1" />
            </div>
        </div>
    </form>
</body>
</html>

