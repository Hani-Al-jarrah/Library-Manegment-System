using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Net.Mail;
namespace Group5
{
    public partial class editProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void edit_Click(object sender, EventArgs e)
        //{
        //    string users = Server.MapPath("users.txt");
        //    if (File.Exists(users))
        //    {
        //        string[] readData = File.ReadAllLines(users);

        //        for (int i = 0; i < readData.Length; i++)
        //        {
        //            string[] studentData = readData[i].Split(',');
        //            if (studentData[7] == "true")
        //            {
        //                readData[i] = $"{studentData[0]},{name.Text},{email.Text},{studentData[3]},{studentData[4]},{studentData[5]},{phone.Text},{studentData[6]},true";
        //                File.WriteAllLines(users, readData);
        //                //saved.Text = "saved!";
        //            }
        //        }
        //    }
        //}

        protected void edit_Click(object sender, EventArgs e) {

            string usersFilePath = Server.MapPath("users.txt");
            if (File.Exists(usersFilePath))
            {
                string[] userRecords = File.ReadAllLines(usersFilePath);

                // Validate input before processing
                if (!IsValidName(name.Text)) { 
                //{
                //    validationMessage.Text = "Invalid name. Only letters and spaces are allowed.";
                //    validationMessage.ForeColor = System.Drawing.Color.Red;
                //    validationMessage.Visible = true;
                    return;
                }

                if (!IsValidEmail(email.Text))
                {
                    //validationMessage.Text = "Invalid email format.";
                    //validationMessage.ForeColor = System.Drawing.Color.Red;
                    //validationMessage.Visible = true;
                    return;
                }

                for (int i = 0; i < userRecords.Length; i++)
                {
                    string[] userData = userRecords[i].Split(',');

                    if (userData[7] == "true") // Checking if the user is active
                    {
                        userRecords[i] = $"{userData[0]},{name.Text},{email.Text},{userData[3]},{userData[4]},{userData[5]},{phone.Text},{userData[6]},true";
                        File.WriteAllLines(usersFilePath, userRecords);

                        //validationMessage.Text = "Saved successfully!";
                        //validationMessage.ForeColor = System.Drawing.Color.Green;
                        //validationMessage.Visible = true;
                        return;
                    }
                }
            }
        }

// Method to validate the full name (only letters and spaces allowed)
        private bool IsValidName(string name)
        {
            return !string.IsNullOrWhiteSpace(name) && Regex.IsMatch(name, @"^[A-Za-z\s]+$");
        }

        // Method to validate the email format
        private bool IsValidEmail(string email)
        {
            return !string.IsNullOrWhiteSpace(email) && Regex.IsMatch(email, @"^[^@\s]+@[^@\s]+\.[^@\s]+$");
        }

        
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

        protected void editimg_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateImg.aspx");
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
        
    }
}

/*
 string file = Server.MapPath("users.txt");
            if (File.Exists(file))
            {
                string user = File.ReadAllText(file);
                string[] userData = user.Split(',');

                string file2 = Server.MapPath("logUser.txt");
                string[] users = File.ReadAllLines(file2);
                foreach (string u in users)
                {
                    string[] userData2 = u.Split(',');
                    if (userData2[1] == userData[1] && userData2.Length > 3)
                    {
                        name.Text = userData2[1];
                        email.Text = userData2[2];
                        phone.Text = userData2[3];
                        age.Text = userData2[4];
                        address.Text = userData2[5];

                        userName.Text = userData2[0];
                        userPhone.Text = userData2[3];
                        userAge.Text = userData2[4];
                        userAddress.Text = userData2[5];
                        break;
                    }
                    else
                    {
                        name.Text = userData[0];
                        userName.Text = userData[0];
                        email.Text = userData[1];
                    }
                }
            }
 
 */