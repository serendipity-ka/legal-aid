<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="BackGround_Default2" %>
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
                <div class="col-md-12 text-right custom-header">
                     <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/newImg/admin_index.png" OnClick="ImageButton1_Click"/>
                     <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/newImg/admin_exit.png" OnClick="ImageButton2_Click"/>
                   
                </div>
            </div>

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
                                    法律咨询管理
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
                                    法律援助管理
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
                                    社区管理
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
            <div class="col-lg-10" style="height:900px;background-color:#D3D3D3">
                 <div class="custom-list-title">欢迎[<asp:Label ID="Label1" runat="server" Text="Label" Font-Corlor="black" ForeColor="#3399FF"></asp:Label>]登录，您现在的位置：法律援助信息网 &gt; <span class="hong">后台管理系统</span> <span id="curNode" runat="server"></span>        
                
                </div>
                 <div>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"  PageSize="5" BackImageUrl="~/images/newImg/bj3.jpg" Font-Bold="False" Font-Italic="False" Height="250px" HorizontalAlign="Center" Width="500px">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="序号" ReadOnly="True" />
                    <asp:BoundField DataField="username" HeaderText="用户名称" />
                    <asp:BoundField DataField="password" HeaderText="用户密码" />
                    <asp:CommandField HeaderText="操作" ShowEditButton="True" />
                </Columns>
                    <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle BackColor="#CCCCFF" />
                    <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="最前页" />
            </asp:GridView>
                     <div class="row"></div>
                     <br />
        </div>
                <div>
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackImageUrl="~/images/newImg/bj18.jpg" DataKeyNames="ID" DataSourceID="SqlDataSource1" Font-Size="13pt" Height="500px" PageSize="4" ShowFooter="True" Width="1320px">

                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="type" HeaderText="类型" SortExpression="type" />
                            <asp:BoundField DataField="title" HeaderText="标题" SortExpression="title" />
                            <asp:BoundField DataField="info" HeaderText="内容" SortExpression="info" />
                            <asp:BoundField DataField="linkMan" HeaderText="联系人" SortExpression="linkMan" />
                            <asp:BoundField DataField="tel" HeaderText="联系电话" SortExpression="tel" />
                            <asp:BoundField DataField="lawer" HeaderText="律师" SortExpression="lawer" />
                            <asp:BoundField DataField="date" HeaderText="日期" SortExpression="date" />
                            <asp:CheckBoxField DataField="CheckState" HeaderText="审核状态" SortExpression="CheckState" />
                            <asp:CommandField HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                        <EditRowStyle BorderColor="#FFFF99" />
                        <FooterStyle HorizontalAlign="Center" />

                        <HeaderStyle BackColor="#CCCCFF" HorizontalAlign="Center" />
                    <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="最前页" />
                        <RowStyle HorizontalAlign="Center" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_AIDConnectionString %>" DeleteCommand="DELETE FROM [tb_LeaguerInfo] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tb_LeaguerInfo] ([type], [title], [info], [linkMan], [tel], [lawer], [date], [CheckState]) VALUES (@type, @title, @info, @linkMan, @tel, @lawer, @date, @CheckState)" SelectCommand="SELECT [ID], [type], [title], [info], [linkMan], [tel], [lawer], [date], [CheckState] FROM [tb_LeaguerInfo]" UpdateCommand="UPDATE [tb_LeaguerInfo] SET [type] = @type, [title] = @title, [info] = @info, [linkMan] = @linkMan, [tel] = @tel, [lawer] = @lawer, [date] = @date, [CheckState] = @CheckState WHERE [ID] = @ID">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="type" Type="String" />
                            <asp:Parameter Name="title" Type="String" />
                            <asp:Parameter Name="info" Type="String" />
                            <asp:Parameter Name="linkMan" Type="String" />
                            <asp:Parameter Name="tel" Type="String" />
                            <asp:Parameter Name="lawer" Type="String" />
                            <asp:Parameter Name="date" Type="DateTime" />
                            <asp:Parameter Name="CheckState" Type="Boolean" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="type" Type="String" />
                            <asp:Parameter Name="title" Type="String" />
                            <asp:Parameter Name="info" Type="String" />
                            <asp:Parameter Name="linkMan" Type="String" />
                            <asp:Parameter Name="tel" Type="String" />
                            <asp:Parameter Name="lawer" Type="String" />
                            <asp:Parameter Name="date" Type="DateTime" />
                            <asp:Parameter Name="CheckState" Type="Boolean" />
                            <asp:Parameter Name="ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>

            </div>
        

    </form>
</body>
</html>
