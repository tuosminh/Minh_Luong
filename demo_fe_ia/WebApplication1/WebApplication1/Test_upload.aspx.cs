using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication1
{
    public partial class Test_upload : System.Web.UI.Page
    {
        // Chuỗi kết nối cơ sở dữ liệu của bạn
        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\TEAM_7\\Minh_Luong\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Lấy dữ liệu từ cơ sở dữ liệu khi trang lần đầu được tải
                LoadData();
            }
        }

        private void LoadData()
        {
            // Câu SQL để lấy dữ liệu từ bảng
            string sql = "SELECT TENBAIVIET, HINHANH FROM [dbo].[Table] WHERE Id = @Id"; // Bạn có thể thay đổi điều kiện WHERE nếu cần

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Id", 1); // Ví dụ lấy dữ liệu của bài viết có Id = 1
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    string tenBaiViet = reader["TENBAIVIET"].ToString();
                    string hinhAnh = reader["HINHANH"].ToString();

                    // Gán giá trị cho các điều khiển
                    Label1.Text = tenBaiViet; // Gán tên bài viết vào Label
                    Image1.ImageUrl = "~/img_timkiem/" + hinhAnh; // Giả sử bạn lưu hình ảnh trong thư mục "Images"
                }
                else
                {
                    // Nếu không có bài viết
                    Label1.Text = "Không tìm thấy bài viết!";
                }
            }
        }
    }
}
