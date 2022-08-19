<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addtocart.aspx.cs" Inherits="project2114.addtocart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="body.css">
    <style>
             * {
    margin: 0;
    padding: 0;
}

        .label{
            position:absolute;
            height:100px;
            width:500px;
            color:white;
            margin-top:117px;
            font-size:10px;
        }
        .label1{
            position:absolute;
            height:100px;
            width:200px;
            color:white;
            margin-top:100px;
            font-size:20px;
            margin-left:500px;
        }
        
         .grid{
             position:absolute;
            margin-top:180px;
            text-align:center;
        }
        
        
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            outline: none;
            height: 40px;
            width: 20%;
            background: #fb2525;
            color: #fff;
            font-size: 18px;
            border-radius: 20px;
            margin-top:10px;
        }
        .auto-style1:hover{
            background-color:yellow;
        }
        
        
        .auto-style2 {
            position: absolute;
            height: 100px;
            width: 200px;
            color: white;
            margin-top: 100px;
            font-size: 20px;
            margin-left: 500px;
            left: 3px;
            top: 56px;
            margin-bottom: 0;
        }
        .auto-style3 {
            position: absolute;
            height: 100px;
            width: 500px;
            color: white;
            margin-top: 117px;
            font-size: 10px;
            left: 0px;
            top: 27px;
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
               <li><asp:Button ID="Button6" runat="server" CssClass="btn" Text="LOGOUT"  CausesValidation="False" OnClick="Button6_Click"/></li>
              </ul>  
        </header>
    </div>

  
        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Font-Size="XX-Large" Text="Total Products in Your Cart:"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Font-Size="XX-Large" Text="Products In Your Cart:"></asp:Label>
        <br />
        <br />
        <div Class="grid">
        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" CellPadding="4" GridLines="None" OnRowDeleting="GridView1_RowDeleting1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ForeColor="#333333" Width="1181px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="Serial_No" />
                <asp:BoundField DataField="Product_id" HeaderText="Product_id" />
                <asp:BoundField DataField="Product_name" HeaderText="Product_name" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:ImageField DataImageUrlField="Product_image" HeaderText="Product_image">
                    <ControlStyle Height="200px" Width="200px" />
                </asp:ImageField>
                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                <asp:CommandField SelectText="Modify" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        
        <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="Next" />
        </div>
    </form>
</body>
</html>
