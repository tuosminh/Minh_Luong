using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testUPLOAS
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string uploadTitle = txtTitle.Text.Trim();
            string description = txtDescription.Text.Trim();
            string category = txtCategory.Text.Trim();

            if (FileUpload1.HasFile)
            {
                try
                {
                    // Lấy dữ liệu nhị phân của ảnh
                    byte[] imageBytes = FileUpload1.FileBytes;

                    // Câu lệnh SQL để chèn dữ liệu vào bảng
                    string sql = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True";
                    using (SqlConnection conn = new SqlConnection(sql))
                    {
                        conn.Open();
                        string query = "INSERT INTO UserPost (TENBAIVIET, MOTA, LOAIBAIVIET, HINHANH) VALUES (@TENBAIVIET, @MOTA, @LOAIBAIVIET, @HINHANH)";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@TENBAIVIET", uploadTitle);
                            cmd.Parameters.AddWithValue("@MOTA", description);
                            cmd.Parameters.AddWithValue("@LOAIBAIVIET", category);
                            cmd.Parameters.AddWithValue("@HINHANH", imageBytes);

                            cmd.ExecuteNonQuery();
                        }
                    }

                    lblMessage.Text = "Image uploaded successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                lblMessage.Text = "Please select an image to upload.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Display.aspx");
        }
    }
}


