//using System;
//using System.Data;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace WebApplication1
//{
//    public partial class ShoppingCart : System.Web.UI.Page
//    {
//        LopKetNoi kn = new LopKetNoi();
//        protected void Page_Load(object sender, EventArgs e)
//        {
//           if(IsPostBack)
//            {
//                return;
//            }
//            string sql = "Select * from ShoppingCart";
//           db1.DataSource = kn.LayDuLieu(sql);
//            db1.DataBind();
//        }        
//    }
//}
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;  // Đảm bảo bạn đã import thư viện này để sử dụng SqlParameter

namespace WebApplication1
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        LopKetNoi kn = new LopKetNoi(); // Đối tượng kết nối cơ sở dữ liệu

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;

            // Đổ dữ liệu giỏ hàng vào DataList khi trang tải lần đầu tiên
            string sql = "SELECT * FROM ShoppingCart";
            db1.DataSource = kn.LayDuLieu(sql); // Gọi phương thức lấy dữ liệu
            db1.DataBind(); // Liên kết dữ liệu với DataList
        }

        // Sự kiện xử lý khi nhấn nút "Xóa" trong DataList
        protected void db1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Xoa") // Kiểm tra nếu CommandName là "Xoa"
            {
                try
                {
                    // Lấy ID của sản phẩm cần xóa từ CommandArgument
                    int id = Convert.ToInt32(e.CommandArgument);

                    // Kiểm tra lại id đã lấy được đúng chưa
                    if (id <= 0)
                    {
                        Label4.Text = "Invalid product ID!";
                        return;
                    }

                    // Lệnh SQL để xóa sản phẩm theo ID
                    string deleteSql = "DELETE FROM ShoppingCart WHERE Id = @Id";

                    // Tạo tham số để tránh SQL injection
                    SqlParameter[] parameters = {
                new SqlParameter("@Id", SqlDbType.Int) { Value = id }
            };

                    // Gọi phương thức ThucThiLenh để thực thi lệnh xóa
                    int rowsAffected = kn.ThucThiLenh(deleteSql, parameters); // Giả sử ThucThiLenh trả về số dòng bị ảnh hưởng

                    // Kiểm tra nếu có dòng bị ảnh hưởng, nghĩa là xóa thành công
                    if (rowsAffected > 0)
                    {
                        // Tải lại dữ liệu giỏ hàng sau khi xóa
                        LoadShoppingCart();
                        Label4.Text = "Product deleted successfully!";
                    }
                    else
                    {
                        Label4.Text = "Product not found or failed to delete.";
                    }
                }
                catch (Exception ex)
                {
                    Label4.Text = "Error: " + ex.Message;
                }
            }
        }


        // Sự kiện xử lý khi nhấn nút "Apply Coupon"
        protected void Button3_Click(object sender, EventArgs e)
        {
            string couponCode = TextBox1.Text.Trim(); // Lấy mã giảm giá từ TextBox

            if (string.IsNullOrEmpty(couponCode))
            {
                Label4.Text = "Vui lòng nhập mã giảm giá!";
                return;
            }

            // Kiểm tra mã giảm giá trong cơ sở dữ liệu
            string couponCheckSql = "SELECT * FROM ShoppingCart WHERE COUPON = @CouponCode";
            SqlParameter[] couponParameters = {
        new SqlParameter("@CouponCode", SqlDbType.NVarChar) { Value = couponCode }
    };
            DataTable couponData = kn.LayDuLieu(couponCheckSql, couponParameters);

            if (couponData != null && couponData.Rows.Count > 0)  // Nếu mã giảm giá hợp lệ
            {
                try
                {
                    // Duyệt qua từng sản phẩm có mã coupon khớp để giảm giá 20% cho `SUBTOTAL`
                    foreach (DataRow row in couponData.Rows)
                    {
                        decimal gia = Convert.ToDecimal(row["GIA"]);

                        // Tính toán SUBTOTAL sau khi giảm giá 20%
                        decimal subtotalDiscounted = gia * 0.8m;

                        // Cập nhật SUBTOTAL đã giảm giá vào cơ sở dữ liệu
                        string updateSql = "UPDATE ShoppingCart SET SUBTOTAL = @Subtotal WHERE Id = @Id";
                        SqlParameter[] updateParameters = {
                    new SqlParameter("@Subtotal", SqlDbType.Decimal) { Value = subtotalDiscounted },
                    new SqlParameter("@Id", SqlDbType.Int) { Value = row["Id"] }
                };
                        kn.ThucThiLenh(updateSql, updateParameters);
                    }

                    // Tải lại giỏ hàng để hiển thị giá đã giảm
                    LoadShoppingCart();
                    Label4.Text = "Áp dụng mã giảm giá thành công!";
                }
                catch (Exception ex)
                {
                    Label4.Text = "Lỗi: " + ex.Message;  // Hiển thị lỗi nếu có
                }
            }
            else
            {
                Label4.Text = "Mã giảm giá không hợp lệ!";
            }
        }


        // Sự kiện xử lý khi nhấn nút "Update Cart"
        protected void Button4_Click(object sender, EventArgs e)
        {
            // Tải lại giỏ hàng sau khi cập nhật
            LoadShoppingCart();
            Label4.Text = "Cart updated successfully!";
        }

        // Hàm để tải lại giỏ hàng từ cơ sở dữ liệu
        private void LoadShoppingCart()
        {
            string sql = "SELECT * FROM ShoppingCart";
            db1.DataSource = kn.LayDuLieu(sql); // Lấy lại dữ liệu giỏ hàng từ cơ sở dữ liệu
            db1.DataBind(); // Liên kết dữ liệu với DataList
        }

        protected void btnMua_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderDetails.aspx");
        }
    }
}

