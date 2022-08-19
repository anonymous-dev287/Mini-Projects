<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myaccount.aspx.cs" Inherits="project2114.myaccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="myaccount.css">
    <link rel="stylesheet" type="text/css" href="body.css">

</head>
<body>
    <form id="form1" runat="server">
         <div class="register1">

         <asp:Image ID="Image1" runat="server" ImageUrl="~/images/avatar.png" CssClass="avatar" />
         <h1>Your Account</h1>


                     <p>Name </p>
                        <asp:TextBox ID="TextBox1"  CssClass="tbFormat"  runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>

                     <p>E-mail</p>  
                        <asp:TextBox ID="TextBox4" runat="server"  CssClass="tbFormat" Enabled="False" ></asp:TextBox>  
                        
                       <p>Mobile_No </p> 
                      <asp:TextBox ID="TextBox2" CssClass="tbFormat" runat="server"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" CssClass="validateFormat" ErrorMessage="Invalid Mobile_no" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>      
                    <p>Address</p>  
                        <asp:TextBox ID="TextBox3" runat="server"  CssClass="tbFormat" TextMode="MultiLine"></asp:TextBox>             
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <p>Pincode </p>
                        <asp:TextBox ID="TextBox5"  CssClass="tbFormat"  runat="server"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" CssClass="validateFormat" ErrorMessage="Invalid Pincode" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>

                     <asp:Button ID="Button1" runat="server" CssClass="btFormat"  Text="Update" OnClick="Button1_Click"/>
                     <asp:Button ID="Button2" runat="server" CssClass="btFormat"  Text="Change Password" OnClick="Button2_Click"/>
        </div>
    </form>
</body>
</html>
