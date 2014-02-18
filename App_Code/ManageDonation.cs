using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for ManageVehicle
/// </summary>
public class ManageDonation
{
    SqlConnection connect;

    public ManageDonation()
    {
        connect = new SqlConnection(ConfigurationManager.ConnectionStrings["CommunityAssistConnectionString"].ConnectionString);
    }

    public DataTable GetDonation(int PersonKey)
    {
        string sql = "Select PersonFirstName, PersonLastName, DonationAmount, DonationDate From Donation d inner Join Person p on p.PersonKey=d.PersonKey where p.PersonKey=@personKey";
        SqlCommand cmd = new SqlCommand(sql, connect);
        cmd.Parameters.AddWithValue("@personKey", PersonKey);
        SqlDataReader reader = null;
        DataTable table = new DataTable();
        connect.Open();
        reader = cmd.ExecuteReader();
        table.Load(reader);
        connect.Close();

        return table;
    }
}