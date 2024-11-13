using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Chatting : System.Web.UI.Page
    {
        // Connection string to the database
        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\TEAM_7\\Minh_Luong\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load messages only when the page is loaded for the first time
                LoadMessages();
            }
        }

        private void LoadMessages()
        {
            // SQL query to select messages, ordered by the time they were received
            string sql = "SELECT TINNHAN, THOIGIANNHAN, FILETINNHAN FROM Chatting ORDER BY Id ASC";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();

                // Execute the query and bind the data to the DataList
                SqlDataReader reader = cmd.ExecuteReader();
                dsTINNHAN.DataSource = reader;
                dsTINNHAN.DataBind();
            }
        }

        // Event triggered when the "Gửi" button is clicked
        protected void btnGui_Click(object sender, EventArgs e)
        {
            string message = txtTINNHAN.Text.Trim();
            string fileName = null;

            // Kiểm tra xem có tệp nào được tải lên không
            if (FileUpload1.HasFile)
            {
                fileName = FileUpload1.FileName;

                // Đảm bảo thư mục lưu tệp tồn tại
                string directoryPath = Server.MapPath("~/UploadedFiles/");
                if (!System.IO.Directory.Exists(directoryPath))
                {
                    System.IO.Directory.CreateDirectory(directoryPath);
                }

                // Lưu tệp vào thư mục
                string filePath = System.IO.Path.Combine(directoryPath, fileName);
                FileUpload1.SaveAs(filePath);
            }

            // Kiểm tra xem có nhập tin nhắn hoặc tệp không
            if (string.IsNullOrEmpty(message) && fileName == null)
            {
                Response.Write("<script>alert('Phải nhập tin nhắn hoặc tệp');</script>");
                return;
            }

            try
            {
                // Thực hiện lưu tin nhắn vào cơ sở dữ liệu, kèm theo thời gian và tên tệp (nếu có)
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    string query = "INSERT INTO Chatting (TINNHAN, THOIGIANNHAN, FILETINNHAN) VALUES (@TINNHAN, @THOIGIANNHAN, @FILETINNHAN)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Thêm tham số để tránh SQL Injection
                        cmd.Parameters.AddWithValue("@TINNHAN", message);
                        cmd.Parameters.AddWithValue("@THOIGIANNHAN", DateTime.Now);
                        cmd.Parameters.AddWithValue("@FILETINNHAN", fileName ?? (object)DBNull.Value);

                        cmd.ExecuteNonQuery();

                        // Tải lại danh sách tin nhắn để hiển thị tin nhắn mới
                        LoadMessages();

                        // Reset lại TextBox và FileUpload
                        txtTINNHAN.Text = "";
                        FileUpload1.Attributes.Clear(); // Reset thuộc tính FileUpload
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Lỗi khi gửi tin nhắn: " + ex.Message + "');</script>");
            }
        }

    }
}
