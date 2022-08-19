<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditOrder1.aspx.cs" Inherits="project2114.EditOrder1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="body.css" />
    <style type="text/css">
        * {
    margin: 0;
    padding: 0;
}

        .auto-style1  tbody tr:nth-of-type(even) {
           background-color:gray;
           width: 37%;
           
        }
        .auto-style1 tbody tr:nth-of-type(odd) {
            background-color: white;
            width: 37%;
        }
        .auto-style1
        {
            position:absolute;
            border: 1px solid white;
            margin-top: 52px;
            width: 924px;
            height: 308px;
            margin-left:-260px;
        }
        .table{
            position:absolute;
            width:900px;
            height:300px;
            margin-top:100px;
        }
        .auto-style3{
             border-style: none;
            border-color: inherit;
            border-width: medium;
            outline: none;
            background: #fb2525;
            color: #fff;
            border-radius: 20px;
            width:50px;
           
        }
        
        
        .auto-style5 {
            width: 384px;
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
        }
        
        
        .auto-style7 {
            width: 384px;
        }
        .auto-style8 {
            width: 506px;
        }
        
        
        .auto-style9 {
            position: absolute;
            width: 938px;
            height: 404px;
            margin-top: 100px;
            left: 579px;
            top: 27px;
        }
        .auto-style10 {
            width: 506px;
            height: 44px;
        }
        .auto-style11 {
            width: 384px;
            text-align: center;
            height: 44px;
        }
        
        
    </style>
</head>
<body>

     
  <form id="form1" runat="server">

         <div>
        <header>            
             <ul class="main-nav">    
                <li><asp:Button ID="Button2" runat="server" CssClass="btn" Text="HOME"  CausesValidation="False" OnClick="Button2_Click"/></li>
                 <li><asp:Button ID="Button7" runat="server" CssClass="btn" Text="PRODUCTS"  CausesValidation="False" OnClick="Button7_Click" /></li>
                 <li><asp:Button ID="Button4" runat="server" CssClass="btn" Text="CONTACT US"  CausesValidation="False" OnClick="Button4_Click" /></li>
                <li><asp:Button ID="Button6" runat="server" CssClass="btn" Text="LOGOUT"  CausesValidation="False" OnClick="Button6_Click" /></li>
              </ul>  
        </header>
    </div>


        <div class="auto-style6">
        <div class="auto-style9">
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style8">Serial no.</td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Product Id:</td>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Product Name:</td>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Price</td>
                <td class="auto-style5">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Quantity</td>
                <td class="auto-style11">
               
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
               
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Total Price</td>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" >
                    <asp:Button ID="Button1" runat="server" cssClass="auto-style3" Text="OK" OnClick="Button1_Click" Width="100px" Height="40px" />
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
        </div>
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
