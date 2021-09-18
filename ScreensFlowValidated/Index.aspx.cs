using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScreensFlowValidated
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Response.Redirect("CompanyRegister.aspx");
            }
        }

        protected void btnRecoverPassword(object sender, EventArgs e)
        {
            Response.Redirect("Recovery.aspx");
        }

        protected void btnRegisterUser(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}