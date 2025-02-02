using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group5
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string booksFile = Server.MapPath("users.txt");
            string[] book = File.ReadAllLines(booksFile);
            foreach (string line in book)
            {
                string[] bookData = line.Split(',');

                studentNo.Text=bookData[0];
                Name.Text=bookData[1];
                Email.Text = bookData[2];
                Facutly.Text = bookData[3];
                department.Text = bookData[4];
                phone.Text = bookData[6];
                Gender.Text = bookData[8];

                //string rowHtml = $"<tr><td>{bookData[0]}</td><td>{bookData[1]}</td><td>{bookData[2]}</td><td>{bookData[3]}</td></tr>";
                //booksrow.InnerHtml += rowHtml;
            }
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("editProfile.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}