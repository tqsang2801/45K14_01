using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimNguoiOGhep
{
    public partial class Login : System.Web.UI.Page
    {
        TimNguoiOGhepDataContext dt = new TimNguoiOGhepDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_DangNhap_Click(object sender, EventArgs e)
        {
            var dl = dt.sp_Login(txt_User.Text, txt_Pass.Text);
            int kt = dl.Count();
            if (kt > 0)
            {
                Session["logged"] = true;
                Response.Redirect("trangchu.aspx");
            }
            else
            {
                this.lbl_ThongBao.Visible = true;
            }
        }

    }
}