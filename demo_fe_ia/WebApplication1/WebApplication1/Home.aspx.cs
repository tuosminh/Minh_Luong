using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonMelody_Click(object sender, EventArgs e)
        {
            Response.Redirect("Melody.aspx");
        }

        protected void ButtonPhotos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Photos.aspx");
        }
    }
}