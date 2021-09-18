using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScreensFlowValidated
{
    public partial class CompanyRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSaveInfo(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
}