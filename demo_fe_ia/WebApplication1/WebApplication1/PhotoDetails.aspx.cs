using System;
using System.Data;
using System.Data.SqlClient;
using System.Reflection.Emit;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class PhotoDetails : System.Web.UI.Page
    {
        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\TEAM_7\\Minh_Luong\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";
        LopKetNoi lkn = new LopKetNoi(); // Đối tượng kết nối cơ sở dữ liệu

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return; // Tránh việc tải lại dữ liệu mỗi khi PostBack
            }

            LoadData();
            // Lấy dữ liệu bình luận từ cơ sở dữ liệu khi trang lần đầu được tải
            LoadComments();
        }

        private void LoadData()
        {
            // Câu SQL để lấy dữ liệu từ bảng
            string sql = "SELECT ANHBAIDANG, TENBAIDANG, MOTA, TENTACGIA, AVATARTACGIA FROM PhotoDetail WHERE Id = @Id"; // Bạn có thể thay đổi điều kiện WHERE nếu cần

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Id", 1); // Ví dụ lấy dữ liệu của bài viết có Id = 1
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    string anhBaiDang = reader["ANHBAIDANG"].ToString();
                    string tenBaiDang = reader["TENBAIDANG"].ToString();
                    string moTa = reader["MOTA"].ToString();
                    string tenTacGia = reader["TENTACGIA"].ToString();
                    string avatarTacGia = reader["AVATARTACGIA"].ToString();

                    // Gán giá trị cho các điều khiển
                    //Label1.Text = tenBaiViet; // Gán tên bài viết vào Label
                    //Image1.ImageUrl = "~/img_timkiem/" + hinhAnh; // Giả sử bạn lưu hình ảnh trong thư mục "Images"
                    lblTenbaidang.Text = tenBaiDang;
                    anhbaidang.ImageUrl = "~/img_timkiem/" + anhBaiDang;
                    lblMota.Text = moTa;
                    AVATARTACGIA.ImageUrl = "~/img_timkiem/" + avatarTacGia;
                    TENTACGIA.Text = tenTacGia;
                }
                else
                {
                    // Nếu không có bài viết
                    lblMessage.Text = "Không tìm thấy bài viết!";
                }
            }
        }
        // Hàm để lấy dữ liệu bình luận từ cơ sở dữ liệu
        private void LoadComments()
        {
            // Lấy bình luận của người dùng (bảng CommentUser)
            //string sqlCmtUser = "SELECT * FROM CommentUser ORDER BY IDCMTUSER DESC ";
            //dsCmtuser.DataSource = lkn.LayDuLieu(sqlCmtUser);
            //dsCmtuser.DataBind();
            string sqlCmtUser = "SELECT * FROM CommentUser ORDER BY IDCMTUSER DESC";
            dsCmtuser.DataSource = lkn.LayDuLieu(sqlCmtUser);
            dsCmtuser.DataBind();

            // Lấy bình luận của người khác (bảng CommentOtherUser)
            //string sqlCmtOtherUser = "SELECT * FROM CommentOtherUser";
            //dsCmtotheruser.DataSource = lkn.LayDuLieu(sqlCmtOtherUser);
            //dsCmtotheruser.DataBind();
            string sqlCmtOtherUser = "SELECT * FROM CommentOtherUser";
            dsCmtotheruser.DataSource = lkn.LayDuLieu(sqlCmtOtherUser);
            dsCmtotheruser.DataBind();
        }

        // Sự kiện khi người dùng gửi bình luận
        protected void btnGui_Click(object sender, EventArgs e)
        {
            string uploadcmt = txtbinhluan.Text.Trim(); // Lấy nội dung bình luận

            // Kiểm tra xem người dùng đã nhập bình luận chưa
            if (string.IsNullOrEmpty(uploadcmt))
            {
                lblMessage.Text = "Vui lòng nhập bình luận!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            try
            {
                // Câu lệnh SQL kết nối với cơ sở dữ liệu
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\TEAM_7\\Minh_Luong\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    string query = "INSERT INTO CommentUser (BINHLUANUSER) VALUES (@BINHLUANUSER)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Thêm tham số vào câu lệnh SQL để tránh SQL injection
                        cmd.Parameters.AddWithValue("@BINHLUANUSER", uploadcmt);
                        cmd.ExecuteNonQuery(); // Thực thi câu lệnh INSERT

                        lblMessage.Text = "Bình luận của bạn đã được gửi thành công!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;

                        // Sau khi gửi thành công, làm mới lại danh sách bình luận
                        LoadComments(); // Tải lại danh sách bình luận mới
                        txtbinhluan.Text = ""; // Xóa nội dung trong TextBox sau khi gửi
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Lỗi: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
