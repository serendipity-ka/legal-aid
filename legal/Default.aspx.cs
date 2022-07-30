using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    Operation operation = new Operation();  //声明网站业务类对象
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)  //!IsPostBack避免重复刷新加载页面
        {
            //获取前6条分类供求信息
            dlJRSF.DataSource = operation.SelectLeaguerInfo(true, "今日说法", 6);
            dlJRSF.DataBind();
            dlXF.DataSource = operation.SelectLeaguerInfo(true, "宪法及相关宪法", 6);
            dlXF.DataBind();
            dlMSF.DataSource = operation.SelectLeaguerInfo(true, "民商法", 6);
            dlMSF.DataBind();
            dlXZF.DataSource = operation.SelectLeaguerInfo(true, "行政法", 6);
            dlXZF.DataBind();
            dlXSF.DataSource = operation.SelectLeaguerInfo(true, "刑事法", 6);
            dlXSF.DataBind();
            dlJJ.DataSource = operation.SelectLeaguerInfo(true, "经济法", 6);
            dlJJ.DataBind();
            dlSHBZ.DataSource = operation.SelectLeaguerInfo(true, "社会保障法", 6);
            dlSHBZ.DataBind();
            dlSS.DataSource = operation.SelectLeaguerInfo(true, "诉讼与非诉讼体系法", 6);
            dlSS.DataBind();
            dlZC.DataSource = operation.SelectLeaguerInfo(true, "仲裁法", 6);
            dlZC.DataBind();
            dlGJ.DataSource = operation.SelectLeaguerInfo(true, "国际法", 6);
            dlGJ.DataBind();

                 
        }
    }
}
