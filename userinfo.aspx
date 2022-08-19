<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userinfo.aspx.cs" Inherits="project2114.userinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" type="text/css" href="body.css" />
    <style>
        
        .auto-style1 {
            position:absolute;
            text-align: center;
            margin-top:150px;
            margin-left:250px;
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
                 <li><asp:Button ID="Button7" runat="server" CssClass="btn" Text="ORDERS"  CausesValidation="False" OnClick="Button7_Click"/></li>
                 <li><asp:Button ID="Button8" runat="server" CssClass="btn" Text="FEEDBACK"  CausesValidation="False" OnClick="Button8_Click"/></li>
               </ul>  
    
    </div>
        
            <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server"   AutoGenerateColumns="False" CellPadding="4" DataKeyNames="email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="EMAIL" ReadOnly="True" SortExpression="email" />
                    <asp:BoundField DataField="mobile_no" HeaderText="MOBILE_NO" SortExpression="mobile_no" />
                    <asp:BoundField DataField="address" HeaderText="ADDRESS" SortExpression="address" />
                    <asp:BoundField DataField="pincode" HeaderText="PINCODE" SortExpression="pincode" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringReg %>" SelectCommand="SELECT [name], [email], [mobile_no], [address], [pincode] FROM [register]"></asp:SqlDataSource>
        
    </form>
</body>
</html>
