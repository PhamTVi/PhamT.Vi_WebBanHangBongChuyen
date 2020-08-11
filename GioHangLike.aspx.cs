using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using App_Code;
public partial class GioHangLike : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["QL_SPORT"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        con.Open();
        //Kiểm tra số lượng trong giỏ hàng
        //Nếu đã sản phẩm thì mới làm tiếp
        //Còn không có sản phẩm thì hiển thị thông báo
        if (!IsPostBack )
        {
           
                try
                {
                    int id = int.Parse(Request.QueryString["ID"].ToString());
                    String strcmd = "Select MASP, TENSP, HINH, GIA from SANPHAM Where MASP = '" + id.ToString()+ "'";
                    SqlDataAdapter da = new SqlDataAdapter(strcmd, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        string name = ds.Tables[0].Rows[0][1].ToString();
                        double gia = double.Parse(ds.Tables[0].Rows[0][3].ToString());
                        string hinhAnh = ds.Tables[0].Rows[0][2].ToString();
                        int SL = 1;
                        GioHang cart = new GioHang();
                        cart = (GioHang)Session["Cart"];
                        cart.InsertProduct(id, name, hinhAnh, gia, SL);
                        Session["Cart"] = cart;

                    }
                    
                }
                catch (Exception error)
                {
                        Label5.Text = "Không có sản phẩm nào!";
                }
         
        }
        GioHang cartNew = (GioHang)Session["Cart"];
        DataTable t = cartNew.gioHang;
        GridView1.DataSource = t;
        GridView1.DataBind();
        Label5.Text = cartNew.GetRow().ToString() + " VNĐ";
        //if (cartNew.GetRow() == 0)
        //{
        //    Label1.Text = "Không có sản phẩm nào!";
        //}
        //else
        //{
        //    Label1.Text = "";
        //}
        con.Close();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GioHang cart = new GioHang();
        cart = (GioHang)Session["Cart"];
        int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
        cart.DeleteProduct(id);
        Session["Cart"] = cart;
        Page_Load(sender, e);
    }
    
}