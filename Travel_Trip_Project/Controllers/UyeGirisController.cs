using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Travel_Trip_Project.Models.Siniflar;


namespace Travel_Trip_Project.Controllers
{
    public class UyeGirisController : Controller
    {
        // GET: UyeGiris
        Context c = new Context();
        public ActionResult UyeGiris()
        {
            return View();
        }

        [HttpPost]
        public ActionResult UyeGiris(User ad)
        {
            var bilgiler = c.Users.FirstOrDefault(x => x.Kullanici == ad.Kullanici && x.Sifre == ad.Sifre);
            if (bilgiler != null)
            {
                FormsAuthentication.SetAuthCookie(bilgiler.Kullanici, false);
                Session["Kullanici"] = bilgiler.Kullanici.ToString();
                return RedirectToAction("Index", "Default");
            }
            else
            {
                return View();
            }
        }
    }
}