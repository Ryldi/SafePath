using SafePath.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SafePath.View
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Tb_Password.Attributes["type"] = "password";
        }

        protected void Btn_ShowPassword_Click(object sender, ImageClickEventArgs e)
        {
            string showImageUrl = ResolveUrl("~/Assets/show.png");
            string hideImageUrl = ResolveUrl("~/Assets/hide.png");

            string password = Tb_Password.Text;

            if (Btn_ShowPassword.Attributes["Show"] == "0")
            {
                Btn_ShowPassword.ImageUrl = hideImageUrl;
                Tb_Password.Attributes["type"] = "SingleLine";
                Btn_ShowPassword.Attributes["Show"] = "1";
            }
            else if (Btn_ShowPassword.Attributes["Show"] == "1")
            {
                Btn_ShowPassword.ImageUrl = showImageUrl;
                Tb_Password.Attributes["type"] = "password";
                Btn_ShowPassword.Attributes["Show"] = "0";
            }

            Tb_Password.Text = password;

        }

        protected void Btn_SignIn_Click(object sender, EventArgs e)
        {
            string email = Tb_Email.Text;
            string password = Tb_Password.Text;

            Lbl_Status.Text = UserController.AuthenticateUser(email, password);

            if(Lbl_Status.Text == "Login Success.")
            {
                Lbl_Status.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Lbl_Status.ForeColor= System.Drawing.Color.Red;
            }
        }
    }
}