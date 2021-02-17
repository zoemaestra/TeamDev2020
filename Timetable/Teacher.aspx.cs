﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary;

namespace Timetable
{
    public partial class Teacher : System.Web.UI.Page
    {
        Int32 UserID;
        string Mode;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get list of valid subjects to add to ddlSubject
            clsUserCollection Users = new clsUserCollection();
            foreach (string block in Users.AvailableSubjects)
            {
                ddlSubject.Items.Add(block);
            }

            //Get UserID and Mode session objects, if UserID is -1,
            //then a new User is being added, otherwise edit User of the provided ID.
            UserID = Convert.ToInt32(Session["UserID"]);
            Mode = Convert.ToString(Session["Mode"]);
            if (UserID != -1)
            {
                if (IsPostBack == false)
                {
                    lblTitle.Text = "Change User Details";
                    Users.Find(UserID);
                    txtEmail.Text = Convert.ToString(Users.ThisUser.EMail);
                    txtFirstName.Text = Convert.ToString(Users.ThisUser.FirstName);
                    txtLastName.Text = Convert.ToString(Users.ThisUser.SecondName);
                    ddlSubject.SelectedValue = Users.ThisUser.Subject;
                }
                if (Mode != "Admin")
                {
                    lblTitle.Text = "Change Password";
                    txtEmail.Enabled = false;
                    txtFirstName.Enabled = false;
                    txtLastName.Enabled = false;
                    ddlSubject.Enabled = false;
                }
            }
            else { lblTitle.Text = "New User Account"; }
        }

        string add()
        {
            //Function to validate a User's info, and if it is valid then add it to DB
            //User is checked so see if the EMail being used already exists in the DB
            String Error = "";
            clsUserCollection PreUsers = new clsUserCollection();
            PreUsers.FindExistingUser(txtEmail.Text);
            if (PreUsers.ThisUser.EMail != null)
            {
                Error = Error + "User already exists with that EMail!</br>";
            }

            //Password is checked for confirmatiom
            if (txtPassword.Text != txtPasswordConfirm.Text)
            {
                Error = Error + "Passwords do not match!</br>";
            }

            clsUserCollection Users = new clsUserCollection();
            clsTimetableCollection Timetables = new clsTimetableCollection();

            //Input is checked and validated, giving an error if invalid
            Error = Error + Users.ThisUser.Validate(txtEmail.Text, txtFirstName.Text, txtLastName.Text, txtPassword.Text, ddlSubject.SelectedValue);
            if (Error == "")
            {
                Users.ThisUser.EMail = txtEmail.Text;
                Users.ThisUser.Password = Users.GetHashPassword(txtPassword.Text);
                Users.ThisUser.FirstName = txtFirstName.Text;
                Users.ThisUser.SecondName = txtLastName.Text;
                Users.ThisUser.Subject = Convert.ToString(ddlSubject.SelectedValue);
                Int32 UserID = Users.Add();
                Timetables.GenerateTimetable(UserID);
                return Error;
            }
            else
            {
                lblError.Text = Error;
                return Error;
            }
        }

        string edit()
        {
            //Function to validate a User's info, and if it is valid then add it to DB
            String Error = "";
            clsUserCollection PreUsers = new clsUserCollection();
            clsUserCollection Users = new clsUserCollection();
            PreUsers.FindExistingUser(txtEmail.Text);
            Users.FindExistingUser(txtEmail.Text);

            //User is checked so see if the EMail being used already exists in the DB
            if (PreUsers.ThisUser != null && PreUsers.ThisUser.EMail != txtEmail.Text && PreUsers.ThisUser.ID != UserID)
            {
                Error = Error + "User already exists with that EMail!</br>";
            }

            //Check if password confirmation matches
            if (txtPassword.Text != txtPasswordConfirm.Text)
            {
                Error = Error + "Passwords do not match!</br>";
            }

            Error = Error + Users.ThisUser.Validate(txtEmail.Text, txtFirstName.Text, txtLastName.Text, txtPassword.Text, ddlSubject.SelectedValue);
            if (Error == "")
            {
                Users.ThisUser.EMail = txtEmail.Text;
                Users.ThisUser.Password = Users.GetHashPassword(txtPassword.Text);
                Users.ThisUser.FirstName = txtFirstName.Text;
                Users.ThisUser.SecondName = txtLastName.Text;
                Users.ThisUser.Subject = Convert.ToString(ddlSubject.SelectedValue);
                Users.Edit();
                Session["UserID"] = Users.ThisUser.ID;
                return Error;
            }
            else
            {
                lblError.Text = Error;//Display errors, but intentionally!
                return Error;
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //Run when btnRegister is clicked
            //If UserID is -1, run for new User being added
            //Otherwise, edit User of provided ID
            if (UserID == -1)
            {
                string Error = add();
                if (Error == "")
                {
                    if (Mode != "Admin") { Response.Redirect("TeacherDefault"); }
                    else { Response.Redirect("ManageTeachers.aspx"); }
                }
                else { lblError.Text = Error; }
            }
            else
            {
                string Error = edit();
                if (Error == "")
                {
                    if (Mode != "Admin") { Response.Redirect("TeacherDefault.aspx"); }
                    else { Response.Redirect("ManageTeachers.aspx"); }
                }
                else { lblError.Text = Error; }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //Returns user to the appropriate page based on the Mode
            if (Mode != "Admin") { Response.Redirect("TeacherDefault.aspx"); }
            else { Response.Redirect("ManageTeachers.aspx"); }
        }
    }
}