<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>法律援助信息－－－后台登录</title>
    <script type="text/javascript" src="Scripts/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Css/login.css" rel="stylesheet" type="text/css"/>

</head>
<body>
    <form id="form1" runat="server">
            <div class="hd">
                 <asp:Label ID="Label1" runat="server" Text="后台开发人员登录"></asp:Label>
            </div>
            <br />
            <asp:Label ID="Label2" runat="server" Text="管理员:"></asp:Label>
            <asp:TextBox ID="txtUser" runat="server" CssClass="textbox" Height="30px" Width="240px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUser" ErrorMessage="* 必填项"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="密 &nbsp;&nbsp;&nbsp;码:"></asp:Label>
            <asp:TextBox ID="txtPwd" runat="server" CssClass="textbox" Height="30px" Width="240px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPwd" ErrorMessage="* 必填项"></asp:RequiredFieldValidator>
            <br />
            <br />  
            <asp:Label ID="Label4" runat="server" Text="验证码:"></asp:Label>
            <asp:TextBox ID="txtCheckCode" class="form-control" CssClass="textbox" Height="30px" Width="240px" runat="server"></asp:TextBox>
            <asp:Label ID="lblCheckCode" runat="server" Text="1234" Font-Size="12pt" Width="46px"></asp:Label>
            <br />
            <br />       
                <asp:Button ID="btnEnter" runat="server" Text="登录" OnClick="btnEnter_Click"  Width="60px" Height="30px"  CssClass="auto-style2" />
                &nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" Text="重置" OnClick="btnReset_Click"  Width="60px" Height="30px" CssClass="auto-style2" />
            &nbsp;&nbsp;
            <br />
            <br />
        
            <asp:HyperLink ID="HyperLink1" runat="server" class="btn-link" NavigateUrl="~/Register.aspx">[开始注册]</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;         
            <asp:HyperLink ID="HyperLink2" runat="server" class="btn-link" NavigateUrl="~/Default.aspx">[返回首页]</asp:HyperLink>              
          
    </form>
</body>
</html>
