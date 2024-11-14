
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Search : System.Web.UI.Page
    {
        private string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\TEAM_7\\Minh_Luong\\demo_fe_ia\\WebApplication1\\WebApplication1\\App_Data\\Database1.mdf;Integrated Security=True";
        LopKetNoi kn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Dữ liệu mặc định cho phần "Recommended for you"
                string sql = "SELECT * FROM TIMKIEMM";
                DB1.DataSource = kn.LayDuLieu(sql); // Giả sử kn.LayDuLieu(sql) trả về dữ liệu hợp lệ
                DB1.DataBind();
            }
        }


        // Sự kiện khi người dùng nhập tên tác phẩm vào TextBox và nhấn Enter
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();  // Lấy tên tác phẩm từ TextBox

            // Kiểm tra xem người dùng có nhập tên không
            if (!string.IsNullOrEmpty(name))
            {
                // Tạo câu lệnh SQL để tìm kiếm tác phẩm theo tên
                string query = "SELECT * FROM TIMKIEMM WHERE TENTACPHAM LIKE @NAME";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    // Thực thi câu lệnh SQL và lấy dữ liệu
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Thêm tham số vào câu lệnh SQL (Sử dụng dấu % để tìm kiếm theo phần tử khớp một cách linh hoạt)
                        cmd.Parameters.AddWithValue("@NAME", "%" + name + "%");

                        SqlDataReader reader = cmd.ExecuteReader();

                        // Chuyển đổi SqlDataReader thành DataTable
                        DataTable dt = new DataTable();
                        dt.Load(reader);

                        // Kiểm tra nếu có kết quả trả về
                        if (dt.Rows.Count > 0)
                        {
                            // Đổ dữ liệu vào DataList
                            DB1.DataSource = dt; // Gán nguồn dữ liệu cho DataList
                            DB1.DataBind();       // Liên kết dữ liệu với DataList
                        }
                        else
                        {
                            // Nếu không tìm thấy kết quả, thông báo không tìm thấy dữ liệu
                            Label1.Text = "No record found.";
                            Label1.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }
            }
            else
            {
                // Nếu người dùng không nhập tên, yêu cầu nhập tên
                Label1.Text = "Please enter a name to search.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
           
        }

    }
}
