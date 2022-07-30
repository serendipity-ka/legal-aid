using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class BackGround_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //判断用户有没有登录
        try
        {
            if (Session["UserName"] == null)
            {
                WebMessageBox.Show("请先登录！", "../Login.aspx");
            }
            else
            {
                Label1.Text = Session["UserName"].ToString();
            }
        }
        catch { }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["UserName"] = "";
        Response.Redirect("../login.aspx");    //内置Response对象Redirect方法
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../Default.aspx");
    }
}
