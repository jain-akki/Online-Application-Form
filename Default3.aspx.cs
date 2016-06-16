using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["regConnectionString"].ConnectionString); 
        SqlConnection con = new SqlConnection(@"Data Source=.\Sqlexpress;Initial Catalog=OxfordStudentDb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select image from tbStudentsDetails where [reg_no] ='" + Session["number"].ToString() + "'", con);  
        SqlDataReader dr = cmd.ExecuteReader();
        //we have to typecast to byte[] before feeding it to BinaryWrite method.  
        if (dr.Read())  
        {  
            Response.BinaryWrite((byte[])dr["image"]);  
        }  
        con.Close();
    }
}