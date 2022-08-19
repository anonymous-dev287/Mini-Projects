<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="project2114.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="body.css">
  <link rel="stylesheet" type="text/css" href="homepage.css">
</head>
<body>  
    <form id="form1" runat="server">
  
          <div>
        <header>            
             <ul class="main-nav">    
                <li><asp:Button ID="Button2" runat="server" CssClass="btn" Text="HOME"  CausesValidation="False" OnClick="Button2_Click"/></li>
                   <li><asp:Button ID="Button3" runat="server" CssClass="btn" Text="YOUR ACCOUNT"  CausesValidation="False" OnClick="Button3_Click"/></li>
                 <li><asp:Button ID="Button4" runat="server" CssClass="btn" Text="LOGOUT"  CausesValidation="False" OnClick="Button4_Click"/></li>
                 <li><asp:Button ID="Button5" runat="server" CssClass="btn" Text="CONTACT US"  CausesValidation="False" OnClick="Button5_Click" /></li>
              </ul>  
        </header>
    </div>

    <div class="hero">
       
    <h3>welcome to</h3> 
    <h1>shiv shankar lime depot</h1>
        <h2>To see the Products</h2>
       <asp:Button ID="Button1" CssClass="clickhere" Text="Click here" runat="server" OnClick="Button1_Click"/>
            </div>
 

        
    </form>
 

</body>
</html>
