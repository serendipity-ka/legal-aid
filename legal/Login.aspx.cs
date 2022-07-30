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
public partial class Login : System.Web.UI.Page
{
    Operation operation = new Operation();　//声明业务类
    Random random = new Random();     //声明随机类对象

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            lblCheckCode.Text = random.Next(1000, 9999).ToString();
    }



    protected void btnEnter_Click(object sender, EventArgs e)
    {
        if (lblCheckCode.Text.Trim() != txtCheckCode.Text.Trim())    //判断验证码
        {
            WebMessageBox.Show("输入验证码不正确！", "Login.aspx");
        }
        if (operation.Login(txtUser.Text, txtPwd.Text).Tables[0].Rows.Count > 0)  //判断用户是否合法。
        {
            Session.Add("UserName", txtUser.Text.Trim());  //将用户名称存储在Session中,用于判断非法用户进行后台。
            Response.Redirect("BackGround/Default.aspx");　　//用户名称或密码正确，进入后台首页
        }
        else
        {
            WebMessageBox.Show("用户名称或密码不正确！", "Login.aspx");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (lblCheckCode.Text.Trim() != txtCheckCode.Text.Trim())    //判断验证码
        {
            WebMessageBox.Show("输入验证码不正确！", "Login.aspx");
        }
        if (operation.Login(txtUser.Text, txtPwd.Text).Tables[0].Rows.Count > 0)  //判断用户是否合法。
        {
            Session.Add("UserName", txtUser.Text.Trim());  //将用户名称存储在Session中,用于判断非法用户进行后台。
            Response.Redirect("BackGround/Default.aspx");  //用户名称或密码正确，进入后台首页
        }
        else
        {
            WebMessageBox.Show("用户名称或密码不正确！", "Login.aspx");
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtUser.Text = "";//文本为空
        txtPwd.Text = "";
    }
}




