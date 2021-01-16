using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReloadableRFID.Library.Models;
using ReloadableRFID.Library.Repositories;

namespace ReloadableRFID.Web.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack)
            {
                var user = await UserRepository.GetUserDetails(txtUsername.Text, txtPassword.Text);
                if (user != null)
                {
                    Session["UserId"] = user.Id;
                    Session["Username"] = user.Username;
                    Session["AccountTypeId"] = user.AccountTypeId;
                    Response.Write(@"<script>alert('Successfully Logged in!');</script>");
                    Response.Redirect("~/Pages/Home.aspx", false);
                }
                else
                {
                    Response.Write(@"<script>alert('Invalid username/password');</script>");
                }
            }
            else
            {
                Session.Clear();
                Session.Abandon();
            }
        }
    }
}