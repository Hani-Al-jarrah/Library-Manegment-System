using System;
using System.Collections.Generic;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group5.Hani
{
    public partial class Rooms : System.Web.UI.Page
    {
        private string roomsFilePath;
        private string reservationsFilePath;

        protected void Page_Load(object sender, EventArgs e)
        {
            roomsFilePath = Server.MapPath("RoomsData.txt");
            reservationsFilePath = Server.MapPath("Reservations.txt");

            if (!IsPostBack)
            {
                LoadRooms();
            }
        }

        protected void btnReserve_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;
            Panel pnlTimePicker = (Panel)item.FindControl("pnlTimePicker");

            pnlTimePicker.CssClass += " open"; // إضافة الكلاس "open" لإظهار اللوحة
        }

        protected void calDatePicker_SelectionChanged(object sender, EventArgs e)
        {
            Calendar cal = (Calendar)sender;
            RepeaterItem item = (RepeaterItem)cal.NamingContainer;

            // **هام:** منع PostBack
            ScriptManager.RegisterStartupScript(this, GetType(), "PreventPostback", "javascript:void(0);", true);

            DateTime selectedDate = cal.SelectedDate;

            // يمكنك هنا إضافة أي منطق إضافي للتعامل مع التاريخ المحدد
        }

        protected void rptRooms_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Button btnCancel = (Button)e.Item.FindControl("btnCancel");
                Label lblStatus = (Label)e.Item.FindControl("lblStatus");
                DropDownList ddlStartTime = (DropDownList)e.Item.FindControl("ddlStartTime");
                Calendar calDatePicker = (Calendar)e.Item.FindControl("calDatePicker");

                string roomId = btnCancel.CommandArgument;
                string status = GetReservationStatus(roomId);

                lblStatus.Text = $"Status: {status}";
                btnCancel.Visible = (status == "Reserved" || status == "Cancel Pending");
                btnCancel.Enabled = (status != "Cancel Pending");

                // ملء قائمة الوقت
                if (ddlStartTime != null && ddlStartTime.Items.Count == 0)
                {
                    for (int hour = 0; hour < 24; hour++)
                    {
                        ddlStartTime.Items.Add(new ListItem($"{hour}:00 - {(hour + 2) % 24}:00", hour.ToString()));
                    }
                }

                // ربط حدث SelectionChanged للتقويم
                if (calDatePicker != null)
                {
                    calDatePicker.SelectionChanged += calDatePicker_SelectionChanged;
                }
            }
        }

        protected string GetReservationStatus(string roomId)
        {
            if (!File.Exists(reservationsFilePath))
                return "Available";

            string[] lines = File.ReadAllLines(reservationsFilePath);
            foreach (string line in lines)
            {
                string[] data = line.Split('|');
                if (data.Length >= 4 && data[0] == roomId)
                {
                    return data[3];
                }
            }
            return "Available";
        }

        protected void btnConfirmReserve_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;
            DropDownList ddlStartTime = (DropDownList)item.FindControl("ddlStartTime");
            Calendar calDatePicker = (Calendar)item.FindControl("calDatePicker");

            if (ddlStartTime == null || ddlStartTime.SelectedItem == null || calDatePicker == null)
                return;

            string selectedTime = ddlStartTime.SelectedValue;
            string selectedDate = calDatePicker.SelectedDate.ToShortDateString();
            Button reserveButton = (Button)item.FindControl("btnReserve");
            string roomId = reserveButton.CommandArgument;

            string reservation = $"{roomId}|{selectedDate}|{selectedTime}|Pending";
            File.AppendAllText(reservationsFilePath, reservation + Environment.NewLine);

            btn.Text = "Pending";
            btn.Enabled = false;

            LoadRooms();
        }

        protected void btnCancelReservation_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string roomId = btn.CommandArgument;

            if (!File.Exists(reservationsFilePath))
                return;

            string[] lines = File.ReadAllLines(reservationsFilePath);
            List<string> updatedLines = new List<string>();

            foreach (string line in lines)
            {
                string[] data = line.Split('|');
                if (data.Length >= 4 && data[0] == roomId && data[3] == "Reserved")
                {
                    data[3] = "Cancel Pending";
                }
                updatedLines.Add(string.Join("|", data));
            }

            File.WriteAllLines(reservationsFilePath, updatedLines);
            LoadRooms();
        }

        private void LoadRooms()
        {
            List<Room> rooms = new List<Room>();

            if (File.Exists(roomsFilePath))
            {
                string[] lines = File.ReadAllLines(roomsFilePath);
                foreach (string line in lines)
                {
                    string[] data = line.Split('|');
                    if (data.Length >= 5)
                    {
                        string roomId = data[0];
                        string status = GetReservationStatus(roomId);

                        rooms.Add(new Room
                        {
                            ID = roomId,
                            Name = data[1],
                            Capacity = data[2],
                            Description = data[3],
                            Image = ResolveUrl(data[4].Replace("~", "")),
                            Status = status
                        });
                    }
                }
            }

            rptRooms.DataSource = rooms;
            rptRooms.DataBind();
        }


        public class Room
        {
            public string ID { get; set; }
            public string Name { get; set; }
            public string Capacity { get; set; }
            public string Description { get; set; }
            public string Image { get; set; }
            public string Status { get; set; }
        }
    }
}