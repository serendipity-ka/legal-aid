<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Consult.aspx.cs" Inherits="Consult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="one">
        <div class="two">
            <div class="three">
                <div class="four">
                    <asp:DataList ID="DataList1" runat="server" Width="767px" CssClass="auto-style1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Width="195px" Height="195px" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "path","lawer/{0}" )%>'/> />
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

