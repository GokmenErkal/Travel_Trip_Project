using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Travel_Trip_Project.Models.Siniflar;


namespace Travel_Trip_Project.Controllers
{
    public class UyeKayitController : Controller
    {
        // GET: UyeKayit
        Context c = new Context();
        public ActionResult UyeKayit()
        {
            return View();
        }

        [HttpGet]
        public ActionResult YeniUye()
        {
            return View();
        }
        [HttpPost]
        public ActionResult YeniUye(User p)
        {
            c.Users.Add(p);
            c.SaveChanges();
            return RedirectToAction("Index", "Default");
        }
    }
}