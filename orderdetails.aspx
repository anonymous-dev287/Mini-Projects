<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderdetails.aspx.cs" Inherits="project2114.orderdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="body.css" />

    <style type="text/css">
        .auto-style1 {
            position:absolute;
            text-align: center;
            margin-left:330px;
            margin-top:150px;
        }
        .header1{
           
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">

         <div class="header1">
                
             <ul class="main-nav">    
                 <li><asp:Button ID="Button4" runat="server" CssClass="btn" Text="ADD PRODUCT" CausesValidation="False" OnClick="Button4_Click"/></li>
                 <li><asp:Button ID="Button7" runat="server" CssClass="btn" Text="USERS"  CausesValidation="False" OnClick="Button7_Click"/></li>
                 <li><asp:Button ID="Button8" runat="server" CssClass="btn" Text="FEEDBACK"  CausesValidation="False" OnClick="Button8_Click"/></li>
                </ul>  
    
    </div>

        <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" BorderColor="#000000">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="orderid" HeaderText="Order_id" SortExpression="orderid" />
                    <asp:BoundField DataField="Product_id" HeaderText="Product_id" SortExpression="Product_id" />
                    <asp:BoundField DataField="Product_name" HeaderText="Product_name" SortExpression="Product_name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                    <asp:BoundField DataField="dateoforder" HeaderText="Date" SortExpression="dateoforder" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCart %>" SelectCommand="SELECT [orderid], [Product_id], [Product_name], [Price], [quantity], [dateoforder] FROM [orderdetails]"></asp:SqlDataSource>
    </form>
</body>
</html>
