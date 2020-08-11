using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Txtss.Text = "Xin chào" + " " + Session["username"];
        string strcn = ConfigurationManager.ConnectionStrings["QL_SPORT"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);

        //tao cmd
        String strcmd = "select * from LOAISANPHAM";

        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "abc");

        GridView1.DataSource = ds.Tables["abc"];
        GridView1.DataBind();
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Txtss.Text = "Xin chào" + " ";
    }
    protected void thongtin(object sender, EventArgs e)
    {
        Txtss.Text = "Xin chào" + " " + Session["username"];
    }
    protected void Aminn(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AdMin.aspx");
    }
}
