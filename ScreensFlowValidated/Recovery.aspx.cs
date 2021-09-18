using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ScreensFlowValidated
{
    public partial class Recovery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSendMail(object sender, EventArgs e)
        {
            if (IsValid)
            {
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.Credentials = new System.Net.NetworkCredential("pdavid0119@gmail.com", "orlando.20");
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpClient.EnableSsl = true;
                MailMessage mail = new MailMessage();

                //Setting From , To and CC
                mail.From = new MailAddress("pdavid0119@gmail.com", "NO-REPLY");
                mail.Subject = "PASSWORD RECOVERY";
                mail.Body = "This is an instant message from PASSWORD RECOVERY ASSISTANT, your password is: lovemath4E#";
                mail.To.Add(new MailAddress(txtEmail.Text));

                Type cstype = GetType();

                try
                {
                    smtpClient.Send(mail);
                    ClientScript.RegisterStartupScript(cstype, "UserMsg", "<script>alert('Successfully Send, Redirecting to Login Page...');if(alert){ window.location='Index.aspx';}</script>");
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(cstype, "UserMsg", "<script>alert('Sending Failed...');if(alert){ window.location='Recovery.aspx';}</script>");
                }
                
            }
        }
    }
}