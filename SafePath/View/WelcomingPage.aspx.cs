using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SafePath.View
{
    public partial class WelcomingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Timer.Enabled = true;
            }
        }

        protected void Timer_Tick(object sender, EventArgs e)
        {
            Timer.Enabled = false;

            Response.Redirect("~/View/LoginPage.aspx");
        }
    }
}