using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    
    public partial class Profile : System.Web.UI.Page
    {
        LopKetNoi kn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack) return;

            //string sql = "SELECT * FROM POST ";
            //ds_baidang.DataSource = kn.LayDuLieu(sql);
            //ds_baidang.DataBind();
            //DataList1.DataSource=kn.LayDuLieu(sql);
            //DataList1.DataBind();

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}