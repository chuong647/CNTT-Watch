using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch.Admin
{
    public partial class ThemSanPham : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                load_ListCategory();
            }
        }
        public void load_ListCategory()
        {
            var q = from lc in kn.Categories
                    select lc;
            listThuongHieu.DataSource = q;
            listThuongHieu.DataValueField = "ID";
            listThuongHieu.DataTextField = "NameCategory";
            listThuongHieu.SelectedIndex = 6;
            listThuongHieu.DataBind();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            var q = from w in kn.Watches
                    select w;
            int checkID = q.Count();
            Watch watch = new Watch();
            if (checkID.Equals(0))
            {
                watch.ID = 1;
            }
            else
            {
                int IdMax = kn.Watches.Max(id => id.ID);
                kn.SubmitChanges();
                watch.ID = IdMax + 1;
            }
            watch.Name = txtName.Text;
            watch.CategoryID = int.Parse(listThuongHieu.SelectedValue);
            watch.SoLuong = int.Parse(txtSoLuong.Text);
            watch.Gia = int.Parse(txtGia.Text);
            watch.GiamGia = int.Parse(txtGiamGia.Text);
            watch.BaoHanh = txtBaoHanh.Text;
            watch.KieuMay = txtKieuMay.Text;
            watch.GioiTinh = listGioiTinh.SelectedValue;
            watch.KichCo = txtKichCo.Text;
            watch.DoDay = txtDoDay.Text;
            watch.ChatLieuVo = txtChatLieuVo.Text;
            watch.ChatLieuDay = txtChatLieuDay.Text;
            watch.ChatLieuKinh = txtChatLieuKinh.Text;
            watch.ChucNang = txtChucNang.Text;
            watch.ChongNuoc = txtDoChiuNuoc.Text;
            watch.XuatXu = "ABC";
            watch.Mota = txtMoTa.Value;
            watch.type = int.Parse(listType.SelectedValue).ToString();

            string filePath = Server.MapPath("~/Image/Watch/");
            fileUpload.SaveAs(filePath + fileUpload.FileName);
            watch.HinhAnh = fileUpload.FileName;
            kn.Watches.InsertOnSubmit(watch);
            kn.SubmitChanges();
            //Response.Redirect(Request.RawUrl);
            showMessage("Đã thêm thành công sản phẩm");
        }
        public void ClearData() { }
        public void showMessage(string mess)
        {
            string strBuilder = "<script language = 'javascript'>alert('" + mess + "')</script>";
            Response.Write(strBuilder);
        }
    }
}
