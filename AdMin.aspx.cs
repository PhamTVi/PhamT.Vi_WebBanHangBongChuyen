using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_AdMin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["KT"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();

        String strcmd = "select count(*) from ADMIN Where USENAMEAD = '" + email.Text + "' and MATKHAUAD = '" + password.Text + "' ";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strcmd;

        int bKTra = (int)cmd.ExecuteScalar();
        if (bKTra > 0)
        {
            Session["username"] = email.Text;
            Response.Redirect("TrangChuAdmin.aspx");
        }
        else
        {
            ClientScript.RegisterClientScriptBlock(this.Page.GetType(), "Thông báo", "<script>alert('Tài khoản không tồn tại !');</script>");
        }

        cn.Close();
    }
}