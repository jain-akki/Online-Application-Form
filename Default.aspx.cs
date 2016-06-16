using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
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
            n++;
        }
        return s;
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        Session["number"] = UniqueNumber();
        Session["coursename"] = dlist.SelectedItem.Text;
        Session["course"] = dlist.SelectedValue;

        if (dlist.SelectedValue != "0")
        {
            Response.Redirect("ApplicationForm.aspx");
        }
    }
}