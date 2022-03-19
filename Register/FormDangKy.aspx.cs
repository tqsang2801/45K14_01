using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class FormDangKy : System.Web.UI.Page
{
    string gioitinh;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
       protected void btn_DangKy_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-JEOIG41K;Initial Catalog=DangKy;Integrated Security=True");
        SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[TableDangKy]
           ([Ho]
           ,[Ten]
           ,[TenDangNhap]
           ,[MatKhau]
           ,[NhapLaiMatKhau]
           ,[GioiTinh]
           ,[SoDienThoai]
           ,[Email])
     VALUES
           ('" + txt_Ho.Text + "', '" + txt_Ten.Text + "', '" + txt_TenDangNhap.Text + "', '" + txt_MatKhau.Text + "', '"
              + txt_NhapLaiMatKhau.Text + "', '" + gioitinh + "', '" + txt_SDT.Text + "', '" + txt_Email.Text + "')", con);
              con.Open();
              cmd.ExecuteNonQuery();
              con.Close();
              Response.Write("<script>alert('Đăng ký thành công')</script>");
    }
    protected void rbn_Nam_CheckedChanged(object sender, EventArgs e)
    {
        gioitinh = "Nam";
    }
    protected void rbn_Nu_CheckedChanged(object sender, EventArgs e)
    {
        gioitinh = "Nữ";
    }
    protected void rbn_Khac_CheckedChanged(object sender, EventArgs e)
    {
        gioitinh = "Khác";
    }
}