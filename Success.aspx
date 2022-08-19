<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="project2114.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="body.css">
     
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 611px;
        }
        .auto-style2 {
            height: 59px;
            text-align: center;
        }
        .auto-style3 {
            height: 63px;
        }
        .auto-style4 {
            width: 100%;
            height: 134px;
            margin-top: 0px;
        }
        .auto-style5 {
            width: 660px;
        }
        .bt {
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
        }
        .bt:hover{
            background-color:yellow;
            color:#fb2525;
        }
        p{
            color:white;
        }
        .label{
            color:white;
        }
        .invoice{
            margin-top:200px;
        }
        .table
        {
            position:absolute;
            margin-top:100px;
        }
    </style>
     
</head>
<body>
    <form id="form1" runat="server">
            <div>
        <header>            
             <ul class="main-nav">    
                <li><asp:Button ID="Button3" runat="server" CssClass="btn" Text="HOME"  CausesValidation="False" OnClick="Button3_Click"/></li>
                 <li><asp:Button ID="Button7" runat="server" CssClass="btn" Text="PRODUCTS"  CausesValidation="False" OnClick="Button7_Click"/></li>
                <li><asp:Button ID="Button4" runat="server" CssClass="btn" Text="CONTACT US"  CausesValidation="False" OnClick="Button4_Click"/></li>
               <li><asp:Button ID="Button6" runat="server" CssClass="btn" Text="LOGOUT"  CausesValidation="False" OnClick="Button6_Click"/></li>
              </ul>  
        </header>
    </div>
       
       <div class="table">
        <p>
            &nbsp;</p>
        <p>
            Order Id:<asp:Label ID="Label1" CssClass="label" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="bt" OnClick="Button1_Click" Text="Download Invoice" />
        </p>
        <asp:Panel ID="Panel1" runat="server" Height="620px" Width="1471px">
            <table class="auto-style1" border="1">
                <tr>
                    <td class="auto-style2"><p>Retail Invoice</p></td>
                </tr>
                <tr>
                    <td class="auto-style3"><p>Order No:</p><asp:Label ID="Label2" CssClass="label" runat="server"></asp:Label>
                        <br />
                        <br />
                        <p>Order Date:</p><asp:Label ID="Label3" CssClass="label" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table border="1" class="auto-style4">
                            <tr>
                                <td class="auto-style5"><p>Buyer Address:</p><br />
                                    <asp:Label ID="Label4" CssClass="label" runat="server"></asp:Label>
                                </td>
                                <td><p>Seller Address: Shiv Shankar Lime Depot,<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dhan Mill Naka Shop no.03,<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Prabhadevi Road,<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mumbai-400025 </p></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="182px" Width="1423px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="sno" HeaderText="sno" />
                                <asp:BoundField DataField="Product_id" HeaderText="Product_ID" />
                                <asp:BoundField DataField="Product_name" HeaderText="Product_Name" />
                                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                                <asp:BoundField DataField="price" HeaderText="Price" />
                                <asp:BoundField DataField="total" HeaderText="Total" />
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
                    </td>
                </tr>
                <tr>
                    <td><p>Grant Total:</p><asp:Label ID="Label5" CssClass="label" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <p>
        </p>
        <p>
            &nbsp;</p>
           </div>
    </form>
</body>
</html>
