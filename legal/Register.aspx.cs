using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    Operation operation = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        String user = sysName.Text.Trim();
        String pwd = sysPwd.Text.Trim();
        
        operation.Register(user, pwd);
        WebMessageBox.Show("注册成功", "Login.aspx");
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        sysName.Text = "";//文本为空
        sysPwd.Text = "";
       
    }
}