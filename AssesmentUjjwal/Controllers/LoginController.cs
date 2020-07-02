using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CaptchaMvc.HtmlHelpers;
using AssesmentUjjwal.Models;
using System.Data.SqlClient;
using System.Data;

namespace AssesmentUjjwal.Controllers
{
    public class LoginController : Controller
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        // GET: Login
        public ActionResult Index()
        {
            var login = new LoginModel();
            return View("Index", login);
        }
        void connectionString()
        {
            con.ConnectionString = @"data source=192.168.1.201\SQLEXPRESS;user id=sa;password=admin123;database=AssesmentUjjwal;";
        }
        [HttpPost]
        public ActionResult Validate(LoginModel login)
        {
            connectionString();
            if (!ModelState.IsValid)
            {
                return View("Index", login);
            }
            else
            {
                if (!this.IsCaptchaValid(""))
                {
                    ViewBag.error = "Invalid captcha!!";
                    return View("Index", login);
                }
                else
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("AU_SP_LoginValidate", con);
                    cmd.Parameters.AddWithValue("@UserName", login.UserName);
                    cmd.Parameters.AddWithValue("@Password", login.Password);
                    cmd.CommandType = CommandType.StoredProcedure;
                    dr = cmd.ExecuteReader();
                    if(dr.HasRows)
                    {
                        con.Close();
                        ViewBag.login = login;
                        return View("~/Views/Operation/Index.cshtml");
                    }
                    else
                    {
                        con.Close();
                        ViewBag.error1 = "Invalid credentials or your account is blocked!!";
                        return View("Index");
                    }
                }
            }
        }
    }
}