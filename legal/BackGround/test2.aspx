<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test2.aspx.cs" Inherits="BackGround_test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理</title>
    <script type="text/javascript" src="../Scripts/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2" style="height:900px;background-color:#1c232f;">
                <div class="text-center" style="height:50px;line-height:50px;">
                    <a href="#" style="text-decoration:none;color:white;display:block">后台管理</a>
                </div>
                <div class="row">
                    <div style="width:100%;height:1px;background-color:black;"></div>
                </div>

               <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title" style=" text-align:center">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    用户管理
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <ul class="list-group text-center">
                                <li class="list-group-item">用户列表</li>
                                <li class="list-group-item">信息审核</li>
                            </ul>
                           
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title" style=" text-align:center">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    信息援助管理
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <ul class="list-group text-center">
                                <li class="list-group-item">信息列表</li>
                                <li class="list-group-item">信息审核</li>
                            </ul>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h4 class="panel-title" style=" text-align:center">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    援助信息管理
                                </a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                            <ul class="list-group text-center">
                                <li class="list-group-item">信息列表</li>
                                <li class="list-group-item">信息审核</li>
                            </ul>
                        </div>
                    </div>

                     <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFour">
                            <h4 class="panel-title" style=" text-align:center">
                                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    援助信息管理
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                            <ul class="list-group text-center">
                                <li class="list-group-item" >信息列表</li>
                                <li class="list-group-item" >信息审核</li>
                            </ul>
                        </div>
                    </div>
           
                </div>
            </div>
            <div class="col-lg-10" style="height:900px;background-color:#5495ED;">

            </div>

        </div>
    </div>
        </div>
    </form>
</body>
</html>
