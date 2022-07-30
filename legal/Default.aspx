<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" Title="法律援助信息网" %>
<asp:Content runat="server" ID="head1" ContentPlaceHolderID="head">
    <link href="css/index.css" rel="stylesheet" type="text/css" />
</asp:Content>

<%@ Register Src="UserControl/RecommendInfo.ascx" TagName="RecommendInfo" TagPrefix="uc1" %>
<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1">

    <div class="row custom-show-list">
        <div class="col-sm-12 col-md-12">
            <div>
                <uc1:RecommendInfo ID="RecommendInfo1" runat="server" />
            </div>
        </div>
        <div class="col-sm-12 col-md-12 custom-content-image">
            <img src="images/newImg/pcard7.jpg"/>
        </div>
        <div class="col-sm-12 col-md-12 custom-content-info1">
            <div class="row">
                <div class="col-sm-4 col-md-4">
                    <div class="custom-left-title"><img src="../images/newImg/fk.png"/> 今日说法</div>
                    <asp:DataList ID="dlJRSF" runat="server" CssClass="hong">
                        <ItemTemplate>
                            <table align="center" cellpadding="0" cellspacing="0" width="266">
                                <tr>
                                    <td>
                                        <span class="hong" style="color: #000000">
                                        <span>『<%#DataBinder.Eval(Container.DataItem,"type") %>』</span>
                                        ·<a class="huise" href="#" onclick="SetID(<%#DataBinder.Eval(Container.DataItem,"id") %>)" data-toggle="modal" data-target="#showLeaguer"><%#DataBinder.Eval(Container.DataItem,"title") %></a></span></td>
                                </tr>
                                <tr style="color: #000000">
                                    <td>
                                        <img height="1" src="images/line.gif" width="266" /></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                    
                </div>
                <div class="col-sm-4 col-md-4">
                    <div class="custom-left-title"><img src="../images/newImg/fk.png"/> 宪法及宪法相关法律</div>
                    <asp:DataList ID="dlXF" runat="server">
                        <ItemTemplate>
                            <table align="center" cellpadding="0" cellspacing="0" width="266">
                                <tr>
                                    <td>
                                        <span class="hong" style="color: #000000">
                                        <span>『<%#DataBinder.Eval(Container.DataItem,"type") %>』</span>
                                        ·<a class="huise" href="#" onclick="SetID(<%#DataBinder.Eval(Container.DataItem,"id") %>)" data-toggle="modal" data-target="#showLeaguer"><%#DataBinder.Eval(Container.DataItem,"title") %></a></span></td>
                                </tr>
                                <tr style="color: #000000">
                                    <td>
                                        <img height="1" src="images/line.gif" width="266" /></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
            <div class="row custom-content-info2">
                <div class="col-sm-4 col-md-4">
                    <div class="custom-left-title"><img src="../images/newImg/fk.png"/> 民商法</div>
                    <asp:DataList ID="dlMSF" runat="server">
                        <ItemTemplate>
                            <table align="center" cellpadding="0" cellspacing="0" width="266">
                                <tr>
                                    <td>
                                        <span class="hong" style="color: #000000">
                                            <span>『<%#DataBinder.Eval(Container.DataItem,"type") %>』</span>
                                            ·<a class="huise" href="#" onclick="SetID(<%#DataBinder.Eval(Container.DataItem,"id") %>)" data-toggle="modal" data-target="#showLeaguer"><%#DataBinder.Eval(Container.DataItem,"title") %></a></span></td>
                                </tr>
                                <tr style="color: #000000">
                                    <td>
                                        <img height="1" src="images/line.gif" width="266" /></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div class="col-sm-4 col-md-4">
                    <div class="custom-left-title"><img src="../images/newImg/fk.png"/> 行政法</div>
                    <asp:DataList ID="dlXZF" runat="server">
                        <ItemTemplate>
                            <table align="center" cellpadding="0" cellspacing="0" width="266">
                                <tr>
                                    <td>
                                        <span class="hong" style="color: #000000">
                                            <span>『<%#DataBinder.Eval(Container.DataItem,"type") %>』</span>
                                            ·<a class="huise" href="#" onclick="SetID(<%#DataBinder.Eval(Container.DataItem,"id") %>)" data-toggle="modal" data-target="#showLeaguer"><%#DataBinder.Eval(Container.DataItem,"title") %></a></span></td>
                                </tr>
                                <tr style="color: #000000">
                                    <td>
                                        <img height="1" src="images/line.gif" width="266" /></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
            <div class="row custom-content-info3">
                <div class="col-sm-4 col-md-4">
                    <div class="custom-left-title"><img src="../images/newImg/fk.png"/> 刑事法</div>
                    <asp:DataList ID="dlXSF" runat="server">
                        <ItemTemplate>
                            <table align="center" cellpadding="0" cellspacing="0" width="266">
                                <tr>
                                    <td>
                                        <span class="hong" style="color: #000000">
                                            <span>『<%#DataBinder.Eval(Container.DataItem,"type") %>』</span>
                                            ·<a class="huise" href="#" onclick="SetID(<%#DataBinder.Eval(Container.DataItem,"id") %>)" data-toggle="modal" data-target="#showLeaguer"><%#DataBinder.Eval(Container.DataItem,"title") %></a></span></td>
                                </tr>
                                <tr style="color: #000000">
                                    <td>
                                        <img height="1" src="images/line.gif" width="266" /></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div class="col-sm-4 col-md-4">
                    <div class="custom-left-title"><img src="../images/newImg/fk.png"/> 经济法</div>
                    <asp:DataList ID="dlJJ" runat="server">
                        <ItemTemplate>
                            <table align="center" cellpadding="0" cellspacing="0" width="266">
                                <tr>
                                    <td>
                                        <span class="hong" style="color: #000000">
                                            <span>『<%#DataBinder.Eval(Container.DataItem,"type") %>』</span>
                                            ·<a class="huise" href="#" onclick="SetID(<%#DataBinder.Eval(Container.DataItem,"id") %>)" data-toggle="modal" data-target="#showLeaguer"
                                                ><%#DataBinder.Eval(Container.DataItem,"title") %></a></span></td>
                                </tr>
                                <tr style="color: #000000">
                                    <td>
                                        <img height="1" src="images/line.gif" width="266" /></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
            <div class="row custom-content-info3">
                <div class="col-sm-4 col-md-4">
                    <div class="custom-left-title"><img src="../images/newImg/fk.png"/> 社会保障法</div>
                    <asp:DataList ID="dlSHBZ" runat="server">
                        <ItemTemplate>
                            <table align="center" cellpadding="0" cellspacing="0" width="266">
                                <tr>
                                    <td>
                                        <span class="hong" style="color: #000000">
                                            <span>『<%#DataBinder.Eval(Container.DataItem,"type") %>』</span>
                                            ·<a class="huise" href="#" onclick="SetID(<%#DataBinder.Eval(Container.DataItem,"id") %>)" data-toggle="modal" data-target="#showLeaguer"><%#DataBinder.Eval(Container.DataItem,"title") %></a></span></td>
                                </tr>
                                <tr style="color: #000000">
                                    <td>
                                        <img height="1" src="images/line.gif" width="266" /></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div class="col-sm-4 col-md-4">
                    <div class="custom-left-title"><img src="../images/newImg/fk.png"/> 诉讼及非诉讼体系法</div>
                    <asp:DataList ID="dlSS" runat="server">
                        <ItemTemplate>
                            <table align="center" cellpadding="0" cellspacing="0" width="266">
                                <tr>
                                    <td>
                                        <span class="hong" style="color: #000000">
                                            <span>『<%#DataBinder.Eval(Container.DataItem,"type") %>』</span>
                                            ·<a class="huise" href="#" onclick="SetID(<%#DataBinder.Eval(Container.DataItem,"id") %>)" data-toggle="modal" data-target="#showLeaguer"><%#DataBinder.Eval(Container.DataItem,"title") %></a></span></td>
                                </tr>
                                <tr style="color: #000000">
                                    <td>
                                        <img height="1" src="images/line.gif" width="266" /></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
                  <div class="row custom-content-info4">
                <div class="col-sm-4 col-md-4">
                    <div class="custom-left-title"><img src="../images/newImg/fk.png"/> 仲裁法</div>
                    <asp:DataList ID="dlZC" runat="server">
                        <ItemTemplate>
                            <table align="center" cellpadding="0" cellspacing="0" width="266">
                                <tr>
                                    <td>
                                        <span class="hong" style="color: #000000">
                                            <span>『<%#DataBinder.Eval(Container.DataItem,"type") %>』</span>
                                            ·<a class="huise" href="#" onclick="SetID(<%#DataBinder.Eval(Container.DataItem,"id") %>)" data-toggle="modal" data-target="#showLeaguer"><%#DataBinder.Eval(Container.DataItem,"title") %></a></span></td>
                                </tr>
                                <tr style="color: #000000">
                                    <td>
                                        <img height="1" src="images/line.gif" width="266" /></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div class="col-sm-4 col-md-4">
                    <div class="custom-left-title"><img src="../images/newImg/fk.png"/> 国际法</div>
                    <asp:DataList ID="dlGJ" runat="server">
                        <ItemTemplate>
                            <table align="center" cellpadding="0" cellspacing="0" width="266">
                                <tr>
                                    <td>
                                        <span class="hong" style="color: #000000">
                                            <span>『<%#DataBinder.Eval(Container.DataItem,"type") %>』</span>
                                            ·<a class="huise" href="#" onclick="SetID(<%#DataBinder.Eval(Container.DataItem,"id") %>)" data-toggle="modal" data-target="#showLeaguer"><%#DataBinder.Eval(Container.DataItem,"title") %></a></span></td>
                                </tr>
                                <tr style="color: #000000">
                                    <td>
                                        <img height="1" src="images/line.gif" width="266" /></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
