using System;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication1
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
        }

        protected void btndang_Click(object sender, EventArgs e)
        {
            // Lấy thông tin từ các TextBox
            string uploadTitle = txttitle.Text.Trim(); // Tiêu đề
            string description = txtmota.Text.Trim();  // Mô tả
            string categories = txtLoai.Text.Trim();   // Danh mục

            // Kiểm tra xem FileUpload1 đã được chọn chưa (ảnh nghệ thuật)
            if (FileUpload1.HasFile)
            {
                try
                {
                    // Lấy tên và lưu ảnh vào thư mục trên server
                    string artworkFileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    string artworkFilePath = Server.MapPath("~/Uploads/Images/") + artworkFileName;
                    FileUpload1.SaveAs(artworkFilePath);  // Lưu ảnh vào thư mục trên server

                    // Lưu đường dẫn ảnh vào cơ sở dữ liệu (thay vì lưu nhị phân)
                    string artworkFilePathInDatabase = "~/Uploads/Images/" + artworkFileName;

                    string fileArt = Path.GetFileName(FileUpload2.PostedFile.FileName);
                    byte[] fileArtData = FileUpload2.FileBytes;
                    string fileBanQuyenName = Path.GetFileName(FileUpload3.PostedFile.FileName);
                    byte[] fileBanQuyenData = FileUpload3.FileBytes;

                    // Kết nối tới cơ sở dữ liệu và thực hiện lệnh INSERT
                    string sql = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\TEAM_7\\Minh_Luong\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True"; // Thay bằng chuỗi kết nối thực tế của bạn
                    using (SqlConnection conn = new SqlConnection(sql))
                    {
                        conn.Open();

                        // Câu lệnh SQL để chèn dữ liệu vào bảng
                        string query = "INSERT INTO UserPost (TENBAIVIET, MOTA, LOAIBAIVIET, HINHANH, FILEART, FILEBANQUYEN) " +
                                       "VALUES (@TENBAIVIET, @MOTA, @LOAIBAIVIET, @HINHANH, @FILEART, @FILEBANQUYEN)";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            // Thêm các tham số vào câu lệnh SQL
                            cmd.Parameters.AddWithValue("@TENBAIVIET", uploadTitle);
                            cmd.Parameters.AddWithValue("@MOTA", description);
                            cmd.Parameters.AddWithValue("@LOAIBAIVIET", categories);
                            cmd.Parameters.AddWithValue("@HINHANH", artworkFilePathInDatabase);  // Lưu đường dẫn ảnh vào cơ sở dữ liệu
                            cmd.Parameters.AddWithValue("@FILEART", fileArtData);
                            cmd.Parameters.AddWithValue("@FILEBANQUYEN", fileBanQuyenData);

                            // Thực thi câu lệnh SQL
                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Hiển thị thông báo thành công
                    lblMessage.Text = "Artwork uploaded and post saved successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                catch (Exception ex)
                {
                    // Xử lý lỗi nếu có
                    lblMessage.Text = "Error: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                // Thông báo nếu người dùng chưa chọn tệp ảnh
                lblMessage.Text = "Please select an image to upload.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
