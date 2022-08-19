<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="project2114.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="register.css">
    <link rel="stylesheet" type="text/css" href="body.css">
</head>
<body>

        <form id="form1" runat="server">  

     <div>
        <header>            
             <ul class="main-nav">    
                <li><asp:Button ID="Button2" runat="server" CssClass="btn" Text="HOME"  CausesValidation="False" OnClick="Button2_Click"/></li>
                <li><asp:Button ID="Button3" runat="server" CssClass="btn" Text="REGISTER"  CausesValidation="False" OnClick="Button3_Click"/></li>
                <li><asp:Button ID="Button5" runat="server" CssClass="btn" Text="CONTACT US"  CausesValidation="False" OnClick="Button5_Click"/></li>
             </ul>  
        </header>
    </div>

            
    <div class="register1">

         <asp:Image ID="Image1" runat="server" ImageUrl="~/images/avatar.png" CssClass="avatar" />
         <h1>Register Here</h1>


                     <p>Name </p>
                        <asp:TextBox ID="TextBox1"  CssClass="tbFormat" placeholder="Enter Your Full Name" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <p>Password </p> 
                      <asp:TextBox ID="TextBox2" CssClass="tbFormat" placeholder="Create a Password" TextMode="Password" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>      
                    <p>Confirm Password</p>  
                        <asp:TextBox ID="TextBox3"  CssClass="tbFormat" placeholder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>             
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" CssClass="validateFormat" ErrorMessage="*Enter Same Password"></asp:CompareValidator>
                    <p>E-mail</p>  
                        <asp:TextBox ID="TextBox4"  CssClass="tbFormat" placeholder="Email Address" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" CssClass="validateFormat" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                         <p>Gender</P>  
                        <asp:DropDownList ID="DropDownList1" CssClass="ddl" runat="server">  
                            <asp:ListItem>Male</asp:ListItem>  
                            <asp:ListItem>Female</asp:ListItem>  
                            <asp:ListItem>Others</asp:ListItem>  
                        </asp:DropDownList>
                     <asp:Button ID="Button1" runat="server" CssClass="btFormat"  Text="Next" OnClick="Button1_Click" />
        </div>
       </form>
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringReg %>" SelectCommand="SELECT * FROM [register]"></asp:SqlDataSource>
</body>
</html>
