using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1;

namespace WebApplication1
{
    public partial class Admin_LoginMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Buttonlogin_Click(object sender, EventArgs e)
        {
            //string Email = Emaillg.Text.Trim();
            //String Pass = Passlg.Text.Trim();
            string Email = txtEmailAM.Text.Trim();
            string Pass = txtPassAM.Text.Trim();

            if (AuthenticateUser(Email, Pass))
            {
                //Dang nhap thanh cong
                lblMessage.Text = "Đăng nhập thành công";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("Admin_Home.aspx");
            }
            else
            {
                //Dang nhap that bai
                lblMessage.Text = "Email hoặc mật khẩu không đúng!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        private bool AuthenticateUser(String Email, String Pass)
        {
            LopKetNoi kn = new LopKetNoi();
            string query = $"SELECT * FROM admin_login WHERE EMAIL = N'{Email}' AND PASSWORD ='{Pass}'";
            DataTable dt = kn.LayDuLieu(query);
            return dt != null && dt.Rows.Count > 0;
        }
    }
}