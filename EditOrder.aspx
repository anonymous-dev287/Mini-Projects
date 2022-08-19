<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditOrder.aspx.cs" Inherits="project2114.EditOrder" %>

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
            border: 1px solid white;
            margin-top: 92px;
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
        
        
    </style>
</head>
<body>

     
  <form id="form1" runat="server">

         <div>
        <header>            
             <ul class="main-nav">    
                <li><asp:Button ID="Button2" runat="server" CssClass="btn" Text="HOME"  CausesValidation="False" OnClick="Button2_Click"/></li>
                 <li><asp:Button ID="Button7" runat="server" CssClass="btn" Text="PRODUCTS"  CausesValidation="False" OnClick="Button7_Click"/></li>
                 <li><asp:Button ID="Button4" runat="server" CssClass="btn" Text="CONTACT US"  CausesValidation="False" OnClick="Button4_Click"/></li>
                <li><asp:Button ID="Button6" runat="server" CssClass="btn" Text="LOGOUT"  CausesValidation="False" /></li>
              </ul>  
        </header>
    </div>


        <div class="auto-style6">
        <div class="table">
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
                <td class="auto-style8">Quantity</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                    </asp:DropDownList>
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
                    <asp:Button ID="Button1" runat="server" cssClass="auto-style3" OnClick="Button1_Click" Text="OK" />
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
