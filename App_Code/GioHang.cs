using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for GioHangLike
/// </summary>
namespace App_Code
{
    public class GioHang
    {
        private int idXoa = -1;
     
        public DataTable gioHang = new DataTable();
        public void CreateaItem()
        {
            gioHang.Columns.Add("MASP");
            gioHang.Columns.Add("TENSP");
            gioHang.Columns.Add("HINH");
            gioHang.Columns.Add("GIA");
            gioHang.Columns.Add("SL");
        }
        public Boolean InsertProduct(int masp, string tensp, string hinhAnh, double gia, int SL)
        {
            Boolean flat = false;
            foreach (DataRow d in gioHang.Rows)
            {
                if (int.Parse(d[0].ToString()) == masp)
                {
                    d[4] = int.Parse(d[4].ToString()) + SL; 
                    flat = true;
                }
            }
            if (!flat && masp != idXoa)
            {
                idXoa = -1;
                DataRow dong = gioHang.NewRow();
                dong[0] = masp;
                dong[1] = tensp;
                dong[2] = hinhAnh;
                dong[3] = gia;
                dong[4] = SL;
               
                gioHang.Rows.Add(dong);
                return true;
            }
            return false;
        }
        public Boolean DeleteProduct(int masp)
        {
            foreach (DataRow d in gioHang.Rows)
            {
                if (int.Parse(d[0].ToString()) == masp)
                {
                    d.Delete();
                    return true;
                }
            }
            return false;
        }
        public int GetRow()
        {
            int a = 0;
            foreach (DataRow d in gioHang.Rows)
            {
                a = a + int.Parse(d[3].ToString()) * int.Parse(d[4].ToString()) ;
            }
            return a;
        }
    }
}
