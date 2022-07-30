<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LeaguerInfo.aspx.cs" Inherits="BackGround_LeaguerInfo" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>法律援助</title>
    <script type="text/javascript" src="../Scripts/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        form{
              color:#000000;
              width:500px;
              margin: auto;
              font-size:20px;
              margin-top:20px;
              margin-left:300px;
             

       	}
        .row {
            margin-top:20px;
        }
         body{
            background-image: url('../images/newImg/bj6.jpg');
         }
         .textbox{
              border:solid 1px;
              background:rgba(0, 0, 0, 0);
         }
        button{
       border-radius:2px;
       border:solid 1px;
       background-color:transparent;
       margin-left:150px;
       margin-top:10px;
   }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div class="container">
                <div class="row">
                    <div class="col-xs-2 text-center custom-add-title"><label class="control-label">信息类别</label> </div>
                    <div class="col-xs-6">
                        <div class = "input-group">
                            <asp:DropDownList ID="ddlType" runat="server" Width="151px" CssClass="textbox">
                                <asp:ListItem>今日说法</asp:ListItem>
                                <asp:ListItem>宪法及相关法律</asp:ListItem>
                                <asp:ListItem>民商法</asp:ListItem>
                                <asp:ListItem>行政法</asp:ListItem>
                                <asp:ListItem>刑事法</asp:ListItem>
                                <asp:ListItem>经济法</asp:ListItem>
                                <asp:ListItem>社会保障法</asp:ListItem>
                                <asp:ListItem>诉讼法与非诉讼体系法</asp:ListItem>
                                <asp:ListItem>仲裁法</asp:ListItem>
                                <asp:ListItem>国际法</asp:ListItem>
                                <asp:ListItem>社会保障法</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="chkRecommend" runat="server" Text="是否为推荐信息" />
                        </div>
                    </div>
                    <div class="col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-xs-2 text-center custom-add-title"><label class="control-label">信息标题</label></div>
                    <div class="col-xs-6"> 
                        <div class = "input-group">
                            <asp:TextBox ID="txtTitle" runat="server" Width="390px" CssClass="textbox"></asp:TextBox>
                        </div>             
                    </div> 
                    <div class="col-xs-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTitle" ErrorMessage="* 必填项"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-2 text-center custom-add-title"><label class="control-label">信息内容</label> </div>
                    <div class="col-xs-6"> 
                        <div class = "input-group">
                            <asp:TextBox ID="txtInfo" runat="server" Height="138px" CssClass="textbox" Width="391px"></asp:TextBox>
                        </div>             
                    </div> 
                    <div class="col-xs-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtInfo" ErrorMessage="* 必填项"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-2 text-center custom-add-title"><label class="control-label">联系人</label></div>
                    <div class="col-xs-6"> 
                        <div class = "input-group"><asp:TextBox ID="txtLinkMan" runat="server" CssClass="textbox"></asp:TextBox></div>             
                    </div>
                    <div class="col-xs-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLinkMan" ErrorMessage="* 必填项"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-2 text-center custom-add-title"><label class="control-label">联系电话</label> </div>
                    <div class="col-xs-6"> 
                        <div class = "input-group"><asp:TextBox ID="txtTel" runat="server" CssClass="textbox"></asp:TextBox></div>           
                    </div>
                    <div class="col-xs-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTel" ErrorMessage="* 必填项"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-2 text-center custom-add-title"><label class="control-label">选择律师</label> </div>
                    <div class="col-xs-6"> 
                        <div class = "input-group">
                            <asp:DropDownList ID="ddlLawer" runat="server" Width="151px" CssClass="textbox">
                                <asp:ListItem>罗翔</asp:ListItem>
                                <asp:ListItem>撒贝宁</asp:ListItem>
                                <asp:ListItem>何炅</asp:ListItem>
                                <asp:ListItem>咔咔</asp:ListItem>
                                <asp:ListItem>何运晨</asp:ListItem>
                                <asp:ListItem>李浩源</asp:ListItem>
                                <asp:ListItem>赵今麦</asp:ListItem>
                                <asp:ListItem>白敬亭</asp:ListItem>
                                <asp:ListItem>王心凌</asp:ListItem>
                                <asp:ListItem>刘亦菲</asp:ListItem>
                                <asp:ListItem>关晓彤</asp:ListItem>
                                <asp:ListItem>&nbsp;&nbsp; /&nbsp;&nbsp; </asp:ListItem>
                            </asp:DropDownList>
                            </div>           
                    </div>
                    <div class="col-xs-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDay" ErrorMessage="* 必填项"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDay" ErrorMessage="(只能输入整数)" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-xs-2 text-center custom-add-title"><label class="control-label">有效天数</label> </div>
                    <div class="col-xs-6"> 
                        <div class = "input-group">
                            <asp:TextBox ID="txtDay" runat="server" CssClass="textbox"></asp:TextBox>
                            </div>           
                    </div>
                    <div class="col-xs-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDay" ErrorMessage="* 必填项"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtDay" ErrorMessage="(只能输入整数)" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </div>
                </div>
                <div class="row form-group"> 
                <div class="col-sm-2 col-sm-offset-2 text-center"> 
                    <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="发布信息" Height="46px" OnClick="imgBtnAdd_Click" Width="145px" ImageUrl="images/kaishifa.jpg" /> 
                    <div class="row"> </div>
                    <asp:Button ID="Button1" runat="server" Text="取消发布" Width="120px" Height="35px" CssClass="auto-style2" OnClick="Button1_Click" BackColor="#009999" Font-Size="14pt" /> 
                </div> 
                
            </div> 
        </div>
    </form>
</body>
</html>
