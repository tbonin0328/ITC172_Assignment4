using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DonationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Donation d = new Donation();
        d.Amount = txtAmount.Text;

        SubmitDonation sd = new SubmitDonation(d);
        sd.Donate();

        lblResult.Text = "Thank you for your generous donation!";
    }
}