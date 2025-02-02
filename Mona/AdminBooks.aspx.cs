using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group5.Mona
{
    public partial class AdminBooks : System.Web.UI.Page
    {
        private string filePath;
        private string imageFolderPath;

        protected void Page_Load(object sender, EventArgs e)
        {
            filePath = Server.MapPath("~/books.txt");
            imageFolderPath = Server.MapPath("~/img/");
            EnsureFileExists();
            EnsureImageFolderExists();

            if (!IsPostBack)
            {
                LoadBooks();
            }
        }
        private void LoadRequestedBooks()
        {
            string borrowFilePath = Server.MapPath("~/borrowDetails.txt");
            if (File.Exists(borrowFilePath))
            {
                List<BorrowDetails> requestedBooks = File.ReadAllLines(borrowFilePath)
                    .Select(line => line.Split(','))
                    .Where(parts => parts.Length >= 6)
                    .Select(parts => new BorrowDetails
                    {
                        BookID = parts[0],
                        BookName = parts[1],
                        Author = parts[2],
                        BorrowDate = parts[3],  // ✅ Correctly load Borrow Date
                        ReturnDate = parts[4],  // ✅ Correctly load Return Date
                        Status = parts[5].Trim(), // ✅ Trim to prevent extra spaces
                        ShowActionButtons = parts[5].Trim() == "Pending" // ✅ Show buttons only if status is "Pending"
                    })
                    .ToList();

                gvRequestedBooks.DataSource = requestedBooks;
                gvRequestedBooks.DataBind();
            }
        }



        private void EnsureFileExists()
        {
            if (!File.Exists(filePath))
            {
                File.Create(filePath).Close();
            }
        }

        private void EnsureImageFolderExists()
        {
            if (!Directory.Exists(imageFolderPath))
            {
                Directory.CreateDirectory(imageFolderPath);
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string bookId = txtBookId.Text.Trim();
            string bookName = txtBookName.Text.Trim();
            string author = txtAuthor.Text.Trim();
            string description = txtDescription.Text.Trim();
            string imagePath = "/img/book.jpg";

            if (fileUpload.HasFile)
            {
                string fileName = Path.GetFileName(fileUpload.FileName);
                string savePath = Path.Combine(imageFolderPath, fileName);
                fileUpload.SaveAs(savePath);
                imagePath = "img/" + fileName;
            }

            if (IsBookIdExists(bookId))
            {
                lblError.Text = "Book ID already exists!";
                lblError.Visible = true;
                return;
            }
            if (IsBookNameExists(bookName))
            {
                lblError.Text = "Book Name already exists!";
                lblError.Visible = true;
                return;
            }

            if (!string.IsNullOrEmpty(bookId) && !string.IsNullOrEmpty(bookName) && !string.IsNullOrEmpty(author))
            {
                string newBook = $"{bookId},{bookName},{author},{description},Available,{imagePath}";
                File.AppendAllLines(filePath, new[] { newBook });
                LoadBooks();
                lblError.Visible = false;
            }
        }

        private bool IsBookIdExists(string bookId)
        {
            return File.ReadAllLines(filePath).Any(line => line.StartsWith(bookId + ","));
        }

        private bool IsBookNameExists(string bookName)
        {
            return File.ReadAllLines(filePath)
                       .Any(line =>
                       {
                           var parts = line.Split(',');
                           return parts.Length > 1 && parts[1].Equals(bookName, StringComparison.OrdinalIgnoreCase);
                       });
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string bookIdToEdit = btn.CommandArgument;
            List<string> lines = File.ReadAllLines(filePath).ToList();
            string bookToEdit = lines.FirstOrDefault(line => line.StartsWith(bookIdToEdit + ","));

            if (bookToEdit != null)
            {
                string[] parts = bookToEdit.Split(',');

                if (parts.Length < 5)
                    return; // Invalid data format, return early.

                // Assign values to input fields
                txtBookId.Text = parts[0];
                txtBookName.Text = parts[1];
                txtAuthor.Text = parts[2];
                txtDescription.Text = parts[3];

                // Show the update button and hide the add button
                btnUpdate.Visible = true;
                btnAdd.Visible = false;

                // Store the original book ID and name for validation
                hiddenOriginalBookId.Value = parts[0];
                hiddenOriginalBookName.Value = parts[1];

                // 📌 **Handle Image Display**
                //if (parts.Length > 5 && !string.IsNullOrEmpty(parts[5])) // Ensure image exists
                //{
                //    imgPreview.ImageUrl = "~/" + parts[5]; // Set the image preview
                //    imgPreview.Visible = true; // Show image if available
                //}
                //else
                //{
                //    imgPreview.Visible = false; // Hide if no image is available
                //}
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string newBookId = txtBookId.Text.Trim();
            string newBookName = txtBookName.Text.Trim();
            string author = txtAuthor.Text.Trim();
            string description = txtDescription.Text.Trim();
            string originalBookId = hiddenOriginalBookId.Value;
            string originalBookName = hiddenOriginalBookName.Value;
            string imagePath = ""; // Default to empty in case no new image is uploaded

            List<string> lines = File.ReadAllLines(filePath).ToList();

            // Validate duplicate book ID or name
            foreach (string line in lines)
            {
                string[] parts = line.Split(',');

                if (parts.Length < 5)
                    continue;

                string existingBookId = parts[0];
                string existingBookName = parts[1];

                if (existingBookId != originalBookId && newBookId == existingBookId)
                {
                    lblError.Text = "Book ID already exists!";
                    lblError.Visible = true;
                    return;
                }

                if (existingBookName != originalBookName && newBookName.Equals(existingBookName, StringComparison.OrdinalIgnoreCase))
                {
                    lblError.Text = "Book Name already exists!";
                    lblError.Visible = true;
                    return;
                }
            }

            // 📌 **Handle File Upload**
            if (fileUpload.HasFile)
            {
                string fileName = Path.GetFileName(fileUpload.FileName);
                string savePath = Server.MapPath("~/img/") + fileName;
                fileUpload.SaveAs(savePath);
                imagePath = "img/" + fileName; // Store relative image path
            }

            // 📌 **Update Book Details**
            for (int i = 0; i < lines.Count; i++)
            {
                string[] parts = lines[i].Split(',');

                if (parts.Length < 5)
                    continue;

                if (parts[0] == originalBookId)
                {
                    // If image is uploaded, update the image path; otherwise, keep the old one
                    string existingImagePath = parts.Length > 5 ? parts[5] : "";

                    if (string.IsNullOrEmpty(imagePath))
                    {
                        imagePath = existingImagePath; // Retain the old image if no new image is uploaded
                    }

                    lines[i] = $"{newBookId},{newBookName},{author},{description},Available,{imagePath}";
                    break;
                }
            }

            File.WriteAllLines(filePath, lines);
            LoadBooks();

            lblError.Visible = false;
            btnUpdate.Visible = false;
            btnAdd.Visible = true;
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string bookIdToDelete = btn.CommandArgument;

            List<string> lines = File.ReadAllLines(filePath).ToList();
            string bookToDelete = lines.FirstOrDefault(line => line.StartsWith(bookIdToDelete + ","));

            if (bookToDelete != null)
            {
                string[] parts = bookToDelete.Split(',');
                if (parts.Length > 5 && !string.IsNullOrEmpty(parts[5]))  // Ensure image exists
                {
                    string imagePath = parts[5];
                    string imageFullPath = Server.MapPath("~/" + imagePath);
                    if (File.Exists(imageFullPath))  // Delete the image if exists
                    {
                        File.Delete(imageFullPath);
                    }
                }

                // Remove the book from the file
                lines.RemoveAll(line => line.StartsWith(bookIdToDelete + ","));
                File.WriteAllLines(filePath, lines);

                LoadBooks(); // Refresh the book list
            }
        }



        private void LoadBooks()
        {
            if (File.Exists(filePath))
            {
                List<Book> books = File.ReadAllLines(filePath)
                    .Select(line => line.Split(','))
                    .Where(parts => parts.Length >= 6)
                    .Select(parts => new Book
                    {
                        BookID = parts[0],
                        BookName = parts[1],
                        Author = parts[2],
                        Description = parts[3],
                        Status = parts[4],
                        ImagePath = parts[5]
                    })
                    .OrderBy(book => int.TryParse(book.BookID, out int id) ? id : int.MaxValue)
                    .ToList();

                gvBooks.DataSource = books;
                gvBooks.DataBind();
            }
            LoadRequestedBooks();
        }

        //protected void btnConfirmBorrow_Click(object sender, EventArgs e)
        //{
        //    Button btn = (Button)sender;
        //    string bookIdToConfirm = btn.CommandArgument;
        //    List<string> lines = File.ReadAllLines(filePath).ToList();

        //    for (int i = 0; i < lines.Count; i++)
        //    {
        //        if (lines[i].StartsWith(bookIdToConfirm + ","))
        //        {
        //            string[] parts = lines[i].Split(',');

        //            // Ensure the image path is retained
        //            string imagePath = parts.Length > 5 ? parts[5] : ""; // Use the existing image if available

        //            lines[i] = $"{parts[0]},{parts[1]},{parts[2]},{parts[3]},Borrowed,{imagePath}"; // Update Status to Borrowed and keep the image path
        //            break;
        //        }
        //    }

        //    File.WriteAllLines(filePath, lines);
        //    LoadBooks();
        //}
        protected void btnApprove_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string bookIdToApprove = btn.CommandArgument;

            string borrowDetailsFilePath = Server.MapPath("~/borrowDetails.txt");
            List<string> lines = File.ReadAllLines(borrowDetailsFilePath).ToList();

            for (int i = 0; i < lines.Count; i++)
            {
                string[] parts = lines[i].Split(',');

                if (parts.Length >= 6 && parts[0] == bookIdToApprove && parts[5].Trim() == "Pending")
                {
                    parts[5] = "Request Approved"; // ✅ Update status
                    lines[i] = string.Join(",", parts);
                    break;
                }
            }

            File.WriteAllLines(borrowDetailsFilePath, lines); // ✅ Save changes
            LoadRequestedBooks(); // ✅ Refresh table
        }




        protected void btnReject_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string bookIdToReject = btn.CommandArgument;

            string borrowDetailsFilePath = Server.MapPath("~/borrowDetails.txt");
            List<string> lines = File.ReadAllLines(borrowDetailsFilePath).ToList();

            for (int i = 0; i < lines.Count; i++)
            {
                string[] parts = lines[i].Split(',');

                if (parts.Length >= 6 && parts[0] == bookIdToReject && parts[5].Trim() == "Pending")
                {
                    parts[5] = "Request Rejected"; // ✅ Update status
                    lines[i] = string.Join(",", parts);
                    break;
                }
            }

            File.WriteAllLines(borrowDetailsFilePath, lines); // ✅ Save changes
            LoadRequestedBooks(); // ✅ Refresh table
        }



        //private void LoadBorrowedBooks()
        //{
        //    string borrowDetailsFilePath = Server.MapPath("~/borrowDetails.txt");

        //    if (File.Exists(borrowDetailsFilePath))
        //    {
        //        List<BorrowDetails> borrowDetails = File.ReadAllLines(borrowDetailsFilePath)
        //            .Select(line => line.Split(','))
        //            .Where(parts => parts.Length >= 4)
        //            .Select(parts => new BorrowDetails
        //            {
        //                BookID = parts[0],
        //                BookName = parts[1],
        //                Author = parts[2],
        //                Status = parts[3]
        //            })
        //            .ToList();

        //        gvRequestedBooks.DataSource = borrowDetails;
        //        gvRequestedBooks.DataBind();
        //    }
        //}



    }
    public class BorrowDetails
    {
        public string BookID { get; set; }
        public string BookName { get; set; }
        public string Author { get; set; }
        public string BorrowDate { get; set; }
        public string ReturnDate { get; set; }
        public string Status { get; set; }
        public bool ShowActionButtons { get; set; } // ✅ Added to control button visibility
    }


    public class Book
    {
        public string BookID { get; set; }
        public string BookName { get; set; }
        public string Author { get; set; }
        public string Status { get; set; }
        public string Description { get; set; }
        public string ImagePath { get; set; }
    }
}