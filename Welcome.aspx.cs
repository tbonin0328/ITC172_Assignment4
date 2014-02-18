using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["PersonKey"] != null)
        {
            int pk = (int)Session["PersonKey"];
            ManageDonation md = new ManageDonation();
            DataTable table = md.GetDonation(pk);
            foreach (DataRow row in table.Rows)
            {
                lblHello.Text = "Welcome " + row["FirstName"].ToString() + " " + row["LastName"].ToString();
            }

            gvDonation.DataSource = table;
            gvDonation.DataBind();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void btnDonate_Click(object sender, EventArgs e)
    {
        Response.Redirect("DonationPage.aspx");
    }
}