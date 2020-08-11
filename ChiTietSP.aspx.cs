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

public partial class ChiTietSP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strcn = ConfigurationManager.ConnectionStrings["QL_SPORT"].ToString();
            SqlConnection cn = new SqlConnection(strcn);

            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM SANPHAM, LOAISANPHAM  WHERE SANPHAM.MALOAI = LOAISANPHAM.MALOAI AND MASP = '" + Request.QueryString["ID"] + "'", cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "abc");

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