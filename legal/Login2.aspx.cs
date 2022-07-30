using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login2 : System.Web.UI.Page
{
    Operation operation = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEnter_Click(object sender, EventArgs e)
    {
        if (operation.Login2(username.Text, password.Text).Tables[0].Rows.Count > 0)  //判断用户是否合法。
        {
            Session.Add("Name", username.Text.Trim());  //将用户名称存储在Session中,用于判断非法用户进行后台。
            Response.Redirect("Default.aspx");　　//用户名称或密码正确，进入后台首页
        }
        else
        {
            WebMessageBox.Show("用户名称或密码不正确！", "Login2.aspx");
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        username.Text = "";//文本为空
        password.Text = "";//文本为空
    }

    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Register2.aspx");
    //}
}