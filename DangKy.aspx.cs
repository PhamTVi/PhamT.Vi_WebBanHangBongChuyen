using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        
    }
   
    protected void btnPrevious_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["QL_SPORT"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();
        //dem so thanh vien co trung dia chi email nhap tren from??
        String strsel = "select count(*) from KHACHHANG where USENAME='" + txtUserName.Text + "' and EMAIL='" + txtEmail.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strsel;
        int bKtra = (int)cmd.ExecuteScalar();
        if (bKtra == 1)
        {

            ClientScript.RegisterClientScriptBlock(this.Page.GetType(), "Thông báo", "<script>alert('Tên tài khoản tồn tại!');</script>");
        }
        else
        {
            String strcmd = "INSERT INTO KHACHHANG(HOTEN,NGAYSINH,DIACHI,USENAME,MATKHAU,EMAIL,GIOITINH,DIENTHOAI)values(N'" + txtFullName.Text + "',N'" + txtDate.SelectedDate.ToShortDateString() + "',N'" + txtAddress.Text + "',N'" + txtUserName.Text + "',N'" + txtPassword.Text + "',N'" + txtEmail.Text + "','" + RadioButtonList1.Text + "',N'" + txtPhone.Text + "' )";
            cmd.CommandText = strcmd;
            //thực thi
            int rs = cmd.ExecuteNonQuery();
            if (rs == 1)
            {
                Session["username"] = txtUserName.Text;
                Response.Redirect("TrangChu.aspx");
            }
        }

        cn.Close();
       
    }
}