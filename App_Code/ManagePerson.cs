//ManagePerson.cs

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for ManagePerson
/// </summary>
public class ManagePerson
{
    private PersonAddress pa;
    private Person p;
    private PersonContact pc;
    private Donation d;
    private SqlConnection connect;

    public ManagePerson(PersonAddress adr, Person per, PersonContact con)
    {
        pa = adr;
        p = per;
        pc = con;
        connect = new SqlConnection(ConfigurationManager.ConnectionStrings["CommunityAssistConnectionString"].ConnectionString);
    }

    public void WritePerson()
    {
        string sql = "Insert into Person(PersonLastName, PersonFirstName, PersonUsername, PersonPlainPassword, Personpasskey, PersonUserPassword) Values (@Last, @First, @Email, @Password, @PassCode, @hash)";

        PassCodeGenerator psg = new PassCodeGenerator();
        int passcode = psg.GetPassCode();
        PasswordHash ph = new PasswordHash();
        
        SqlCommand cmd = new SqlCommand(sql, connect);
        cmd.Parameters.AddWithValue("@Last", p.LastName);
        cmd.Parameters.AddWithValue("@First", p.FirstName);
        cmd.Parameters.AddWithValue("@Email", p.Email);
        cmd.Parameters.AddWithValue("@Password", p.Password);
        cmd.Parameters.AddWithValue("@PassCode", passcode);
        cmd.Parameters.AddWithValue("@hash", ph.HashIt(p.Password, passcode.ToString()));

        connect.Open();
        cmd.ExecuteNonQuery();
        connect.Close();
    }

    public void WriteAddress()
    {
        string sql = "Insert into PersonAddress(Street, City, State, Zip, PersonKey) Values(@Address, @City, @State, @Zip, Ident_Current ('Person'))";
        SqlCommand cmd = new SqlCommand(sql, connect);
        cmd.Parameters.AddWithValue("@Address", pa.Address);
        cmd.Parameters.AddWithValue("@City", pa.City);
        cmd.Parameters.AddWithValue("@State", pa.State);
        cmd.Parameters.AddWithValue("@Zip", pa.Zip);

        connect.Open();
        cmd.ExecuteNonQuery();
        connect.Close();
    }

    public void WriteContact()
    {
        string sql = "Insert into PersonContact(ContactInfo, PersonKey ) Values (@Phone,Ident_Current('Person'))";
        SqlCommand cmd = new SqlCommand(sql, connect);
        cmd.Parameters.AddWithValue("@Phone", pc.Phone);

        connect.Open();
        cmd.ExecuteNonQuery();
        connect.Close();
    }
}