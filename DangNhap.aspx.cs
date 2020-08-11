using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["QL_SPORT"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();
        //dem so thanh vien co trung dia chi email nhap tren from??
        String strsel = "select count(*) from KHACHHANG where USENAME='" + txtUsername.Text + "' and MATKHAU ='" + txtPassword.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strsel;
        int bKtra = (int)cmd.ExecuteScalar();
        if (bKtra == 1)
        {
            Session["username"] = txtUsername.Text;
            Response.Redirect("TrangChu.aspx");
        }
        else
        {
            ClientScript.RegisterClientScriptBlock(this.Page.GetType(), "Thông báo", "<script>alert('Bạn chưa đăng nhập or chưa có tai khoản');</script>");

           
        }

        cn.Close();
    }
    
}