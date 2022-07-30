<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BackGround_Default" %>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>法律援助信息网「后台管理」</title>
    <script type="text/javascript" src="../Scripts/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    
    <link href="../Css/BackGround-Default.css" rel="stylesheet" type="text/css" />
   

</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
            <div class="col-lg-2" style="height:900px;background-color:#1c232f;">
                <div class="text-center" style="height:50px;line-height:50px;font-size: 14pt;">
                    <a href="#" style="text-decoration:none;color:white;display:block">          
                            法律援助后台管理
                    </a>
                </div>
                <div class="row">
                    <div style="width:100%;height:1px;background-color:black;"></div>
                </div>

                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title" style=" text-align:center">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    今日说法
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <ul class="list-group text-center">
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/BackGround/CheckInfo.aspx?id= 今日说法" Target="mainFrame" >信息列表</asp:HyperLink></li>
                                <li class="list-group-item" >
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/BackGround/DeleteInfo.aspx?id=今日说法" Target="mainFrame">信息审核</asp:HyperLink></li>
                            </ul>
                           
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title" style=" text-align:center">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    宪法及宪法相关法律
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <ul class="list-group text-center">
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/BackGround/CheckInfo.aspx?id=宪法及宪法相关法律" Target="mainFrame">信息列表</asp:HyperLink></li>
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/BackGround/DeleteInfo.aspx?id=宪法及宪法相关法律" Target="mainFrame">信息审核</asp:HyperLink></li>
                            </ul>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h4 class="panel-title" style=" text-align:center">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                     民商法
                                </a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                            <ul class="list-group text-center">
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/BackGround/CheckInfo.aspx?id=民商法" Target="mainFrame">信息列表</asp:HyperLink></li>
                                <li class="list-group-item" >
                                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/BackGround/DeleteInfo.aspx?id=民商法" Target="mainFrame">信息审核</asp:HyperLink></li>
                            </ul>
                        </div>
                    </div>

                     <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFour">
                            <h4 class="panel-title" style=" text-align:center">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    行政法
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                            <ul class="list-group text-center">
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink7" runat="server"  NavigateUrl="~/BackGround/CheckInfo.aspx?id= 行政法" Target="mainFrame">信息列表</asp:HyperLink></li>
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/BackGround/DeleteInfo.aspx?id= 行政法" Target="mainFrame">信息审核</asp:HyperLink></li>
                            </ul>
                        </div>
                    </div>
           
                         <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFive">
                            <h4 class="panel-title" style=" text-align:center">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                    刑事法
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                            <ul class="list-group text-center">
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink9" runat="server"  NavigateUrl="~/BackGround/CheckInfo.aspx?id=刑事法" Target="mainFrame">信息列表</asp:HyperLink></li>
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/BackGround/DeleteInfo.aspx?id=刑事法" Target="mainFrame">信息审核</asp:HyperLink></li>
                            </ul>
                        </div>
                    </div>
                         <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingSix">
                            <h4 class="panel-title" style=" text-align:center">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                    经济法
                                </a>
                            </h4>
                        </div>
                        <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                            <ul class="list-group text-center">
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink11" runat="server"  NavigateUrl="~/BackGround/CheckInfo.aspx?id=经济法" Target="mainFrame">信息列表</asp:HyperLink></li>
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/BackGround/DeleteInfo.aspx?id=经济法" Target="mainFrame">信息审核</asp:HyperLink></li>
                            </ul>
                        </div>
                    </div>
                         <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingSeven">
                            <h4 class="panel-title" style=" text-align:center">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                    社会保障法
                                </a>
                            </h4>
                        </div>
                        <div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
                            <ul class="list-group text-center">
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink13" runat="server"  NavigateUrl="~/BackGround/CheckInfo.aspx?id=社会保障法" Target="mainFrame">信息列表</asp:HyperLink></li>
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/BackGround/DeleteInfo.aspx?id=社会保障法" Target="mainFrame">信息审核</asp:HyperLink></li>
                            </ul>
                        </div>
                    </div>
                         <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingEight">
                            <h4 class="panel-title" style=" text-align:center">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
                                    诉讼及非诉讼体系法
                                </a>
                            </h4>
                        </div>
                        <div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEight">
                            <ul class="list-group text-center">
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink15" runat="server"  NavigateUrl="~/BackGround/CheckInfo.aspx?id=诉讼及非诉讼体系法" Target="mainFrame">信息列表</asp:HyperLink></li>
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/BackGround/DeleteInfo.aspx?id=诉讼及非诉讼体系法" Target="mainFrame">信息审核</asp:HyperLink></li>
                            </ul>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingNine">
                            <h4 class="panel-title" style=" text-align:center">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
                                    仲裁法
                                </a>
                            </h4>
                        </div>
                        <div id="collapseNine" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingNine">
                            <ul class="list-group text-center">
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink19" runat="server"  NavigateUrl="~/BackGround/CheckInfo.aspx?id=仲裁法" Target="mainFrame">信息列表</asp:HyperLink></li>
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink20" runat="server" NavigateUrl="~/BackGround/DeleteInfo.aspx?id=仲裁法" Target="mainFrame">信息审核</asp:HyperLink></li>
                            </ul>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTen">
                            <h4 class="panel-title" style=" text-align:center">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
                                    国际法
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTen" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTen">
                            <ul class="list-group text-center">
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink21" runat="server"  NavigateUrl="~/BackGround/CheckInfo.aspx?id=国际法" Target="mainFrame">信息列表</asp:HyperLink></li>
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink22" runat="server" NavigateUrl="~/BackGround/DeleteInfo.aspx?id=国际法" Target="mainFrame">信息审核</asp:HyperLink></li>
                            </ul>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingZero">
                            <h4 class="panel-title" style=" text-align:center">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseZero" aria-expanded="false" aria-controls="collapseZero">
                                     法律援助管理
                                </a>
                            </h4>
                        </div>
                        <div id="collapseZero" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingZero">
                            <ul class="list-group text-center">
                                <li class="list-group-item">
                                    <asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/BackGround/CheckInfo.aspx?id=法律援助管理" Target="mainFrame">信息列表</asp:HyperLink></li>
                                <li class="list-group-item" >
                                    <asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/BackGround/LeaguerInfoDelete.aspx?id=法律援助管理" Target="mainFrame">信息审核</asp:HyperLink></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-10" style="height:900px;background-color:#D3D3D3">
                 <div class="custom-list-title">欢迎[<asp:Label ID="Label1" runat="server" Text="Label" Font-Corlor="black" ForeColor="#3399FF"></asp:Label>]登录，您现在的位置：法律援助信息网 &gt; <span class="hong">后台管理系统</span> <span id="curNode" runat="server"></span>        
         
                </div>
                 <!-- 添加iframe框架：将CheckInfo和DeleteInfo页面显示在这里面 -->
                <div class="row"></div>
                  <div class="row"> 
                      <div class="text-right custom-header">
                          <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/newImg/admin_index.png" OnClick="ImageButton1_Click"/>
                          <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/newImg/admin_exit.png" OnClick="ImageButton2_Click"/>
                      </div>
                    <iframe id="iframe1" name="mainFrame" style="width:100%; height:850px" frameborder="0"></iframe>  
                </div>
              
            </div>
        </div>
            </div>
    </form>
</body>
</html>
