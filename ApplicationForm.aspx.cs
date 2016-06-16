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

    }

    //Gerate a Unique Number...
    public String characters = "0123456789";

    public string UniqueNumber()
    {
        Random unique1 = new Random();
        string s = "MNT";
        int unique;
        int n = 0;
        while (n < 10)
        {
            if (n % 2 == 0)
            {
                s += unique1.Next(10).ToString();
            }
            else
            {
                unique = unique1.Next(52);
                if (unique < this.characters.Length)
                    s = String.Concat(s, this.characters[unique]);
            }
            Label2.Text = s.ToString();
            n++;
        }
        return s;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String p = UniqueNumber();

        //select one rado button value    
        string cast = null;
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
        byte[] image_Byte = new byte[FileUpload1.PostedFile.InputStream.Length + 1];
        FileUpload1.PostedFile.InputStream.Read(image_Byte, 0, image_Byte.Length);
        byte[] sign_Byte = new byte[FileUpload2.PostedFile.InputStream.Length + 1];
        FileUpload2.PostedFile.InputStream.Read(sign_Byte, 0, sign_Byte.Length);

        //Check whether image size 25 kb and signature size 12 kb or not
        long size_img = FileUpload1.PostedFile.InputStream.Length;
        long size_sign = FileUpload2.PostedFile.InputStream.Length;
        //if (size_img > 25600 | size_sign > 12228)
        //{
        //    Label1.Text = "Please Enter image size less than 25kb and Signature size less than 12kb.Your image and signature size(in byte) are:- " + size_img + ',' + size_sign;
        //    Label2.Text = null;
        //}
        //else
        //{
            //create connection string for save values to students table
            //ConfigurationManager.ConnectionStrings["regConnectionString"].ConnectionString
            //SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=Database;Integrated Security=True;Pooling=False");
            using (SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=Database;Integrated Security=True;Pooling=False"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Student values(@n,@a,@r,@b,@c,@d,@e,@f,@p,@q)", con);
                cmd.Parameters.AddWithValue("n", Label2.Text);
                cmd.Parameters.AddWithValue("a", TextBox1.Text);
                cmd.Parameters.AddWithValue("r", cast);
                cmd.Parameters.AddWithValue("b", TextBox2.Text);
                cmd.Parameters.AddWithValue("c", TextBox3.Text);
                cmd.Parameters.AddWithValue("d", TextBox4.Text);
                cmd.Parameters.AddWithValue("e", TextBox5.Text);
                cmd.Parameters.AddWithValue("f", TextBox6.Text);
                cmd.Parameters.AddWithValue("p", image_Byte);
                cmd.Parameters.AddWithValue("q", sign_Byte);
                cmd.ExecuteNonQuery();

                FileUpload Upload_image = (FileUpload)this.FindControl("FileUpload1");
                FileUpload Upload_sign = (FileUpload)this.FindControl("FileUpload2");

                // Store required control values to the session variables
                Session["number"] = Label2.Text;
                Session["name"] = TextBox1.Text;
                Session["category"] = cast;
                Session["dob"] = TextBox2.Text;
                Session["mobile"] = TextBox3.Text;
                Session["qualification"] = TextBox4.Text;
                Session["city"] = TextBox5.Text;
                Session["email"] = TextBox6.Text;

                captcha1.ValidateCaptcha(TextBox9.Text.Trim());
                Label1.Text = "<br/> Your form has been submitted successfully.TakePreview Now,Your Registration Number is: ";
                /*try
                {

                    if (Upload_image.HasFile && Upload_sign.HasFile && captcha1.UserValidated)
                    {

                        int i = cmd.ExecuteNonQuery();

                        if (i > 0)
                        {
                            // Send Regisration number to user's mail box after submitting the form successfully
                            SmtpClient smtpc = new SmtpClient("smtp.gmail.com");//smtp.mail.yahoo.com
                            smtpc.Port = 578;//465
                            smtpc.EnableSsl = true;
                            smtpc.UseDefaultCredentials = false;
                            string user = "akshay.jain@sscbs.du.ac.in"; //<--Enter your gmail id here
                            string pass = "Piland@akki";//<--Enter Your gmail password here
                            string sub = "Form filling Application:"; //Subject for your website
                            string msg = "Webcome to http://easyweb.somee.com Your Registration Number is: " + Label2.Text;  //Message body
                            smtpc.Credentials = new NetworkCredential(user, pass);
                            MailMessage email = new MailMessage(user, TextBox6.Text, sub, msg);
                            smtpc.Send(email);
                            Label1.Text = "Your form has been submitted successfully.TakePreview Now,Your Registration Number is: ";
                            Label3.Text = null;
                        }
                        else
                        {
                            Label1.Text = "Your form has been not submitted successfully try again later";
                            Label3.Text = null;
                            Label2.Text = null;
                        }
                    }
                 
                    else
                    {
                        Label3.ForeColor = System.Drawing.Color.Red;
                        Label3.Text = "Enter Valid Captcha code";
                        Label2.Text = null;
                    }
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                }
                finally
                {
                con.Close();
                }*/
                if (!captcha1.UserValidated)
                {
                    Label3.ForeColor = System.Drawing.Color.Red;
                    Label3.Text = "Enter Valid Captcha code";
                    Label2.Text = null;
                }
            }
        //}
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        // for goto default2.aspx page
        Response.Redirect("Print.aspx");
    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{

    //    captcha1.ValidateCaptcha(TextBox11.Text.Trim());
    //    if (captcha1.UserValidated)
    //    {
    //        Label11.ForeColor = System.Drawing.Color.Green;
    //        Label11.Text = "You have Entered Valid Captcha Characters";
    //    }
    //    else
    //    {
    //        Label11.ForeColor = System.Drawing.Color.Red;
    //        Label11.Text = "You have Entered InValid Captcha Characters please Enter again";
    //    }
    //}
}