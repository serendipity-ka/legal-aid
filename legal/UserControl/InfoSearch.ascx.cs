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

public partial class UserControl_InfoSearch : System.Web.UI.UserControl
{
    static string infoType = "";   　　　　//信息类型
    Operation operation = new Operation();

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["key"] = txtKey.Text;
        if (Page.Title.Length == 5)                 //主页中查询
        {
            infoType = "今日说法";
            Response.Redirect("../InfoAdd.aspx");
            return;
        }
        else
        {
            infoType = Page.Title.Substring(7, 4);
        }
        
        switch (infoType)                           //分页中信息查询
        {
            case "今日说法":
                Response.Redirect("../InfoAdd.aspx");
                break;
            case "宪法及宪法相关法律":
                Response.Redirect("../InfoAdd.aspx");
                break;
            case "民商法":
                Response.Redirect("../InfoAdd.aspx");
                break;
            case "行政法":
                Response.Redirect("../InfoAdd.aspx");
                break;
            case "刑事法":
                Response.Redirect("../InfoAdd.aspx");
                break;
            case "经济法":
                Response.Redirect("../InfoAdd.aspx");
                break;
            case "社会保障法":
                Response.Redirect("../InfoAdd.aspx");
                break;
            case "诉讼及非诉讼体系法":
                Response.Redirect("../InfoAdd.aspx");
                break;
            case "国际法":
                Response.Redirect("../InfoAdd.aspx");
                break;
            case "仲裁法":
                Response.Redirect("../InfoAdd.aspx");
                break;
            
        }
    }
}
