using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsIntroTutorial
{
    public partial class NewPage : Page
    {
        private List<MyEvent> myEvents;
        protected void Page_Load(object sender, EventArgs e)
        {
            // If the page loaded for the first time, create new list so not null for session
            if(!Page.IsPostBack)
            {
                Session["MyEvents"] = new List<MyEvent>();
            }
        }

        // Update Events and bind to see in repeater when click button
        protected void btnEvent_Click(object sender, EventArgs e)
        {
            UpdateEvents();
            BindEvents();
        }

        // If no events, create new events list, otherwise get the session's event list
        // Then add new event's name and date to list and set session's event list to list with added data
        private void UpdateEvents()
        {
            if (Session["MyEvents"] != null)
                myEvents = (List<MyEvent>)Session["MyEvents"];
            else
                myEvents = new List<MyEvent>();

            myEvents.Add(new MyEvent(txtEvent.Text, calendarEvents.SelectedDate));
            Session["MyEvents"] = myEvents;
        }

        // Databind events
        private void BindEvents()
        {
            rptEvents.DataSource = myEvents;
            rptEvents.DataBind();
        }
    }

    // Add class directly here for events
    public class MyEvent
    {
        public string EventName
        {
            get;
            private set;
        }
        public string EventDate
        {
            get;
            private set;
        }

        public MyEvent(string eventName, DateTime eventDate)
        {
            EventName = eventName;
            EventDate = eventDate.ToShortDateString();
        }

    }
}