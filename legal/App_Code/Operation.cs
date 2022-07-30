﻿using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.UI;

/// <summary>
/// Operation 网站业务流程类（封装所有业务方法）
/// </summary>
public class Operation
{
    public Operation()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    DataBase data = new DataBase();
    private SqlParameter[] tb_User;

    #region  添加法律信息
    /// <summary>
    /// 添加法律信息
    /// </summary>
    /// <param name="type">信息类别</param>
    /// <param name="title">标题</param>
    /// <param name="info">内容</param>
    /// <param name="linkMan">联系人</param>
    /// <param name="tel">联系电话</param>
    public void InsertInfo(string type, string title, string info, string linkMan, string tel)
    {
        SqlParameter[] parms ={
            data.MakeInParam("@type",SqlDbType.VarChar,50,type),
            data.MakeInParam("@title",SqlDbType.VarChar,50,title),
            data.MakeInParam("@info",SqlDbType.VarChar,600,info),
            data.MakeInParam("@linkMan",SqlDbType.VarChar,50,linkMan),
            data.MakeInParam("@tel",SqlDbType.VarChar,50,tel),
        };
        int i = data.RunProc("INSERT INTO tb_Info (type, title, info, linkman, tel, checkState) VALUES (@type, @title,@info,@linkMan, @tel,0)", parms);
    }
    #endregion

    
    #region  修改审核信息 
    /// <summary>
    /// 修改法律信息的审核状态
    /// </summary>
    /// <param name="id">信息ID</param>
    /// <param name="type">信息类型</param>
    public void UpdateInfo(int id, bool type)
    {
        if (type)
        {
            data.RunProc("UPDATE tb_Info SET checkState = 0 WHERE (ID = " + id + ")");
        }
        else
        {
            data.RunProc("UPDATE tb_Info SET checkState = 1 WHERE (ID = " + id + ")");
        }
    }
    #endregion

    //#region  修改用户审核信息 
    ///// <summary>
    ///// 修改用户信息的审核状态
    ///// </summary>
    ///// <param name="id">信息ID</param>
    ///// <param name="type">信息类型</param>
    //public void Updateusername(int id, bool type)
    //{
    //    if (State==true)
    //    {
    //        data.RunProc("UPDATE tb_User SET checkState = 0 WHERE (ID = " + id + ")");
    //    }
    //    else
    //    {
    //        data.RunProc("UPDATE tb_User SET checkState = 1 WHERE (ID = " + id + ")");
    //    }
    //}
    //#endregion

    #region  删除法律信息

    /// <summary>
    /// 删除指定的法律信息
    /// </summary>
    /// <param name="id">法律信息ＩＤ</param>
    public void DeleteInfo(string id)
    {
        int d = data.RunProc("Delete from tb_Info where id='" + id + "'");
    }

    #endregion

    #region  查询法律信息

    /// <summary>
    /// 按类型进行分页查询法律信息
    /// </summary>
    /// <param name="type">法律信息类型</param>
    /// <param name="PageIndex">页面索引序号</param>
    /// <param name="PageSize">每一页显示的记录数量</param>
    /// <param name="StartIndex">每一页显示的记录的起始索引序号</param>
    /// <param name="EndIndex">每一页显示的记录的中止索引序号</param>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet SelectInfo(string type, int PageIndex, int PageSize)
    {
        int StartIndex = ((PageIndex - 1) * PageSize) + 1;
        int EndIndex = PageIndex * PageSize;
        SqlParameter[] parms = { data.MakeInParam("@type", SqlDbType.VarChar, 50, type) };
        return data.RunProcReturn("select count(1) from tb_Info where type=@type;select * from(SELECT ID, type, title, info, linkman, tel, checkState, date,Row_Number() over(ORDER BY date DESC) as rowIndex FROM tb_info where type=@type) as Tab where rowIndex between " + StartIndex + " and " + EndIndex, parms, "tb_Info");
    }
    #endregion

    #region  查询援助信息
    /// <summary>
    /// 按类型进行分页查询援助信息
    /// </summary>
    /// <param name="type">法律信息类型</param>
    /// <param name="PageIndex">页面索引序号</param>
    /// <param name="PageSize">每一页显示的记录数量</param>
    /// <param name="StartIndex">每一页显示的记录的起始索引序号</param>
    /// <param name="EndIndex">每一页显示的记录的中止索引序号</param>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet SelectLeaguerInfo(string type, int PageIndex, int PageSize)
    {
        int StartIndex = ((PageIndex - 1) * PageSize) + 1;
        int EndIndex = PageIndex * PageSize;
        SqlParameter[] parms = { data.MakeInParam("@type", SqlDbType.VarChar, 50, type) };
        return data.RunProcReturn("select count(1) from tb_LeaguerInfo where type=@type;select * from(SELECT ID, type, title, info, linkman, tel, lawer, showdate, date, checkState, Row_Number() over(ORDER BY date DESC) as rowIndex FROM tb_LeaguerInfo where type=@type) as Tab where rowIndex between " + StartIndex + " and " + EndIndex, parms, "tb_LeaguerInfo");
    }
    #endregion

    /// <summary>
    /// 按UserName查询用户信息
    /// </summary>
    /// <param name="username">用户信息username</param>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet SelectInfo(string username)
    {
        return data.RunProcReturn("SELECT username, password,confirmPwd FROM tb_User where ID=" + username + " ORDER BY date DESC", "tb_User");
    }

#region
    /// <summary>
    /// 按ID查询法律信息
    /// </summary>
    /// <param name="id">法律信息ＩＤ</param>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet SelectInfo(int id)
    {
        return data.RunProcReturn("SELECT ID, type, title, info, linkman, tel, checkState, date FROM tb_Info where ID=" + id + " ORDER BY date DESC", "tb_Info");
    }
#endregion

    #region 
    /// <summary>
    /// 按ID查询法律发布信息
    /// </summary>
    /// <param name="id">法律信息ＩＤ</param>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet SelectLeaguerInfo(int id)
    {
        return data.RunProcReturn("SELECT ID, type, title, info, linkman, tel, lawer, showday, date, checkState FROM tb_LeaguerInfo where ID=" + id + " ORDER BY date DESC", "tb_LeaguerInfo");
    }
    #endregion

    #region 
    /// <summary>
    /// 法律信息快速检索
    /// </summary>
    /// <param name="type">信息类型</param>
    /// <param name="infoSearch">查询信息的关键字</param>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet SelectInfo(string type,string infoSearch)
    {
        SqlParameter[] pars =
        {
            data .MakeInParam("@type",SqlDbType.VarChar,50,type),
            data .MakeInParam("@info",SqlDbType.VarChar,50,"%"+infoSearch+"%")
        };
        return data.RunProcReturn("select * from tb_Info where(type=@type) and (info like @info)", pars, "tb_Info");
    }

    #endregion

    #region 添加法律援助信息

    /// <summary>
    /// 添加收费法律信息
    /// </summary>
    /// <param name="type">信息类型</param>
    /// <param name="title">信息标题</param>
    /// <param name="info">信息内容</param>
    /// <param name="linkMan">联系人</param>
    /// <param name="tel">联系电话</param>
    /// <param name="lawer">律师</param>
    /// <param name="sumDay">有效天数</param>
    
    public void InsertLeaguerInfo(string type, string title, string info, string linkMan, string tel, string lawer, DateTime sumDay, bool checkState)
    {
        SqlParameter[] parms ={
            data.MakeInParam("@type",SqlDbType.VarChar,50,type),
            data.MakeInParam("@title",SqlDbType.VarChar,50,title),
            data.MakeInParam("@info",SqlDbType.VarChar,600,info),
            data.MakeInParam("@linkMan",SqlDbType.VarChar,50,linkMan),
            data.MakeInParam("@tel",SqlDbType.VarChar,50,tel),
            data.MakeInParam("@lawer",SqlDbType.VarChar,50,lawer),
            data.MakeInParam("@showday",SqlDbType.DateTime,8,sumDay),
            data.MakeInParam("@CheckState",SqlDbType.Bit,8,checkState)
        };
        int i = data.RunProc("INSERT INTO tb_LeaguerInfo (type, title, info, linkman, tel, lawer, showday, checkState) VALUES (@type, @title,@info,@linkMan,@tel,@lawer,@showday,@CheckState)", parms);
    }
    #endregion


    #region  删除法律发布信息
    /// <summary>
    /// 删除收费法律信息
    /// </summary>
    /// <param name="id">要删除信息的ＩＤ</param>
    public void DeleteLeaguerInfo(string id)
    {
        int d = data.RunProc("Delete from tb_LeaguerInfo where id='" + id + "'");
    }
    #endregion

    #region  查询法律援助信息
    /// <summary>
    /// 按指定过期条件和分页配置显示收费信息
    /// </summary>
    /// <returns>返回DataSet结果集</returns>
    public DataSet SelectLeaguerInfo(int PageIndex, int PageSize, int ShowDayType)
    {
        int StartIndex = ((PageIndex - 1) * PageSize) + 1;
        int EndIndex = PageIndex * PageSize;
        string where = "";
        if (ShowDayType == 1)
        {
            where = "where showday >= getdate()";
        }
        else if (ShowDayType == 2)
        {
            where = "where showday < getdate()";
        }
        return data.RunProcReturn("select count(1) from tb_LeaguerInfo " + where + ";select * from (Select *,Row_Number() over(order by date desc) as RowIndex from tb_LeaguerInfo " + where + ") as tab where RowIndex between " + StartIndex + " and " + EndIndex, "tb_LeaguerInfo");
    }

    /// <summary>
    /// 查询同类型收费到期和未到期供求信息
    /// </summary>
    /// <param name="all">True显示未到期信息,False显示到期信息</param>
    /// <param name="infoType">信息类型</param>
    /// <returns>返回DataSet结果集</returns>
    public DataSet SelectLeaguerInfo(bool All, string infoType)
    {
        if (All) 　 //显示有效收费信息
            return data.RunProcReturn("SELECT  * FROM tb_LeaguerInfo WHERE type = '" + infoType + "' AND showday >= GETDATE() order by date desc","tb_LeagueInfo");
        else       //显示过期收费信息
            return data.RunProcReturn("SELECT  * FROM tb_LeaguerInfo WHERE type = '" + infoType + "' AND showday < GETDATE() order by  date desc", "tb_LeagueInfo");
    }







    /// <summary>
    /// 查询显示‘按类型未过期推荐信息’或‘所有的未过期推荐信息’
    /// </summary>
    /// <param name="infoType">信息类型</param>
    /// <param name="checkState">True按类型显示未过期推荐信息  False显示所有未过期推荐信息</param>
    /// <returns></returns>
    public DataSet SelectLeaguerInfo(string infoType, bool checkState)
    {
        if (checkState) 　 //按类型未过期推荐信息
            return data.RunProcReturn("SELECT top 20 * FROM tb_LeaguerInfo WHERE (type = '" + infoType + "') AND (showday >= GETDATE()) AND (CheckState = '" + checkState + "') ORDER BY date DESC", "tb_LeaguerInfo");
        else　　　　　　　//显示未过期推荐信息
            return data.RunProcReturn("SELECT top 10 * FROM tb_LeaguerInfo WHERE (showday >=GETDATE()) AND (CheckState = '" + !checkState + "') ORDER BY date DESC", "tb_LeaguerInfo");
    }
    /// <summary>
    /// 查询同类型收费到期和未到期供求信息(前Ｎ条信息)
    /// </summary>
    /// <param name="all">True显示有效收费信息,False显示过期收费信息</param>
    /// <param name="infoType">信息类型</param>
    /// <param name="top">获取前Ｎ条信息</param>
    /// <returns></returns>
    public DataSet SelectLeaguerInfo(bool All, string infoType, int top)
    {
        if (All) 　　　　 //显示有效收费信息
            return data.RunProcReturn("Select top(" + top + ") * from tb_LeaguerInfo where type='" + infoType + "' and showday >= getdate() order by date desc", "tb_LeaguerInfo");
        else　　　　　　　//显示过期收费信息
            return data.RunProcReturn("select top(" + top + ") * from tb_LeaguerInfo where type='" + infoType + "' and showday<getdate() order by date desc", "tb_LeaguerInfo");
    }
    /// <summary>
    /// 根据ＩＤ查询收费供求信息
    /// </summary>
    /// <param name="id">供求信息ＩＤ</param>
    /// <returns></returns>
    public DataSet SelectLeaguerInfo(string id)
    {
        return data.RunProcReturn("Select * from tb_LeaguerInfo where id='" + id + "' order by date desc", "tb_LeaguerInfo");
    }

    /// <summary>
    /// 根据ID修改收费供求信息是否为推荐信息
    /// </summary>
    /// <param name="id">供求信息ID</param>
    public void UpdateLeaguerInfo(string id, bool CheckState)
    {
        if (CheckState)
        {
            data.RunProcReturn("update tb_LeaguerInfo set CheckState=0 where id=" + id + "", "tb_LeaguerInfo");
        }
        else
        {
            data.RunProcReturn("update tb_LeaguerInfo set CheckState=1 where id=" + id + "", "tb_LeaguerInfo");
        }
    }

    #endregion

    #region  分页设置绑定
    /// <summary>
    /// 绑定DataList控件，并且设置分页
    /// </summary>
    /// <param name="infoType">信息类型</param>
    /// <param name="infoKey">查询的关键字（如果为空，则查询所有）</param>
    /// <param name="currentPage">当前页</param>
    /// <param name="PageSize">每页显示数量</param>
    /// <returns>返回PagedDataSource对象</returns>

   
    public PagedDataSource PageDataListBind(string infoType,string infoKey,int currentPage,int PageSize)
    {
        PagedDataSource pds = new PagedDataSource();

        pds.DataSource = SelectInfo(infoType, infoKey).Tables[0].DefaultView;
        /*pds.DataSource = SelectInfo(infoType, 2, 10).Tables[0].DefaultView;*/     //将查询结果绑定在分页数据源上
        pds.AllowPaging = true;                                                 //允许分页
        pds.PageSize = PageSize;                                                //设置每页显示的页数
        pds.CurrentPageIndex = currentPage - 1;                                 //设置当前页
        return pds;
    }

    #endregion



    #region 后台登录

    public DataSet Login(string user, string pwd)
    {
        SqlParameter[] parms ={
            data.MakeInParam("@sysName",SqlDbType.VarChar,20,user),
            data.MakeInParam("@sysPwd",SqlDbType.VarChar,20,pwd)
        };
        return data.RunProcReturn("Select * from tb_Power where sysName=@sysName and sysPwd=@sysPwd", parms, "tb_Power");
    }
    #endregion

    //#region 后台注册信息录入数据库
    /// <summary>
    /// 添加注册信息
    /// </summary>
    /// <param name="sysName">用户名</param>
    /// <param name="sysPwd">密码</param>

    public void InsertUser(string sysName, string sysPwd, string sysNPwd)
    {
        SqlParameter[] parms =
        {
            data.MakeInParam("@sysName",SqlDbType.VarChar,20,sysName),
            data.MakeInParam("@sysPwd",SqlDbType.VarChar,20,sysPwd),
            data.MakeInParam("@sysNPwd",SqlDbType.VarChar,20,sysNPwd),
        };
        int i = data.RunProc(" INSERT INTO tb_User( sysName,sysPwd,sysNPwd) VALUES (@sysName,@sysPwd,0,@sysNPwd) ", parms);
    }
    ////#endregion

    //#region 前台用户登录首页
    public DataSet Login2(string user, string pwd)
    {
        SqlParameter[] parms ={
            data.MakeInParam("@username",SqlDbType.VarChar,50,user),
            data.MakeInParam("@password",SqlDbType.VarChar,50,pwd)
        };
        return data.RunProcReturn("Select * from tb_User where username=@username and password=@password", parms, "tb_User");
    }
    //#endregion




    //#region  添加用户信息
    /// <summary>
    /// 添加法律信息
    /// </summary>
    /// <param name = "username" > 用户名称 </ param >
    /// < param name="password">用户密码</param>
    /// <param name = "confirmPwd" > 确认密码 </ param >
    /// < param name="linkMan">联系人</param>
    /// <param name = "tel" > 联系电话 </ param >
    public void InsertInfo(string username, string password, string confirmPwd)
    {
        SqlParameter[] parms ={
            data.MakeInParam("@username",SqlDbType.VarChar,50,username),
            data.MakeInParam("@password",SqlDbType.VarChar,50,password),
            data.MakeInParam("@confirmPwd",SqlDbType.VarChar,50,confirmPwd)

        };
        int i = data.RunProc("INSERT INTO tb_user (username, password, confirmPwd) VALUES (@username, @password,@confirmPwd,0)", parms);
    }
    //#endregion
    public int Register(string user, string pwd)
    {
        SqlParameter[] parms ={
            data.MakeInParam("@sysName",SqlDbType.VarChar,50,user),
            data.MakeInParam("@sysPwd",SqlDbType.VarChar,50,pwd)

        };
        return data.RunProc("insert into tb_Power values(@sysName, @sysPwd)", parms);
    }

    public int Register(string user, string pwd,string NPwd)
    {
        SqlParameter[] parms ={
            data.MakeInParam("@username",SqlDbType.VarChar,50,user),
            data.MakeInParam("@password",SqlDbType.VarChar,50,pwd),
            data.MakeInParam("@confirmPwd",SqlDbType.VarChar,50,NPwd)

        };
        return data.RunProc("insert into tb_User values(@username, @password,@confirmPwd)", parms);
    }
}


