<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetPassword.aspx.cs" Inherits="project2114.forgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="forgetPassword.css">
    <link rel="stylesheet" type="text/css" href="body.css">
</head>
<body>

    
        <form id="form1" runat="server"> 
            
     <div>
        <header>            
             <ul class="main-nav">    
                <li><asp:Button ID="Button2" runat="server" CssClass="btn" Text="HOME" CausesValidation="False" OnClick="Button2_Click" /></li>
                <li><asp:Button ID="Button3" runat="server" CssClass="btn" Text="REGISTER"  CausesValidation="False" OnClick="Button3_Click" /></li>
                 <li><asp:Button ID="Button4" runat="server" CssClass="btn" Text="LOGIN"  CausesValidation="False" OnClick="Button4_Click" /></li>
                <li><asp:Button ID="Button5" runat="server" CssClass="btn" Text="CONTACT US"  CausesValidation="False" OnClick="Button5_Click" /></li>
             </ul>  
        </header>
    </div>

            <div class="forgetpassword1">

         <asp:Image ID="Image1" runat="server" ImageUrl="~/images/avatar.png" CssClass="avatar" />
         <h1>Forget Password</h1>

                     <p>E-mail</p>  
                        <asp:TextBox ID="TextBox1"  CssClass="tbFormat" placeholder="Email Address" runat="server"></asp:TextBox>  
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="validateFormat" ErrorMessage="*Required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   <p>Question</p> 
                      <asp:DropDownList ID="DropDownList1" runat="server">
                           <asp:ListItem>What is Your Nick Name?</asp:ListItem>  
                            <asp:ListItem>Who Is Your Bestfriend?</asp:ListItem>  
                            <asp:ListItem>Who is your favorite Actor?</asp:ListItem>  
                        
                     </asp:DropDownList>
                        <asp:TextBox ID="TextBox2"  CssClass="tbFormat" placeholder="Enter Your Answer" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
&nbsp;<p> Your Password</p>  
                        <asp:TextBox ID="TextBox3" CssClass="tbFormat" runat="server" Enabled="False"></asp:TextBox>
                       <asp:Button ID="Button1" runat="server" CssClass="btFormat" Text="Fetch Password" OnClick="Button1_Click" />
                </div>
            </form>
   

</body>
</html>
