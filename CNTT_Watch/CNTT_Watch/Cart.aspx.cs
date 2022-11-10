using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch
{
    public partial class Cart : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Watch> list = (List<Watch>)Session["Cart"];
            var query = (from orderdetail in kn.OrderDetails
                         join watch in kn.Watches on orderdetail.WatchID equals watch.ID
                         select new
                         {
                             orderdetail.OrderID,
                             orderdetail.SoLuong,
                             orderdetail.Gia,
                             orderdetail.WatchID,
                             watch.Name,
                             watch.HinhAnh
                         }).OrderBy(x => x.OrderID);

            if (list != null)
            {
                double s = 0;
                for (int i = 0; i < list.Count; i++)
                {
                    
                }
                lbTamTinh.Text = s.ToString("N0");
            }
            if (!Page.IsPostBack)
            {
                dlCart.DataSource = query;
                dlCart.DataBind();
            }
        }
        protected void txtHoTen_TextChanged(object sender, EventArgs e)
        {
            if (txtHoTen.Text == "")
            {
                Response.Write("<script>alert('Họ và tên không được để trống');</script>");
                return;
            }
        }

        protected void txtSDT_TextChanged(object sender, EventArgs e)
        {
            if (txtSDT.Text == "")
            {
                Response.Write("<script>alert('Số điện thoại không được để trống');</script>");
                return;
            }
        }

        protected void txtDiaChi_TextChanged(object sender, EventArgs e)
        {
            if (txtDiaChi.Text == "")
            {
                Response.Write("<script>alert('Địa chỉ không được để trống');</script>");
                return;
            }
        }

        protected void btnUpdateCart_Click(object sender, EventArgs e)
        {

        }

        protected void btRemove_Click(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {

        }
    }
}