using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Print : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {    
        //declared the function
        Retrieve_Image_signFromDB();
  
        // holds the session variables  
        Label1.Text = Session["number"].ToString();  
        Label2.Text = Session["name"].ToString();  
        Label3.Text = Session["category"].ToString();  
        Label4.Text = Session["dob"].ToString();  
        Label5.Text = Session["mobile"].ToString();  
        Label6.Text = Session["qualification"].ToString();  
        Label7.Text = Session["city"].ToString();  
        Label8.Text = Session["email"].ToString();  
        Label9.Text = System.DateTime.Today.ToShortDateString().ToString();  
    }
  
    private void Retrieve_Image_signFromDB()  
    {
        //Retriev the image url by the default3 and default4 page
        Image1.ImageUrl = "Default3.aspx";
        Image2.ImageUrl = "Default4.aspx";  
    }
}