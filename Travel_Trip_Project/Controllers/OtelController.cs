using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Travel_Trip_Project.Models.Siniflar;

namespace Travel_Trip_Project.Controllers
{
    public class OtelController : Controller
    {
        // GET: Oteş
        Context c = new Context();
        public ActionResult Index()
        {
            by.Deger1 = c.Otels.ToList();
            return View(by);
        }
        OtelYorum by = new OtelYorum();

        public ActionResult OtelDetay(int id)
        {
            by.Deger1 = c.Otels.Where(x => x.ID == id).ToList();
            by.Deger2 = c.Yorumlars.Where(x => x.Blogid == id).ToList();
            return View(by);
        }

        [HttpGet]
        public PartialViewResult OtelRezervEkle(int id)
        {
            ViewBag.deger = id;
            return PartialView();
        }
        [HttpPost]
        public PartialViewResult OtelRezervEkle(OtelRezervasyon y)
        {
            c.OtelRezervasyons.Add(y);
            c.SaveChanges();
            return PartialView();
        }

    }
}