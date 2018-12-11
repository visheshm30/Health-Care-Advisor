using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class admin1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var select = "SELECT Name, Username, Room_type, Gender, Room, Age FROM stud";
      
        var c = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
        c.Open();// Your Connection String here
        var dataAdapter = new SqlDataAdapter(select, c);
        var commandBuilder = new SqlCommandBuilder(dataAdapter);
        var ds = new DataSet();
        dataAdapter.Fill(ds);
        GridView3.DataSource = ds;
        GridView3.DataBind();
        
        c.Close();
        c.Open();
        var select1 = "SELECT * from room";
        var dataAdapter1 = new SqlDataAdapter(select1, c);
        var commandBuilder1 = new SqlCommandBuilder(dataAdapter1);
        var ds1 = new DataSet();
        dataAdapter1.Fill(ds1);
        GridView4.DataSource = ds1;
        GridView4.DataBind();
        c.Close();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            con.Open();
            String usr = "Update stud SET Room='" + TextBox2.Text + "' where Username='" + TextBox1.Text + "'";
            String usr2 = "Update Room SET Vacant='NO' where Room_id='" + TextBox2.Text + "'";
            SqlCommand com1 = new SqlCommand(usr, con);
            com1.ExecuteNonQuery();
            SqlCommand com2 = new SqlCommand(usr2, con);
            com2.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Change Successful');</script>");

        }
        catch (Exception e1)
        {
            Response.Write("<script>alert('Error!');</script>");
        }
        this.Page_Load(null, null);
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            con.Open();
            String usr = "Update stud SET Room='NULL' where Username='" + TextBox3.Text + "'";
            String usr2 = "Update Room SET Vacant='YES' where Room_id='" + TextBox4.Text + "'";
            SqlCommand com1 = new SqlCommand(usr, con);
            com1.ExecuteNonQuery();
            SqlCommand com2 = new SqlCommand(usr2, con);
            com2.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Change Successful');</script>");

        }
        catch (Exception e1)
        {
            Response.Write("<script>alert('Error!');</script>");
        }
        this.Page_Load(null, null);
    }
}