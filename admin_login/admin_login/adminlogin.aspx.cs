using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace admin_login
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Buttonlogin_Click(object sender, EventArgs e)
        {
            string Username = Usernamelg.Text.Trim();
            String Pass = Passlg.Text.Trim();

            if (AuthenticateUser(Username, Pass))
            {
                //Dang nhap thanh cong
                lblMessage.Text = "Đăng nhập thành công";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                //Dang nhap that bai
                lblMessage.Text = "Email hoặc mật khẩu không đúng!";
            }
        }

        private bool AuthenticateUser(String Username, String Pass)
        {
            Lopketnoi kn = new Lopketnoi();
            string query = $"SELECT * FROM KHACHHANG WHERE TENDANGNHAP = N'{Username}' AND MATKHAU ='{Pass}'";
            DataTable dt = kn.LayDuLieu(query);
            return dt!= null && dt.Rows.Count > 0;
        }
    }
}