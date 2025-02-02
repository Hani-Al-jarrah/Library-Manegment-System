//using System;
//using System.Collections.Generic;
//using System.IO;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace LibraryProject
//{
//    public partial class updateImg : System.Web.UI.Page
//    {
//            private string imageFolderPath;
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            imageFolderPath = Server.MapPath("~/img/");

//        }


//        protected void edit_Click(object sender, EventArgs e)
//        {
//            //string users = Server.MapPath("users.txt");
//            //if (File.Exists(users))
//            //{
//            //    string[] readData = File.ReadAllLines(users);

//            //    for (int i = 0; i < readData.Length; i++)
//            //    {
//            //        string[] studentData = readData[i].Split(',');
//            //        if (studentData[7] == "true")
//            //        {
//            //            readData[i] = $"{studentData[0]},{name.Text},{email.Text},{phone.Text},{studentData[6]},true";
//            //            File.WriteAllLines(users, readData);
//            //            //saved.Text = "saved!";
//            //        }
//            //    }
//            //}
//        }


//        protected void resetPassword_Click(object sender, EventArgs e)
//        {
//            Response.Redirect("resetPassword.aspx");
//        }

//        protected void showRooms_Click(object sender, EventArgs e)
//        {
//            Response.Redirect("rooms.aspx");
//        }

//        protected void showBooks_Click(object sender, EventArgs e)
//        {
//            Response.Redirect("Books.aspx");
//        }

//        protected void editimg_Click(object sender, EventArgs e)
//        {
//            string imgPath = "img/img1.png";
//            if (fileUpload.HasFile)
//            {
//                string fileName = Path.GetFileName(fileUpload.FileName);
//                string savePath = Path.Combine(imageFolderPath, fileName);
//                fileUpload.SaveAs(savePath);
//                imgPath = "img/" + fileName;
//            }



//        }

//        protected void update_Click(object sender, EventArgs e)
//        {

//        }

//        protected void cancel_Click(object sender, EventArgs e)
//        {
//            Response.Redirect("Profile.aspx");
//        }
//    }
//}

using System;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group5.Sajeda
{
    public partial class updateImg : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void editimg_Click(object sender, EventArgs e)
        {
            string imgfile = Server.MapPath("~/img.txt");
            string imageFolderPath = Server.MapPath("~/img/");
            string imgPath = "/img/img1.png";


        //    if (File.Exists(imgfile))
        //    {
        //        // Read all lines from the file to check for the URL
        //        string[] fileContent = File.ReadAllLines(imgfile);

            //        // Open the file for writing, and overwrite it
            //        using (StreamWriter writeBook2 = new StreamWriter(imgfile, false))
            //        {
            //            foreach (var line in fileContent)
            //            {
            //                // Check if the line contains the old URL or image reference
            //                if (line.Contains("http://") || line.Contains("https://"))
            //                {
            //                    // Replace the old URL with the new one
            //                    writeBook2.WriteLine($"{imageFolderPath}"); // new image URL
            //                }
            //                else
            //                {
            //                    // If it's not a URL line, keep the original line
            //                    writeBook2.WriteLine(line);
            //                }
            //            }
            //        }
            //    }

      
    //        if (fileUpload.HasFile)
    //        {
    //            string fileName = Path.GetFileName(fileUpload.FileName);
    //            string savePath = Path.Combine(imageFolderPath, fileName);
    //            fileUpload.SaveAs(savePath);

    //            lblMessage.Text = "Image uploaded successfully!";
    //            lblMessage.ForeColor = System.Drawing.Color.Green;
    //        }
    //        else
    //        {
    //            lblMessage.Text = "Please select an image to upload.";
    //            lblMessage.ForeColor = System.Drawing.Color.Red;
    //        }
    //    }

    //}

}


    //if (File.Exists(imgfile))
    //{
    //    //string[] userImg = File.ReadAllLines(imgfile);

    //    using (StreamWriter writeBook2 = new StreamWriter(imgfile,false))
    //    {
    //        writeBook2.WriteLine($"{fileUpload.Text}");
    //    }


    //if (fileUpload.HasFile)
    //{
    //    string fileName = Path.GetFileName(fileUpload.FileName);
    //    string savePath = Path.Combine(imageFolderPath, fileName);
    //    fileUpload.SaveAs(savePath);
    //    imgPath = "img/" + fileName;
    //    string newimg = $"{imgPath}";
    //    File.AppendAllLines(imgfile, new[] { newimg });

    //}







    //string usersFile = Server.MapPath("users.txt");
    //if (File.Exists(usersFile))
    //{
    //    string[] readData = File.ReadAllLines(usersFile);
    //    for (int i = 0; i < readData.Length; i++)
    //    {
    //        string[] studentData = readData[i].Split(',');
    //        if (studentData[7] == "true")
    //        {
    //            // Add the image path as the last index
    //            Array.Resize(ref studentData, studentData.Length + 1);
    //            studentData[8] = imgPath;
    //            readData[i] = string.Join(",", studentData);
    //            File.WriteAllLines(usersFile, readData);
    //            break; // Stop after updating the correct record
    //        }
    //    }
    //}


        protected void resetPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("resetPassword.aspx");
        }

        protected void showRooms_Click(object sender, EventArgs e)
        {
            Response.Redirect("rooms.aspx");
        }

        protected void showBooks_Click(object sender, EventArgs e)
        {
            Response.Redirect("Books.aspx");
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            // Edit user details
        }

        protected void update_Click(object sender, EventArgs e)
        {
            // Update user data
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
    }
}
