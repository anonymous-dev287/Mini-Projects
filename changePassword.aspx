<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changePassword.aspx.cs" Inherits="project2114.changePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="changePassword.css">

</head>
<body>
    <div class="changepassword1">

         <asp:Image ID="Image1" runat="server" ImageUrl="~/images/avatar.png" CssClass="avatar" />
         <h1>Change Your Password</h1>

        <form id="form1" runat="server">  
                     <p>E-mail</p>  
                        <asp:TextBox ID="TextBox1"  CssClass="tbFormat" placeholder="Email Address" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>  
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="validateFormat" ErrorMessage="*Required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   <p>Password </p> 
                      <asp:TextBox ID="TextBox2" CssClass="tbFormat" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>  
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                 <p> New Password </p> 
                      <asp:TextBox ID="TextBox3" CssClass="tbFormat" placeholder="New Password" TextMode="Password" runat="server"></asp:TextBox>  
                  
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                  
                    <p>Confirm Password</p>  
                        <asp:TextBox ID="TextBox4"  CssClass="tbFormat" placeholder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>             
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" CssClass="validateFormat" ErrorMessage="*Required"></asp:CompareValidator>
                   <asp:Button ID="Button1" runat="server" CssClass="btFormat" Text="Change Password" OnClick="Button1_Click" />
            </form>
   </div>
</body>
</html>
