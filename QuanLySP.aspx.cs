using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_QuanLySP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string ConStr = "Data Source=LAPTOP-9AAK9CJR\\SQLEXPRESS;Initial Catalog=QL_SHOP; User ID=sa; Password=nguyenthanhan1810";
        using (SqlConnection Con = new SqlConnection(ConStr))
        {
            //Khai báo lệnh SQL
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_InsertProduct";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Connection = Con;

            //Khai báo các ParameCon
            cmd.Parameters.AddWithValue("@tensp", txtTenSP.Text);
            cmd.Parameters.AddWithValue("@size", txtSize.Text);
            cmd.Parameters.AddWithValue("@gia", txtGiaSP.Text);
            cmd.Parameters.AddWithValue("@mota", txtMoTa.Text);
            cmd.Parameters.AddWithValue("@maloai", txtMaLoai.Text);
            cmd.Parameters.AddWithValue("@hinh", txtDuongDanHinh.Text);

            Con.Open();
            cmd.ExecuteNonQuery();
            SqlDataSource1.Insert();
            Con.Close();

        }
    }
}