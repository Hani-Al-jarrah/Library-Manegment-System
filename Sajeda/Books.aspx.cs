using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group5
{
    public partial class Books : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string booksFile = Server.MapPath("books.txt");
            string[] book = File.ReadAllLines(booksFile);
            foreach (string line in book)
            {
                string[] bookData = line.Split(',');

                //string rowHtml = $"<span>{bookData[4]}</span><h5>{bookData[2]}</h5><p>{bookData[5]}</p><hr>";
                string addBook = $"<h5>{bookData[2]}</h5><hr>";
                showbooks.InnerHtml += addBook;
            }
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("editProfile.aspx");
        }
    }
}