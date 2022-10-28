using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNTT_Watch
{
    public partial class TrangChu : System.Web.UI.Page
    {
        CNTTWATCHDataContext kn = new CNTTWATCHDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowHotSale();
            ShowSEIKO();
            ShowCASIO();
            ShowORIENT();
            ShowCITIZENT();
            
        }
        public void ShowHotSale()
        {
            var q = (from w in kn.Watches
                    select w).Take(4);
            dlHotSale.DataSource = q;
            dlHotSale.DataBind();
        }
        public void ShowSEIKO()
        {
            var q = (from w in kn.Watches
                     where w.CategoryID == 2
                     select w).Take(4);
            dlSEIKO.DataSource = q;
            dlSEIKO.DataBind();
        }
        public void ShowCASIO()
        {
            var q = (from w in kn.Watches
                     where w.CategoryID == 1
                     select w).Take(4);
            dlCASIO.DataSource = q;
            dlCASIO.DataBind();
        }
        public void ShowORIENT()
        {
            var q = (from w in kn.Watches
                     where w.CategoryID == 4
                     select w).Take(4);
            dlORIENT.DataSource = q;
            dlORIENT.DataBind();
        }
        public void ShowCITIZENT()
        {
            var q = (from w in kn.Watches
                     where w.CategoryID == 6
                     select w).Take(4);
            dlCITIZENT.DataSource = q;
            dlCITIZENT.DataBind();
        }
    }
}