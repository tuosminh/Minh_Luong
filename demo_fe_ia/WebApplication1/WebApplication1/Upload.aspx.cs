//using System;
//using System.Data.SqlClient;
//using System.IO;

//namespace WebApplication1
//{
//    public partial class Upload : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (IsPostBack)
//                return;
//        }

//        protected void btndang_Click(object sender, EventArgs e)
//        {
//            // Lấy thông tin từ các TextBox
//            string uploadTitle = txttitle.Text.Trim(); // Tiêu đề
//            string description = txtmota.Text.Trim();  // Mô tả
//            string categories = txtLoai.Text.Trim();   // Danh mục

//            // Kiểm tra xem các file đã được chọn chưa
//            if (FileUpload1.HasFile && FileUpload2.HasFile && FileUpload3.HasFile)
//            {
//                try
//                {
//                    // Lấy tên và dữ liệu nhị phân của từng file
//                    string artworkFileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
//                    byte[] artworkFileData = FileUpload1.FileBytes;

//                    string artFileName = Path.GetFileName(FileUpload2.PostedFile.FileName);
//                    byte[] artFileData = FileUpload2.FileBytes;

//                    string copyrightFileName = Path.GetFileName(FileUpload3.PostedFile.FileName);
//                    byte[] copyrightFileData = FileUpload3.FileBytes;

//                    // Kết nối tới cơ sở dữ liệu và thực hiện lệnh INSERT
//                    string sql = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\TEAM_7\\Minh_Luong\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True"; // Thay bằng chuỗi kết nối thực tế của bạn
//                    using (SqlConnection conn = new SqlConnection(sql))
//                    {
//                        conn.Open();

//                        // Câu lệnh SQL để chèn dữ liệu vào bảng
//                        string query = "INSERT INTO Post (txttitle, txtmota, txtLoai, " +
//                                       "ArtworkFileName, ArtworkData, ArtFileName, ArtFileData, " +
//                                       "CopyrightFileName, CopyrightFileData) " +
//                                       "VALUES (@TENBAIVIET, @MOTA, @LOAIBAIVIET, " +
//                                       "@HINHANH, @HINHANH, @HINHANH, @HINHANH, " +
//                                       "@HINHANH, @HINHANH)";

//                        using (SqlCommand cmd = new SqlCommand(query, conn))
//                        {
//                            // Thêm các tham số vào câu lệnh SQL
//                            cmd.Parameters.AddWithValue("@TENBAIVIET", uploadTitle);
//                            cmd.Parameters.AddWithValue("@MOTA", description);
//                            cmd.Parameters.AddWithValue("@LOAIBAIVIET", categories);
//                            cmd.Parameters.AddWithValue("@HINHANH", artworkFileName);
//                            cmd.Parameters.AddWithValue("@HINHANH", artworkFileData);
//                            cmd.Parameters.AddWithValue("@HINHANH", artFileName);
//                            cmd.Parameters.AddWithValue("@HINHANH", artFileData);
//                            cmd.Parameters.AddWithValue("@HINHANH", copyrightFileName);
//                            cmd.Parameters.AddWithValue("@HINHANH", copyrightFileData);

//                            // Thực thi câu lệnh SQL
//                            cmd.ExecuteNonQuery();
//                        }
//                    }

//                    // Hiển thị thông báo thành công
//                    Label1.Text = "Files uploaded and post saved successfully!";
//                    Label1.ForeColor = System.Drawing.Color.Green;
//                }
//                catch (Exception ex)
//                //{
//                //    // Xử lý lỗi nếu có
//                //    Label1.Text = "Error: " + ex.Message;
//                //    Label1.ForeColor = System.Drawing.Color.Red;
//                }
//            }
//            //else
//            //{
//            //    Label1.Text = "Please select all required files to upload.";
//            //    Label1.ForeColor = System.Drawing.Color.Red;
//            //}
//        }
//    }
//}
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
                    // Lấy tên và dữ liệu nhị phân của file ảnh nghệ thuật
                    string artworkFileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    byte[] artworkFileData = FileUpload1.FileBytes;
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
                        string query = "INSERT INTO User_Post (TENBAIVIET, MOTA, LOAIBAIVIET, HINHANH, FILEART, FILEBANQUYEN) " +
                                       "VALUES (@TENBAIVIET, @MOTA, @LOAIBAIVIET, @HINHANH, @FILEART, @FILEBANQUYEN)";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            // Thêm các tham số vào câu lệnh SQL
                            cmd.Parameters.AddWithValue("@TENBAIVIET", uploadTitle);
                            cmd.Parameters.AddWithValue("@MOTA", description);
                            cmd.Parameters.AddWithValue("@LOAIBAIVIET", categories);
                            cmd.Parameters.AddWithValue("@HINHANH", artworkFileData);  // Lưu dữ liệu nhị phân của tệp ảnh
                            cmd.Parameters.AddWithValue("@FILEART", fileArtData);
                            cmd.Parameters.AddWithValue("@FILEBANQUYEN", fileBanQuyenData);
                            // Thực thi câu lệnh SQL
                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Hiển thị thông báo thành công
                    Label1.Text = "Artwork uploaded and post saved successfully!";
                    Label1.ForeColor = System.Drawing.Color.Green; 
                }
                catch (Exception ex)
                {
                    // Xử lý lỗi nếu có
                    Label1.Text = "Error: " + ex.Message;
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                // Thông báo nếu người dùng chưa chọn tệp ảnh
                Label1.Text = "Please select an image to upload.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
