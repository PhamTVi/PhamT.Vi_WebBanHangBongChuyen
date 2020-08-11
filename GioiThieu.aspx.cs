using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GioiThieu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
        }
    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Visible)
        {
            TextBox1.Visible = false;
        }
        else
        {
            TextBox1.Visible = true;
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox2.Visible)
        {
            TextBox2.Visible = false;
        }
        else
        {
            TextBox2.Visible = true;
        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox3.Visible)
        {
            TextBox3.Visible = false;
        }
        else
        {
            TextBox3.Visible = true;
        }
    }
}