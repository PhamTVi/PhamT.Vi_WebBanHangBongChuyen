using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_QuanLyTKAdMin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddAD_Click(object sender, EventArgs e)
    {
        string ConStr = "Data Source=LAPTOP-9AAK9CJR\\SQLEXPRESS;Initial Catalog=QL_SHOP; User ID=sa; Password=nguyenthanhan1810";
        using (SqlConnection Con = new SqlConnection(ConStr))
        {
            
            Con.Open();
            String strsel = "select count(*) from ADMIN where USENAMEAD='" + txtUsername.Text + "' and EMAILAD='" + txtEmail.Text + "' ";
            //Khai báo lệnh SQL
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Con;
            cmd.CommandText = strsel;
            int KT = (int)cmd.ExecuteScalar();
            if (KT == 1)
            {
                ClientScript.RegisterClientScriptBlock(this.Page.GetType(), "Thông báo", "<script>alert('Tên tài khoản tồn tại!');</script>");
            }
            else
            {
                cmd.CommandText = "ad_InsertAdmin";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Connection = Con;

                //Khai báo các ParameCon
                cmd.Parameters.AddWithValue("@hotenad", txtTenAD.Text);
                cmd.Parameters.AddWithValue("@ngaysinhad", txtNgaysinhAD.Text);
                cmd.Parameters.AddWithValue("@diachiad", txtDiachiAD.Text);
                cmd.Parameters.AddWithValue("@usenamead", txtUsername.Text);
                cmd.Parameters.AddWithValue("@matkhauad", txtMKAD.Text);
                cmd.Parameters.AddWithValue("@emailad", txtEmail.Text);
                cmd.Parameters.AddWithValue("@gioitinhad", txtGioitinh.Text);
                cmd.Parameters.AddWithValue("@dienthoaiad", txtDT.Text);
               
                cmd.ExecuteNonQuery();
                SqlDataSource1.Insert();
            }
            
            Con.Close();

        }
    }
}