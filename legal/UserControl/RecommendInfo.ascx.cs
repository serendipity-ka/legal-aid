﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class UserControl_RecommendInfo : System.Web.UI.UserControl
{
    Operation operation = new Operation();
    static string infoType = "";   　　　　//信息类型
    protected DataSet ds = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Title != "法律援助信息网")
        {
            infoType = Page.Title.Substring(7, 4);
            ds = operation.SelectLeaguerInfo(infoType, true);
        }
        else
        {
            ds = operation.SelectLeaguerInfo(infoType, false);
        }
    }
}
