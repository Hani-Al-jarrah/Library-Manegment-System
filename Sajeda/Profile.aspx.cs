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
            string usersFile = Server.MapPath("/Suhaib/users.txt");
            string[] user = File.ReadAllLines(usersFile);
            foreach (string line in user)
            {
                string[] userData = line.Split(',');

                studentNo.Text = userData[2];
                Name.Text = userData[0];
                Email.Text = userData[3];
                Facutly.Text = userData[6];
                department.Text = userData[7];
                phone.Text = userData[1];
                Gender.Text = userData[5];

                //string rowHtml = $"<tr><td>{bookData[0]}</td><td>{bookData[1]}</td><td>{bookData[2]}</td><td>{bookData[3]}</td></tr>";
                //booksrow.InnerHtml += rowHtml;
            }
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("editProfile.aspx");
        }

    }
}