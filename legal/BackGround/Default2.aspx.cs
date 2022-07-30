using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class BackGround_Default2 : System.Web.UI.Page
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
        catch { };

        if (!IsPostBack) //满足这个条件后，就可以绑定数据，把他显示到GridView控件里面
        {
            GridViewBind(); //绑定操作需要定义方法
        }

    }

    public void GridViewBind() //方法是公用的，所以访问权限是public，返回值设置为void,绑定方法        
    {

        string constr = ConfigurationManager.ConnectionStrings["ConStr1"].ToString();
        using (SqlConnection con = new SqlConnection(constr))
        {
            SqlDataAdapter dp = new SqlDataAdapter("select * from tb_User ", con);
            DataSet ds = new DataSet();
            dp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            ds.Dispose();

        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex; // 获取新的代码索引
        GridViewBind(); //调用之前写的GridViewBind方法
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex; //指定当前编辑项的索引，每次随着用户的选择不同，索引值会随之变化
        GridViewBind();

    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
       
        string ID = GridView1.DataKeys[e.RowIndex].Value.ToString(); 
        string username = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString();
        string password = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString(); 

        //编写修改操作语句，定义成sql字符串
        string sqlstr = "update tb_User set username ='" + username + "', password='" + password + "' where ID=" + ID;
        string constr = ConfigurationManager.ConnectionStrings["sch01"].ToString();
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(sqlstr, con);  
        con.Open();             
        cmd.ExecuteNonQuery();  
        con.Close();
        con.Dispose(); 

      
        GridView1.EditIndex = -1;
        GridViewBind();


    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1; 
        GridViewBind();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["UserName"] = "";
        Response.Redirect("../login.aspx");   
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../Default.aspx");
    }


}