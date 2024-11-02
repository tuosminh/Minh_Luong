using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        LopKetNoi kn = new LopKetNoi();
        //KHACHHANGDBCONTEXT db = new KHACHHANGDBCONTEXT();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string user = txtUsername.Text;
            string password = txtPassword.Text;

            if (string.IsNullOrEmpty(user) || string.IsNullOrEmpty(password))
            {
                lblError.Text = "Tên đăng nhập và mật khẩu không được để trống.";
                lblError.Visible = true;
                return;
            }

            string sql = "SELECT COUNT(*) FROM KhachHang WHERE Tendangnhap = @username AND Matkhau = @password";

            try
            {
                using (SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\nam3\software_project_management\demo_fe_ia\WebApplication1\WebApplication1\App_Data\Database1.mdf;Integrated Security=True"))
                {
                    using (SqlCommand cmd = new SqlCommand(sql, cn))
                    {
                        cmd.Parameters.AddWithValue("@username", user);
                        cmd.Parameters.AddWithValue("@password", password);

                        cn.Open();

                        int count = (int)cmd.ExecuteScalar();

                        if (count > 0)
                        {
                            Session["username"] = user;
                            Response.Redirect("Home.aspx");
                        }
                        else
                        {
                            lblError.Text = "Tên đăng nhập hoặc mật khẩu không chính xác.";
                            lblError.Visible = true;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                //lblError.Text = "Có lỗi xảy ra: " + ex.Message;
                lblError.Text = "Có lỗi xảy ra: Vui lòng nhập lại";
                lblError.Visible = true;
            }


            // Kiểm tra tên người dùng và mật khẩu cụ thể
            //if (user == "nam" && password == "11111")
            //{
            //    // Đăng nhập thành công
            //    Session["username"] = user;
            //    Response.Redirect("Home.aspx");
            //}
            //else
            //{
            //    // Đăng nhập không thành công
            //    lblError.Text = "Tên đăng nhập hoặc mật khẩu không chính xác.";
            //    lblError.Visible = true;
            //}
        }

        //protected void btnSignUp_Click(object sender, EventArgs e)
        //    {
        //        string tendangnhap = usSignup.Text;
        //        //string tendangnhap = usSignup.Text;
        //        string matkhau = TextBox2.Text;
        //        string email = txtEmail.Text;

        //        if (string.IsNullOrEmpty(tendangnhap) || string.IsNullOrEmpty(matkhau) || string.IsNullOrEmpty(email))
        //            {
        //                lblMessage.Text = "Tất cả các trường đều bắt buộc.";
        //                return;
        //            }

        //            KHACHHANG newKhachHang = new KHACHHANG
        //            {
        //                TENDANGNHAP = tendangnhap,
        //                MATKHAU = matkhau,
        //                EMAIL = email
        //            };

        //            db.KHACHHANGs.Add(newKhachHang);
        //            db.SaveChanges();

        //            lblMessage.Text = "Đăng ký thành công!";



        //    }
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string username = txtSignupUsername.Text;
            string email = txtEmail.Text;
            string password = txtSignupPassword.Text;
            string confirmPassword = txtSignupPasswordAgain.Text;

            // Kiểm tra tính hợp lệ của thông tin
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword))
            {
                lblError.Text = "Tất cả các trường đều phải được điền.";
                lblError.Visible = true;
                return;
            }

            if (password != confirmPassword)
            {
                lblError.Text = "Mật khẩu không khớp.";
                lblError.Visible = true;
                return;
            }

            // Kiểm tra tên người dùng đã tồn tại
            string checkUserSql = "SELECT COUNT(*) FROM KhachHang WHERE Tendangnhap = @username";
            int userExists = 0;

            try
            {
                userExists = (int)kn.LayDuLieu(checkUserSql).Rows[0][0];
            }
            catch
            {
                lblError.Text = "Có lỗi xảy ra khi kiểm tra tên người dùng.";
                lblError.Visible = true;
                return;
            }

            if (userExists > 0)
            {
                lblError.Text = "Tên đăng nhập đã tồn tại.";
                lblError.Visible = true;
                return;
            }

            // Nếu tên người dùng chưa tồn tại, thực hiện đăng ký
            string insertUserSql = "INSERT INTO KhachHang (Tendangnhap, Matkhau, Email) VALUES (@username, @password, @Email)";
            SqlParameter[] parameters = {
                new SqlParameter("@username", username),
                new SqlParameter("@password", password),
                new SqlParameter("@Email", email)
            };

            int rowsAffected = kn.CapNhatDuLieu(insertUserSql);

            if (rowsAffected > 0)
            {
                lblError.Text = "Đăng ký thành công!";
                lblError.ForeColor = System.Drawing.Color.Green;
                lblError.Visible = true;
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblError.Text = "Có lỗi xảy ra trong quá trình đăng ký.";
                lblError.Visible = true;
            }


        }

        private bool ValidateUser(string username, string password)
        {
            // Thay thế bằng mã kiểm tra người dùng thực tế trong cơ sở dữ liệu
            // Ví dụ: kiểm tra tên người dùng và mật khẩu trong cơ sở dữ liệu
            return username == "admin" && password == "password"; // Ví dụ đơn giản
        }

        private bool RegisterUser(string username, string email, string password)
        {
            // Thay thế bằng mã lưu người dùng vào cơ sở dữ liệu
            // Bạn cần kiểm tra xem tên người dùng đã tồn tại chưa
            return true; // Giả lập rằng đăng ký thành công
        }
    }
}
