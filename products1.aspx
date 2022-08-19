<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products1.aspx.cs" Inherits="project2114.products1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" type="text/css" href="body.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 66%;
            height: 163px;
        }
        .auto-style2 {
            width: 236px;
        }
        .auto-style3 {
            margin-bottom: 0;
             border-style: none;
            border-color: inherit;
            border-width: medium;
            outline: none;
            height: 30px;
            width: 20%;
            background: #fb2525;
            color: #fff;
            font-size: 18px;
            border-radius: 20px;
        }
        .auto-style3:hover{
            background-color:#ffc107;
            color:#fb2525;
        }
        .auto-style4 {
            text-align: center;
            position:absolute;
            margin-top:135px;
            margin-left:100px;
           
        }
        
        .label{
            color:white;
        }
        p{
            color:white;
        }
       

        .auto-style6 {
            height: 42px;
            width: 191px;
        }
        .auto-style8 {
            height: 26px;
            width: 191px;
        }
        .auto-style9 {
            height: 5px;
            width: 191px;
        }
        .auto-style10 {
            text-align: center;
            height: 33px;
        }
        .auto-style11 {
            height: 27px;
            width: 191px;
        }
        .auto-style12 {
            width: 191px;
        }
      

    </style>
</head>
<body>
    <form id="form1" runat="server">

         <div>
        <header>            
             <ul class="main-nav">    
                <li><asp:Button ID="Button2" runat="server" CssClass="btn" Text="HOME"  CausesValidation="False" OnClick="Button2_Click"/></li>
                <li><asp:Button ID="Button3" runat="server" CssClass="btn" Text="LOGIN"  CausesValidation="False" OnClick="Button3_Click"/></li>
                <li><asp:Button ID="Button4" runat="server" CssClass="btn" Text="REGISTER"  CausesValidation="False" OnClick="Button4_Click"/></li>
                 <li><asp:Button ID="Button1" runat="server" CssClass="btn" Text="LOGOUT"  CausesValidation="False" OnClick="Button1_Click" /></li>
              </ul>  
        </header>
    </div>
        <div>
            <div class="auto-style4">
            <asp:DataList ID="DataList1" CssClass="datalist" runat="server" DataKeyField="Product_id" DataSourceID="SqlDataSource1" RepeatColumns="3" BorderColor="White" BorderWidth="2px" GridLines="Both" Height="16px" RepeatDirection="Horizontal" Width="16px" CellPadding="0" >
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2" rowspan="4">
                                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Product_image") %>' Width="200px" />
                            </td>
                            <td class="auto-style6"><p>Product ID:</p><asp:Label ID="Label1"  CssClass="label" runat="server" Text='<%# Eval("Product_id") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8"><p>Product Name:</p><asp:Label ID="Label2"  CssClass="label" runat="server" Text='<%# Eval("Product_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9"><p>Quantity:</p><asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="183px" style="text-align: center">1</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12"><p>Price:</p><asp:Label ID="Label3"  CssClass="label" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">
                                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Product_id")%>' CommandName="addtocart" CssClass="auto-style3" Height="51px" Text="Add to Cart" Width="277px" OnClick="Button1_Click1" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringProd %>" SelectCommand="SELECT * FROM [Cart]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
