<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>注册</title>
     <style>
 	form{
        color:#ffffff;
        width:500px;
        margin: auto;
        font-size:20px;
        margin-top:100px;
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
            background-image: url('../images/newImg/bj10.jpg');
        }
  .custom-login-middle {
    background-image: url('../images/newImg/logon_middle.png');
    height: 210px;
  }
  .hd{
      font-size:30px;
  }
         </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <br />

             <div class="hd">
            <asp:Label ID="Label1" runat="server" Text="管理员注册"></asp:Label>
            </div>
            <br />
            <asp:Label ID="Label2" runat="server" Text="&nbsp;管&nbsp;理&nbsp;员:"></asp:Label>
            <asp:TextBox ID="sysName" runat="server"  CssClass="textbox" Height="30px" Width="240px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="sysName" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:"></asp:Label>
            <asp:TextBox ID="sysPwd" runat="server"  CssClass="textbox" Height="30px" Width="240px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="sysPwd" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
            <br />
            <br />
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click" Width="60px" Height="30px"  CssClass="auto-style2" />
            &nbsp;&nbsp;
            <asp:Button ID="btnReset" runat="server" Text="重置" OnClick="btnReset_Click" Width="60px" Height="30px"  CssClass="auto-style2" />
            <%--<asp:LinkButton ID="LinkButton1" runat="server">登录</asp:LinkButton>--%>
            <br />
            <div>
                 <asp:HyperLink ID="HyperLink1" runat="server" class="btn-link" NavigateUrl="~/Login.aspx">登录已有账号</asp:HyperLink>
                 &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" class="btn-link" NavigateUrl="~/default.aspx">返回首页</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
