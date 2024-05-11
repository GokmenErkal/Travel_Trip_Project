using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Travel_Trip_Project.Models.Siniflar;


namespace Travel_Trip_Project.Controllers
{
    public class RezervasyonlarController : Controller
    {
        // GET: Rezervasyonlar
        Context c = new Context();
        public ActionResult Index()
        {
            var degerler = c.TurRezervasyons.ToList();
            return View(degerler);
        }

        public PartialViewResult OtelRezerv()
        {
            var deger = c.OtelRezervasyons.ToList();
            return PartialView(deger);
        }

        public ActionResult BlogSil(int id)
        {
            var b = c.TurRezervasyons.Find(id);
            c.TurRezervasyons.Remove(b);
            c.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}