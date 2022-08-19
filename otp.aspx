<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="otp.aspx.cs" Inherits="project2114.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="body.css" />
    <style>
    
.loginbox {
    width: 320px;
    height: 300px;
    background-color: black;
    color: white;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
    margin-top:60px;
}
.avatar {
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}
h1 {
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}

.loginbox p {
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.loginbox input {
    width: 100%;
    margin-bottom: 0px;
}

.tb {
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    width: 230px;
    color: #fff;
    font-size: 16px;
    margin-bottom: 0;
    padding: 0;
}

.bt {
    border: none;
    outline: none;
    height: 40px;
    width: 100%;
    background: #fb2525;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
    margin-top: 20px;
}

    .bt:hover {
        cursor: pointer;
        background: #ffc107;
        color: #000;
    }

.loginbox a {
    color: white;
    text-decoration: none;
    font-size: 12px;
    line-height: 20px;
    
}

    .loginbox a:hover {
        color: #ffc107;
    }


    </style>
</head>
<body>
        <form id="form1" runat="server">

                 <div>
        <header>            
             <ul class="main-nav">    
                <li><asp:Button ID="Button2" runat="server" CssClass="btn" Text="HOME" CausesValidation="False" OnClick="Button2_Click"/></li>
                <li><asp:Button ID="Button3" runat="server" CssClass="btn" Text="REGISTER"  CausesValidation="False" OnClick="Button3_Click" /></li>
                <li><asp:Button ID="Button5" runat="server" CssClass="btn" Text="CONTACT US"  CausesValidation="False" OnClick="Button5_Click" /></li>
             </ul>  
        </header>
    </div>
             <div class="loginbox"> 
        
           <asp:Image ID="Image1" runat="server" ImageUrl="~/images/avatar.png" CssClass="avatar" />
            
            <h1>Enter Your OTP</h1>
  


            OTP<asp:TextBox ID="TextBox1" CssClass="tb" placeholder="Enter OTP" runat="server"></asp:TextBox>

              <asp:Button ID="Button1" runat="server" Text="Verify" CssClass="bt" OnClick="Button1_Click"/>
             </div>
        </form>

       
   
</body>
</html>
