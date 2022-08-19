<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminsite.aspx.cs" Inherits="project2114.adminsite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="body.css">
    <link rel="stylesheet" type="text/css" href="adminsite.css">
</head>
<body>          
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCart %>" SelectCommand="SELECT * FROM [Cart]"></asp:SqlDataSource>
          
        <form id="form1" runat="server">  

     <div>
        <header>            
             <ul class="main-nav">    
                  <li><asp:Button ID="Button4" runat="server" CssClass="btn" Text="USERS"  CausesValidation="False" OnClick="Button4_Click"/></li>
                 <li><asp:Button ID="Button7" runat="server" CssClass="btn" Text="ORDERS"  CausesValidation="False" OnClick="Button7_Click"/></li>
                 <li><asp:Button ID="Button8" runat="server" CssClass="btn" Text="FEEDBACK"  CausesValidation="False" OnClick="Button8_Click"/></li>
                </ul>  
        </header>
    </div>
            
    <div class="register1">

         <asp:Image ID="Image1" runat="server" ImageUrl="~/images/avatar.png" CssClass="avatar" />
         <h1>Add Products</h1>

  
      

                     <p>Product ID </p>
                        <asp:TextBox ID="TextBox1"  CssClass="tbFormat" placeholder="Enter Product ID " runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <p>Product Name </p> 
                      <asp:TextBox ID="TextBox2" CssClass="tbFormat" placeholder="Enter Product Name" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>      
                    <p>Product Price </p>  
                        <asp:TextBox ID="TextBox3"  CssClass="tbFormat" placeholder="Enter Product Price" runat="server"></asp:TextBox>             
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    <p>Image Upload</p>
                        <asp:TextBox ID="TextBox5" CssClass="tbFormat" placeholder="Enter Image URL" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" CssClass="validateFormat" ErrorMessage="*Required"></asp:RequiredFieldValidator>
            
                        <asp:Button ID="Button1" runat="server" CssClass="btFormat"  Text="Add Product" OnClick="Button1_Click" />
        </div>
              </form>
        
   </body>
</html>
