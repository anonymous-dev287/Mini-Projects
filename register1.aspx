<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register1.aspx.cs" Inherits="project2114.register1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="register1.css">
    <link rel="stylesheet" type="text/css" href="body.css">


</head>
<body>

        <form id="form1" runat="server">  

            <div>
        <header>            
             <ul class="main-nav">    
                <li><asp:Button ID="Button2" runat="server" CssClass="btn" Text="HOME" CausesValidation="False" OnClick="Button2_Click"/></li>
                <li><asp:Button ID="Button3" runat="server" CssClass="btn" Text="REGISTER"  CausesValidation="False" OnClick="Button3_Click"/></li>
                <li><asp:Button ID="Button5" runat="server" CssClass="btn" Text="CONTACT US"  CausesValidation="False" OnClick="Button5_Click"/></li>
              </ul>  
        </header>
    </div>

            <div class="register1">

         <asp:Image ID="Image1" runat="server" ImageUrl="~/images/avatar.png" CssClass="avatar" />
         <h1>Register Here</h1>

     

                     <p>Mobile Number </p>
                        <asp:TextBox ID="TextBox1"  CssClass="tbFormat" placeholder="Enter Your Mobile number" runat="server" MaxLength="10" TextMode="Number"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="TextBox1" CssClass="validateFormat"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="validateFormat" ErrorMessage="Invalid Mobile Number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    <p>Address </p> 
                      <asp:TextBox ID="TextBox2" CssClass="tbFormat" placeholder="Enter Your address"  runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine"></asp:TextBox> 
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <p>Pincode</p>  
                        <asp:TextBox ID="TextBox3"  CssClass="tbFormat" placeholder="Enter Your Pincode" runat="server" TextMode="Number" ></asp:TextBox>             
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                         <p>Question</P>  
                        <asp:DropDownList ID="DropDownList1" CssClass="ddl" runat="server">  
                            <asp:ListItem>What is Your Nick Name?</asp:ListItem>  
                            <asp:ListItem>Who Is Your Bestfriend?</asp:ListItem>  
                            <asp:ListItem>Who is your favorite Actor?</asp:ListItem>  
                        </asp:DropDownList>
                      <p>Answer</p>  
                        <asp:TextBox ID="TextBox4"  CssClass="tbFormat" placeholder="Enter Your Answer " runat="server" TextMode="MultiLine"></asp:TextBox>  
                    
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    
                     <asp:Button ID="Button1" runat="server" CssClass="btFormat" Text="Register" OnClick="Button1_Click" />
                  </div>
              </form>
      

</body>
</html>
