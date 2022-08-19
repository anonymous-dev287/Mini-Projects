<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact_us_1.aspx.cs" Inherits="project2114.contact_us_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="body.css" />
    <style type="text/css">
        .auto-style2 {
            width: 61%;
            height: 421px;
            color: #000000;
            background-color: none;
        }
        .auto-style3 {
            width: 308px;
        }
        .auto-style4 {
            width: 646px;
        }
        .auto-style5 {
            width: 308px;
            height: 164px;
            text-align: center;
        }
        .auto-style6 {
            width: 646px;
            height: 164px;
            
          
        }
        .auto-style7 {
            margin-bottom: 0px;
            background: #fb2525;
            color: #fff;
            border-radius: 20px;
          
        }
        .auto-style7:hover{

            background-color:yellow
        }

        .table{
            position:absolute;
            margin-top:70px;
        }
        .auto-style8 {
            position: absolute;
            margin-top: 100px;
            margin-bottom: 0px;
            left: -2px;
            top: 67px;
            width: 632px;
            height: 569px;
        }
        .label{
            position:absolute;
            margin-top:110px;
            color:white;
            Font-Size:50px;
        }
        p{
            font-size:30px;
            color:white
        }
        .auto-style9 {
            width: 308px;
            text-align: center;
        }
        .validateFormat {
            margin: 0;
            margin-top: 0px;
            color: red;
            font-style: italic;
            font-size: 12px;
        }
        .auto-style10 {
            width: 196px;
        }
    </style>
    </head>
    <body>&nbsp;<form id="form1" runat="server">

           <div>
        <header>            
             <ul class="main-nav">    
                <li><asp:Button ID="Button2" runat="server" CssClass="btn" Text="HOME"  CausesValidation="False" OnClick="Button2_Click"/></li>
                 <li><asp:Button ID="Button5" runat="server" CssClass="btn" Text="CONTACT US"  CausesValidation="False"/></li>
              </ul>  
        </header>
    </div>
        <div class="auto-style8">

            <br />
            <br />
            <asp:Label ID="Label2" runat="server" BackColor="White"></asp:Label>
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style9"><p>Your Name:</p></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" Height="36px" Width="368px" ForeColor="White"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" CssClass="validateFormat" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><p>Email:</p></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" Height="44px" Width="370px" ForeColor="White"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="validateFormat" ErrorMessage="Required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><p>Mobile No:</p></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="Transparent" Height="44px" Width="369px" ForeColor="White"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="validateFormat" ErrorMessage="Required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><p class="auto-style10">Your Message:</p></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox4" runat="server" BackColor="Transparent" Height="119px" TextMode="MultiLine" Width="370px" ForeColor="White"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="validateFormat" ErrorMessage="Required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button6" runat="server" CssClass="auto-style7" Height="47px" Text="Submit" Width="161px" OnClick="Button6_Click" />
                    </td>
                </tr>
            </table>

        </div>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCust %>" SelectCommand="SELECT * FROM [ContactDetail]"></asp:SqlDataSource>

            <asp:Label ID="Label1" runat="server" CssClass="label" Font-Bold="True" Text="Contact Us:"></asp:Label>
    </form>
</body>
</html>
