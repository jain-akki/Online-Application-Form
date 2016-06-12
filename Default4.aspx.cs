using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["regConnectionString"].ConnectionString);
        con.Open();    
        SqlCommand cmd = new SqlCommand("select sign from students where [reg_no] ='" + Session["number"].ToString()+ "'", con);    
        SqlDataReader dr = cmd.ExecuteReader();    
        //we have to typecast to byte[] before feeding it to BinaryWrite method.    
        if (dr.Read())   
        {    
            Response.BinaryWrite((byte[])dr["sign"]);   
        }      
        con.Close();
    }
}