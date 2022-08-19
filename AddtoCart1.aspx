<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddtoCart1.aspx.cs" Inherits="project2114.AddtoCart1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="body.css">
    <style type="text/css">

        
        
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
             * {
    margin: 0;
    padding: 0;
}
        .label1 {
            position: absolute;
            height: 100px;
            width: 200px;
            color: white;
            margin-top: 100px;
            font-size: 20px;
            margin-left: 500px;
            left: 0px;
            top: 54px;
        }

        .label{
            position:absolute;
            height:100px;
            width:500px;
            color:white;
            margin-top:117px;
            font-size:10px;
        }
        .auto-style2 {
            color: white;
            text-decoration: none;
            font-family: Roboto, sans-serif;
            font-size: 15px;
            border: 1px solid white;
            padding: 5px 20px;
            background-color: transparent;
        }
        .grid{
             position:absolute;
            margin-top:180px;
            text-align:center;
            margin-left:165px;
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

       <div class="grid">
        <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="187px" Width="1044px" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-bottom: 37">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="sno" />
                <asp:BoundField DataField="Product_id" HeaderText="Product_ID" />
                <asp:BoundField DataField="Product_name" HeaderText="Product_Name" />
                <asp:ImageField DataImageUrlField="Product_image" HeaderText="Product_Image">
                    <ControlStyle Height="200px" Width="200px" />
                </asp:ImageField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:BoundField DataField="total" HeaderText="Total" />
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                <asp:CommandField SelectText="Modify" ShowSelectButton="True" />
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
          <br />
        
        <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="Next" />
           </div>
    </form>
</body>
</html>
