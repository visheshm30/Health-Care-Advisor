using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            con.Open();
            String checkusr = "Select count(*) from stud where Name='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkusr, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Response.Write("User already exists");
            }
            else
            {
                con.Open();
                String usr = "Insert into stud(Name,Age,Gender,Username,password,Country,Email,Room_type,Room,Food_type,Fees) VALUES('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + DropDownList2.SelectedItem + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedItem + "','" + TextBox6.Text + "', '" + DropDownList3.SelectedItem + "','null','" + DropDownList4.SelectedItem + "','NO')";
                SqlCommand com1 = new SqlCommand(usr, con);
                com1.ExecuteNonQuery();
            }
            Response.Redirect("login.aspx");
        }
        catch (Exception e1)
        {
            Response.Write(e1);
        }
        Response.Write("<script>alert('Registration Successful');</script>");
       
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void TextBox6_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}