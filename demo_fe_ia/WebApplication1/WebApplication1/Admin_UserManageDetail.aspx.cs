using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication1
{
    public partial class Admin_UserManageDetail : System.Web.UI.Page
    {
        // Câu lệnh kết nối tới cơ sở dữ liệu
        private string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\TEAM_7\\Minh_Luong\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                return;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            {
                string name = TextBox1.Text.Trim();

                // Kiểm tra xem người dùng có nhập tên không
                if (!string.IsNullOrEmpty(name))
                {
                    // Tạo câu lệnh SQL để tìm kiếm theo Name
                    string query = "SELECT * FROM Admin_usermanagedetail WHERE NAME = @NAME";

                    // Sử dụng kết nối tới cơ sở dữ liệu và thực thi truy vấn
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            // Thêm tham số vào câu lệnh SQL
                            cmd.Parameters.AddWithValue("@NAME", name);

                            // Thực thi câu lệnh SQL và lấy dữ liệu
                            SqlDataReader reader = cmd.ExecuteReader();
                            if (reader.HasRows)
                            {
                                // Nếu có dữ liệu, điền vào các TextBox
                                reader.Read();
                                TextBox2.Text = reader["NAME"].ToString();
                                TextBox3.Text = reader["EMAIL"].ToString();
                                TextBox4.Text = reader["PASSWORD"].ToString();
                                TextBox5.Text = reader["PHONENUMBER"].ToString();
                                TextBox6.Text = reader["POSITION"].ToString();
                                TextBox7.Text = reader["JOINDATE"].ToString();
                                TextBox8.Text = reader["OPERATESTATUS"].ToString();
                            }
                            else
                            {
                                // Nếu không tìm thấy kết quả
                                Label1.Text = "No record found.";
                                Label1.ForeColor = System.Drawing.Color.Red;
                            }
                        }
                    }
                }
                else
                {
                    // Nếu không nhập tên, thông báo lỗi
                    Label1.Text = "Please enter a name to search.";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
        protected void Button3_Click1(object sender, EventArgs e)
        {
            {
                string name = TextBox2.Text.Trim();
                string email = TextBox3.Text.Trim();
                string password = TextBox4.Text.Trim();
                string phoneNumber = TextBox5.Text.Trim();
                string position = TextBox6.Text.Trim();
                string joinDate = TextBox7.Text.Trim();
                string operateStatus = TextBox8.Text.Trim();

                // Kiểm tra xem các trường dữ liệu có rỗng không
                if (!string.IsNullOrEmpty(name) && !string.IsNullOrEmpty(email))
                {
                    // Câu lệnh SQL để cập nhật hoặc chèn dữ liệu mới vào bảng
                    string query = "INSERT INTO Admin_usermanagedetail ( NAME, EMAIL, PASSWORD, PHONENUMBER, POSITION, JOINDATE, OPERATESTATUS) " +
                                           "VALUES (@NAME, @EMAIL, @PASSWORD, @PHONENUMBER, @POSITION, @JOINDATE, @OPERATESTATUS) ";
                    //string query = "UPDATE Admin_usermanagedetail SET EMAIL = @EMAIL, PASSWORD = @PASSWORD, PHONENUMBER = @PHONENUMBER, POSITION = @POSITION, JOINDATE = @JOINDATE, OPERATESTATUS = @OPERATESTATUS WHERE NAME = @NAME";

                    // Thực hiện lệnh SQL để cập nhật thông tin người dùng
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();


                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            // Thêm các tham số vào câu lệnh SQL
                            cmd.Parameters.AddWithValue("@NAME", name);
                            cmd.Parameters.AddWithValue("@EMAIL", email);
                            cmd.Parameters.AddWithValue("@PASSWORD", password);
                            cmd.Parameters.AddWithValue("@PHONENUMBER", phoneNumber);
                            cmd.Parameters.AddWithValue("@POSITION", position);
                            cmd.Parameters.AddWithValue("@JOINDATE", joinDate);
                            cmd.Parameters.AddWithValue("@OPERATESTATUS", operateStatus);

                            // Thực thi câu lệnh SQL
                            int rowsAffected = cmd.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                // Hiển thị thông báo thành công
                                lblMessage.Text = "User details updated successfully!";
                                lblMessage.ForeColor = System.Drawing.Color.Green;
                            }
                            else
                            {
                                // Nếu không cập nhật được
                                lblMessage.Text = "No record found to update.";
                                lblMessage.ForeColor = System.Drawing.Color.Red;
                            }
                        }
                    }
                }
                else
                {
                    // Thông báo nếu thông tin không đầy đủ
                    lblMessage.Text = "Please fill in all fields.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}
