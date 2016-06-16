using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class ApplicationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack){
            Label2.Text = Session["number"].ToString();
            Label4.Text = Session["coursename"].ToString();
        }
    }

    //Gerate a Unique Number...
    
    public string cast = null;
    public byte[] image_Byte;
    public byte[] sign_Byte;

    public void studentDetails()
    {
        //select one rado button value    
        if (RadioButton1.Checked)
        {
            cast = "General";
        }
        else if (RadioButton2.Checked)
        {
            cast = "OBC";
        }
        else if (RadioButton3.Checked)
        {
            cast = "SC";
        }

        else if (RadioButton4.Checked)
        {
            cast = "ST";
        }
        else
        {
            cast = null;
        }

        // Allocate memory for image and signature
        image_Byte = new byte[FileUpload1.PostedFile.InputStream.Length + 1];
        FileUpload1.PostedFile.InputStream.Read(image_Byte, 0, image_Byte.Length);
        
        sign_Byte = new byte[FileUpload2.PostedFile.InputStream.Length + 1];
        FileUpload2.PostedFile.InputStream.Read(sign_Byte, 0, sign_Byte.Length);

        //Check whether image size 25 kb and signature size 12 kb or not
        long size_img = FileUpload1.PostedFile.InputStream.Length;
        long size_sign = FileUpload2.PostedFile.InputStream.Length;

        FileUpload Upload_image = (FileUpload)this.FindControl("FileUpload1");
        FileUpload Upload_sign = (FileUpload)this.FindControl("FileUpload2");

        // Store required control values to the session variables
        //Session["number"] = Label2.Text;
        Session["name"] = TextBox1.Text;
        Session["category"] = cast;
        Session["dob"] = TextBox2.Text;
        Session["mobile"] = TextBox3.Text;
        Session["qualification"] = TextBox4.Text;
        Session["city"] = TextBox5.Text;
        Session["email"] = TextBox6.Text;

        captcha1.ValidateCaptcha(TextBox8.Text.Trim());
        
        if (!captcha1.UserValidated)
        {
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.Text = "Enter Valid Captcha code";
            Label2.Text = null;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        studentDetails();
        //create connection string for save values to students table
        using (SqlConnection con = new SqlConnection(@"Data Source=.\Sqlexpress;Initial Catalog=OxfordStudentDb;Integrated Security=True"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tbStudentsDetails values(@n,@a,@r,@b,@c,@d,@e,@f,@l,@p,@q)", con);
            cmd.Parameters.AddWithValue("n", Label2.Text);
            cmd.Parameters.AddWithValue("a", TextBox1.Text);
            cmd.Parameters.AddWithValue("r", cast);
            cmd.Parameters.AddWithValue("b", TextBox2.Text);
            cmd.Parameters.AddWithValue("c", TextBox3.Text);
            cmd.Parameters.AddWithValue("d", TextBox4.Text);
            cmd.Parameters.AddWithValue("e", TextBox5.Text);
            cmd.Parameters.AddWithValue("f", TextBox6.Text);
            cmd.Parameters.AddWithValue("l", Label4.Text);
            cmd.Parameters.AddWithValue("p", image_Byte);
            cmd.Parameters.AddWithValue("q", sign_Byte);
            cmd.ExecuteNonQuery();
            Label1.Text = "<br/> Your form has been submitted successfully.TakePreview Now,Your Registration Number is: ";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        studentDetails();
        // for goto Print.aspx page
        Response.Redirect("Print.aspx");
    }
}