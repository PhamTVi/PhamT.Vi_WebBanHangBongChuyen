using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using App_Code;

public partial class SanPham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strcn = ConfigurationManager.ConnectionStrings["QL_SPORT"].ToString();
            SqlConnection cn = new SqlConnection(strcn);

            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM SANPHAM, LOAISANPHAM  WHERE SANPHAM.MALOAI = LOAISANPHAM.MALOAI AND LOAISANPHAM.MALOAI = '" + Request.QueryString["ID"] + "'", cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "abc");
            SqlCommand cmd = new SqlCommand("select TENLOAI from LOAISANPHAM where LOAISANPHAM.MALOAI = '" + Request.QueryString["ID"] + "'", cn);
            cmd.CommandType = CommandType.Text;
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
                Label3.Text = dr["TENLOAI"].ToString();
            cn.Close();
            DataList1.DataSource = ds.Tables["abc"];
            DataList1.DataBind();
        }
        if (!IsPostBack)
        {
            GioHang cart = new GioHang();
            cart.CreateaItem();
            Session["Cart"] = cart;
        }
    }
}