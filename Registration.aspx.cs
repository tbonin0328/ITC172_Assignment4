using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Person p = new Person();
        PersonAddress pa = new PersonAddress();
        PersonContact pc = new PersonContact();

        try
        {
        p.LastName = txtLastName.Text;
        p.FirstName = txtFirstName.Text;
        p.Email = txtEmail.Text;
        
        pa.Address = txtAddress.Text;
        pa.City = txtCity.Text;
        pa.State = txtState.Text;
        pa.Zip = txtZip.Text;
        
        pc.Phone = txtPhone.Text;
        
        p.Password = txtConfirm.Text;

        ManagePerson mp = new ManagePerson(pa, p, pc);
        mp.WritePerson();
        mp.WriteAddress();
        mp.WriteContact();
        Response.Redirect("Default.aspx");
        }

        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
}