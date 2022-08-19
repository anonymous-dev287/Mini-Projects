<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="project2114.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="body.css">
    <link rel="stylesheet" type="text/css" href="userlogin.css">
</head>
<body>
   
    
        <form id="form1" runat="server">

    <div>
        <header>            
             <ul class="main-nav">    
                <li><asp:Button ID="Button2" runat="server" CssClass="btn" Text="HOME" OnClick="Button2_Click" CausesValidation="False"/></li>
                <li><asp:Button ID="Button3" runat="server" CssClass="btn" Text="REGISTER" OnClick="Button3_Click" CausesValidation="False"/></li>
                <li><asp:Button ID="Button4" runat="server" CssClass="btn" Text="LOGIN" OnClick="Button4_Click" CausesValidation="False"/></li>
               <li><asp:Button ID="Button5" runat="server" CssClass="btn" Text="CONTACT US" OnClick="Button5_Click" CausesValidation="False"/></li>
              </ul>  
        </header>
    </div>

             <div class="loginbox"> 

        
           <asp:Image ID="Image1" runat="server" ImageUrl="~/images/avatar.png" CssClass="avatar" />
            
            <h1>Login Here</h1>
       

            Email<asp:TextBox ID="TextBox1" CssClass="tb" placeholder="Enter Username" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" CssClass="validateFormat"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="validateFormat"></asp:RegularExpressionValidator>
           <p>Password</p>
            <asp:TextBox ID="TextBox2" CssClass="tb" placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Required" CssClass="validateFormat"></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="bt" OnClick="Button1_Click" />
           <a href="forgetPassword.aspx">Forget password?</a><br />
            <a href="register.aspx">Don't have an account?</a><br />
             <a href="homepage1.aspx">Skip Login</a>
                 </div>

        </form>

        
    
</body>
</html>
