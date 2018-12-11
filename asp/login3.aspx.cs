using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class login3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("Select * from stud where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' ", con);
        System.Data.DataTable dt = new System.Data.DataTable();
        sda.Fill(dt);

        con.Close();

        if (dt.Rows.Count == 1)
        {
            Session["New"] = TextBox1.Text;
            Response.Write("Hello" + TextBox1.Text);
            Response.Redirect("student1.aspx");
        }
        else
        {
            Response.Write("<script>alert('Incorrect Username Or Password');</script>");
        }
        
    }
    protected void TextBox2_TextChanged1(object sender, EventArgs e)
    {

    }
}