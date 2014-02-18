using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        LoginClass lg = new LoginClass(txtUserName.Text, txtPassword.Text);
        int personKey = lg.ValidateLogin();
        if (personKey != 0)
        {
            Session["PersonKey"] = personKey;
            //lblError.Text = "Welcome Back!";
            Response.Redirect("Welcome.aspx");
        }
        else
        {
            lblError.Text = "Invalid Login";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }

}