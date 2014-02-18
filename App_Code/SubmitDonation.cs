using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for SubmitDonation
/// </summary>
public class SubmitDonation
{
    private Donation d;
    private SqlConnection connect;

    public SubmitDonation(Donation don)
	{
        d = don;
        connect = new SqlConnection(ConfigurationManager.ConnectionStrings["CommunityAssistConnectionString"].ConnectionString);
	}

	public void Donate()
	{
        string sql = "Insert into Donation(DonationAmount, DonationDate, PersonKey) Values (@Donation, getdate(), Ident_Current('Person'))";

        SqlCommand cmd = new SqlCommand(sql, connect);
        cmd.Parameters.AddWithValue("@Donation", d.Amount);

        connect.Open();
        cmd.ExecuteNonQuery();
        connect.Close();
	}
}