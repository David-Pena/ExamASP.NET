using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScreensFlowValidated
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnPay(object sender, EventArgs e)
        {
            if (IsValid)
            {

                float prod1 = float.Parse(txtStock.Text) * float.Parse(txtProdPrice.Text);
                float prod2 = float.Parse(txtStock2.Text) * float.Parse(txtProdPrice2.Text);
                float prod3 = float.Parse(txtStock3.Text) * float.Parse(txtProdPrice3.Text);
                float prod4 = float.Parse(txtStock4.Text) * float.Parse(txtProdPrice4.Text);
                float subtotal = prod1 + prod2 + prod3 + prod4;
                float iva = subtotal * 19/100;
                float total = subtotal + iva;

                Label1.Text = "$" + prod1.ToString();
                Label2.Text = "$" + prod2.ToString();
                Label3.Text = "$" + prod3.ToString();
                Label4.Text = "$" + prod4.ToString();

                Label5.Text += "$" + subtotal.ToString();
                Label6.Text += "$" + iva.ToString();
                Label7.Text += "$" + total.ToString();
            }
        }

        protected void BtnSurvey(object sender, EventArgs e)
        {
            Response.Redirect("Survey.aspx");
        }
    }
}