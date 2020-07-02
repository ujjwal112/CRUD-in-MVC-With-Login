using AssesmentUjjwal.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AssesmentUjjwal.Controllers
{
    public class OperationController : Controller
    {
        // GET: Operation
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetData()
        {
            using (DBModel db = new DBModel())
            {
                List<AU_TL_UserDetails> userList = db.AU_TL_UserDetails.ToList<AU_TL_UserDetails>();
                return Json(new { data = userList }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpGet]
        public ActionResult AddEdit(int id = 0)
        {
            if (id == 0)
            {
                return View(new AU_TL_UserDetails());
            }
            else
            {
                using (DBModel db = new DBModel())
                {
                    return View(db.AU_TL_UserDetails.Where(x => x.aUserId == id).FirstOrDefault<AU_TL_UserDetails>());
                }
            }

        }

        [HttpPost]
        public ActionResult AddEdit(AU_TL_UserDetails user)
        {
            using (DBModel db = new DBModel())
            {
                if (user.aUserId == 0)
                {
                    db.AU_TL_UserDetails.Add(user);
                    db.SaveChanges();
                    return Json(new { success = true, message = "Saved successfully" }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    db.Entry(user).State = EntityState.Modified;
                    db.SaveChanges();
                    return Json(new { success = true, message = "Updated successfully" }, JsonRequestBehavior.AllowGet);
                }
            }
        }
    }
}