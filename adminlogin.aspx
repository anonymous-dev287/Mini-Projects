<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="project2114.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="adminlogin.css">
    <link rel="stylesheet" type="text/css" href="body.css">

</head>
<body>
    
        <form id="form1" runat="server">

        
            <div class="loginbox"> 
        
           <asp:Image ID="Image1" runat="server" ImageUrl="~/images/avatar.png" CssClass="avatar" />
            
            <h1>Admin Login</h1>
        
            Email<asp:TextBox ID="TextBox1" CssClass="tb" placeholder="Enter Email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" CssClass="validateFormat"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="validateFormat"></asp:RegularExpressionValidator>
           <p>Password</p>
            <asp:TextBox ID="TextBox2" CssClass="tb" placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Required" CssClass="validateFormat"></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="bt" OnClick="Button1_Click" />
         </div>
        </form>
 </body>
</html>
