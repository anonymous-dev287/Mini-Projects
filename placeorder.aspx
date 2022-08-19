<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="placeorder.aspx.cs" Inherits="project2114.placeorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="body.css">
    <style type="text/css">
        .auto-style1{

            width: 36%;

        }
        .auto-style2 {
            width: 359px;
        }
        .auto-style3 {
            width: 1081px;
        }
        .auto-style5 {
            width: 261px;
            color:white;
        }
        .auto-style6 {
            width: 261px;
            height: 70px;
            color:white;
        }
        .auto-style7 {
            height: 70px;
           
        }

         * 
         {
            margin: 0;
            padding: 0;
         }

        .auto-style8 {
            margin-top: 0px;
            margin-bottom: 9px;
        }
        .auto-style9 {
            margin-top:0px;
            width: 32%;
            height: 82px;
        }

        .grid{
            margin-top:120px;
            text-align:center;
        }

        .label{
            position:absolute;
            height:100px;
            width:130px;
            color:white;
            margin-top:100px;
            margin-left:20px;
            font-size:20px;
        }
        p{
             position:absolute;
            height:100px;
            width:140px;
            color:white;
            margin-top:100px;
            font-size:20px;
        }

        .bt{
             border: none;
             outline: none;
             height: 40px;
             width: 20%;
             background: #fb2525;
             color: #fff;
             font-size: 18px;
             border-radius: 20px;
             margin-top:30px;
             margin-left:130px;
   
        }
        .bt:hover{
            background-color:yellow;
        }
        .tb {
             border: none;
             border-bottom: 1px solid #fff;
             background: transparent;
             outline: none;
             //height: 40px;
            width: 230px;
            color: #fff;
            font-size: 16px;
            margin-bottom:5px;
           
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
               <li><asp:Button ID="Button6" runat="server" CssClass="btn" Text="LOGOUT"  CausesValidation="False"/></li>
              </ul>  
        </header>
    </div>


        <table class="auto-style9">
            <tr>
                <td class="auto-style2"><p>order id:</p></td>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" CssClass="label" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><p>order date:</p></td>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" CssClass="label" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <div class="grid">
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style8" Height="60px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="944px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Serial no" />
                    <asp:BoundField DataField="Product_id" HeaderText="Product_id" />
                    <asp:BoundField DataField="Product_name" HeaderText="Product_name" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="total" HeaderText="Total Price" />
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
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">Enter your Address :</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb" Height="46px" TextMode="MultiLine" Width="348px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Mobile no:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb" Width="345px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" CssClass="bt" OnClick="Button1_Click" Text="Place Your Order" />
    </form>
</body>
</html>
