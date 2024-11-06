using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class LopKetNoi
    {
        SqlConnection cn = new SqlConnection();

        private void MoKetNoi()
        {
            string SqlCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Acer Nitro 5\Documents\GitHub\Minh_Luong\demo_fe_ia\WebApplication1\WebApplication1\App_Data\Database1.mdf"";Integrated Security=True";
            cn = new SqlConnection(SqlCon);

            cn.Open();
        }
        private void DongKetNoi()
        {
            cn.Close();
        }
        public DataTable LayDuLieu(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                MoKetNoi();
                SqlDataAdapter da = new SqlDataAdapter(sql, cn);
                da.Fill(dt);
            }
            catch
            {
                dt = null;
            }
            finally
            {
                DongKetNoi();
            }

            return dt;
        }

        public int CapNhatDuLieu(string sql)
        {
            int kq = 0;
            try
            {
                MoKetNoi();
                using (SqlCommand cmd = new SqlCommand(sql, cn))
                {
                    
                    kq = cmd.ExecuteNonQuery();
                }
            }
            catch
            {
                kq = 0;
            }
            finally
            {
                DongKetNoi();
            }

            return kq;
        }

    }
}