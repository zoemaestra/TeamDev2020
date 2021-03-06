﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary;

namespace Timetable
{
    public partial class TeacherLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserID"] = -1;
            Session["LoggedInID"] = -1;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Run when btnLogin is clicked
            clsUserCollection Users = new clsUserCollection();
            string Email = txtUsername.Text;
            string Password = Users.ThisUser.GetHashPassword(txtPassword.Text);

            //Run login function, check if Email and password match records
            Int32 ID = Users.Login(Email, Password);
            if (ID > 0)
            {
                //If user's account is marked as an Admin account, set Mode to admin
                //and redirect to AdminDefault
                //Otherwise, set Mode to teacher and redirect to TeacherDefault
                Session["UserID"] = ID;
                Session["LoggedInID"] = ID;
                if (Users.ThisUser.Admin == true)
                {
                    Session["Mode"] = "Admin";
                    Response.Redirect("AdminDefault.aspx");
                }
                else
                {
                    Session["Mode"] = "Teacher";
                    Response.Redirect("TeacherDefault.aspx");
                }
            }
            else
            {
                if (ID == -1) { lblError.Text = "Account does not exist"; }
                else { lblError.Text = "Incorrect password"; }
            }
        }

        protected void btnForgotPassword_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "")
            {
                lblError.Text = "Enter the Email address for the account";
            }
            else
            {
                clsUserCollection Users = new clsUserCollection();
                Users.FindExistingUser(txtUsername.Text);
                if (Users.ThisUser == null)
                {
                    lblError.Text = "Account does not exist";
                }
                else
                {
                    string TempPW = Users.ThisUser.SendResetEmail("Timetable");
                    Session["UserID"] = Users.ThisUser.ID;
                    Session["LoggedInID"] = Users.ThisUser.ID;
                    Session["Mode"] = "Guest";
                    Session["TempPW"] = TempPW;
                    Response.Redirect("ForgotPassword.aspx");
                }
            }
        }
    }
}