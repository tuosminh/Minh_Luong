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
    public partial class Display : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadImages();
            }
        }

        private void LoadImages()
        {
            string sql = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Admin\\source\\repos\\testUPLOAS\\testUPLOAS\\App_Data\\Database1.mdf;Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(sql))
            {
                conn.Open();
                string query = "SELECT Id, TENBAIVIET, MOTA, HINHANH FROM UserPost";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
        }
    }
}

