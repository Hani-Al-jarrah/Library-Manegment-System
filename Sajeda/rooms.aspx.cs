using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group5
{
    public partial class rooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string roomsFile = Server.MapPath("rooms.txt");
            string[] book = File.ReadAllLines(roomsFile);
            foreach (string line in book)
            {
                string[] roomData = line.Split(',');

                //string rowHtml = $"<span>{bookData[4]}</span><h5>{bookData[2]}</h5><p>{bookData[5]}</p><hr>";
                //string addRoom = $"<h5>{roomData[1]}</h5><hr>";
                //showrooms.InnerHtml += addRoom;

                string roomCard = $@"
                        <div class='col-md-12 col-lg-4'>
                            <div class='card'>
                                <div class='card-body'>
                                    <h4 class='card-title'>{roomData[1]}</h4>
                                    <p class='card-text'>{roomData[2]}</p>
                                </div>
                            </div>
                        </div>";

                // Append the generated card to the StringBuilder
                //showrooms.Append(roomCard);
            }
        

        // Set the generated HTML to the 'showrooms' div
        showrooms.InnerHtml = showrooms.ToString();
    }
        



        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("editProfile.aspx");
        }
    }

}

