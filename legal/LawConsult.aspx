<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LawConsult.aspx.cs" Inherits="ShowPage_LawConsult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .name{
            /*text-align:center;*/
            font-size:14pt;

        }
        button{
            border-radius:2px;
            border:solid 1px;
            background-color:transparent;
            margin-left:150px;
            margin-top:10px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="custom-left-title">
                <img src="../images/newImg/fk.png"/>律师专栏
            </div>
     
        </div>
        <div>
            <table>
                <tr>
                    <td>
                         <asp:Image ID="Image1" runat="server" ImageUrl="~/images/lawer/lawer0.png" Width="150px" Height="180px" />
                    </td>
                    <td class="detail">
                        姓名：罗翔 <br />
                        性别：男 <br />
                        职位：刑法学研究所所长 <br />
                        <asp:Button ID="Button1" runat="server" Text="咨询"  OnClick="btnConsult_Click"  Width="60px" Height="30px"  CssClass="auto-style2" NavigateUrl="~/BackGround/LeaguerInfo.aspx" />
                       
                    </td>
                    <td>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/lawer/lawer1.jpg" Width="150px" Height="180px"/>
                    </td>
                   <td class="detail">
                        姓名：小红 <br />
                        性别：女 <br />
                        职位：刑法事务所律师 <br />
                        <asp:Button ID="Button2" runat="server" Text="咨询"  OnClick="btnConsult_Click"  Width="60px" Height="30px"  CssClass="auto-style2" NavigateUrl="~/BackGround/LeaguerInfo.aspx" />
                    </td>
                    <td>
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/lawer/lawer3.jpg" Width="150px" Height="180px"/>
                    </td>
                     <td class="detail">
                        姓名：安林 <br />
                        性别：女 <br />
                        职位：经济法广州研究所律师 <br />
                        <asp:Button ID="Button3" runat="server" Text="咨询"  OnClick="btnConsult_Click"  Width="60px" Height="30px"  CssClass="auto-style2" NavigateUrl="~/BackGround/LeaguerInfo.aspx" />
                    </td>
                </tr>
                
                <tr>
                    <td>
                         <asp:Image ID="Image4" runat="server" ImageUrl="~/images/lawer/lawer2.jpg" Width="150px" Height="180px" />
                    </td>
                    <td class="detail">
                        姓名：吴彦祖 <br />
                        性别：男 <br />
                        职位：劳务法事务所主办人 <br />
                        <asp:Button ID="Button4" runat="server" Text="咨询"  OnClick="btnConsult_Click"  Width="60px" Height="30px"  CssClass="auto-style2" NavigateUrl="~/BackGround/LeaguerInfo.aspx" />
                    </td>
                    <td>
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/images/lawer/lawer7.jpg" Width="150px" Height="180px"/>
                    </td>
                   <td class="detail">
                        姓名：彭于晏 <br />
                        性别：男 <br />
                        职位：商法事务所合作人 <br />
                        <asp:Button ID="Button5" runat="server" Text="咨询"  OnClick="btnConsult_Click"  Width="60px" Height="30px"  CssClass="auto-style2" NavigateUrl="~/BackGround/LeaguerInfo.aspx" />
                    </td>
                    <td>
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/images/lawer/lawer8.jpg" Width="150px" Height="180px"/>
                    </td>
                     <td class="detail">
                        姓名：尊龙 <br />
                        性别：男 <br />
                        职位：民法事务局局长 <br />
                        <asp:Button ID="Button6" runat="server" Text="咨询"  OnClick="btnConsult_Click"  Width="60px" Height="30px"  CssClass="auto-style2" NavigateUrl="~/BackGround/LeaguerInfo.aspx" />
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Image ID="Image7" runat="server" ImageUrl="~/images/lawer/lawer5.jpg" Width="150px" Height="180px" />
                    </td>
                    <td class="detail">
                        姓名：没想好 <br />
                        性别：男 <br />
                        职位：国际法事务所干事 <br />
                        <asp:Button ID="Button7" runat="server" Text="咨询"  OnClick="btnConsult_Click"  Width="60px" Height="30px"  CssClass="auto-style2" NavigateUrl="~/BackGround/LeaguerInfo.aspx" />
                    </td>
                    <td>
                        <asp:Image ID="Image8" runat="server" ImageUrl="~/images/lawer/lawer17.jpg" Width="150px" Height="180px"/>
                    </td>
                   <td class="detail">
                        姓名：洪嘉琪 <br />
                        性别：女 <br />
                        职位：婚姻法专家 <br />
                        <asp:Button ID="Button8" runat="server" Text="咨询"  OnClick="btnConsult_Click"  Width="60px" Height="30px"  CssClass="auto-style2" NavigateUrl="~/BackGround/LeaguerInfo.aspx" />
                    </td>
                    <td>
                        <asp:Image ID="Image9" runat="server" ImageUrl="~/images/lawer/lawer16.jpg" Width="150px" Height="180px"/>
                    </td>
                     <td class="detail">
                        姓名：安林 <br />
                        性别：女 <br />
                        职位：行政法学研究所事务所 <br />
                        <asp:Button ID="Button9" runat="server" Text="咨询"  OnClick="btnConsult_Click"  Width="60px" Height="30px"  CssClass="auto-style2" NavigateUrl="~/BackGround/LeaguerInfo.aspx" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

