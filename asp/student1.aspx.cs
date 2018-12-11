using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class student1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String s = Session["New"].ToString();
        var select = "SELECT Name, Username, Age ,Country, Gender,Email, Room_type, Room,Food_type,Fees FROM stud where Username='"+s+"' ";

        var c = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
        c.Open();// Your Connection String here
        var dataAdapter = new SqlDataAdapter(select, c);
        var commandBuilder = new SqlCommandBuilder(dataAdapter);
        var ds = new DataSet();
        dataAdapter.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        c.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("fees.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["New"] = "";
        Response.Redirect("login3.aspx");
       
    }
}