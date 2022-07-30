<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login2.aspx.cs" Inherits="Login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>前台用户登录</title>
    <style>
    form{
    color:#ffffff;
    width:500px;
    margin: auto;
    font-size:20px;
    margin-top:170px;
    margin-left:480px;
   
	}
   #spanpsd{
       margin-left:125px;
   }
   #spanuser{
       margin-left:110px;
   }
   div{
       margin:30px auto;
       align-content:center;
   } 
   .textbox{
       border:solid 1px;
       background:rgba(0, 0, 0, 0);
   }
   #LinkButton1{
       text-decoration:none;
       color:lavenderblush;
       margin-left:230px;
       
   }
   #Button1{
       border-radius:2px;
       border:solid 1px;
       background-color:transparent;
       margin-left:150px;
       margin-top:10px;
   }
  body{
            background-image: url('../images/newImg/bj3.jpg');
        }
  .custom-login-middle {
    background-image: url('../images/newImg/logon_middle.png');
    height: 210px;
  }
  .hd{
      font-size:30px;
  }
  
        .auto-style1 {
            width: 582px;
        }
  
        .auto-style2 {}
  
   </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <div>
            <div class="hd">
            <asp:Label ID="Label1" runat="server" Text="用户登录"></asp:Label>
            </div>
            </div>
            <br />
            <asp:Label ID="Label2" runat="server" Text="用户账户:"></asp:Label>
            <asp:TextBox ID="username" runat="server" CssClass="textbox" Height="30px" Width="240px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="用户密码:"></asp:Label>
            <asp:TextBox ID="password" runat="server" CssClass="textbox" Height="30px" Width="240px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEnter" runat="server" Text="登录" OnClick="btnEnter_Click"  Width="60px" Height="30px"  CssClass="auto-style2" />
            &nbsp;&nbsp;
            <asp:Button ID="btnReset" runat="server" Text="重置" OnClick="btnReset_Click"  Width="60px" Height="30px" CssClass="auto-style2" />
          <br />
          <br />
                <asp:HyperLink ID="HyperLink1" runat="server" class="btn-link" NavigateUrl="~/Register2.aspx">没有账号?注册</asp:HyperLink>
               
        
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" class="btn-link" NavigateUrl="~/Default.aspx">返回首页</asp:HyperLink>
        
    </form>
</body>
</html>
