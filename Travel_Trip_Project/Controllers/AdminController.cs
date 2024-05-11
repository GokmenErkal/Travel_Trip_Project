using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Travel_Trip_Project.Models.Siniflar;


namespace Travel_Trip_Project.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        Context c = new Context();


        //Tur Contorller
        [Authorize]
        public ActionResult Index()
        {
            var degerler = c.Blogs.ToList();
            return View(degerler);
        }
        
        [HttpGet]
        public ActionResult YeniBlog()
        {
            return View();
        }
        [HttpPost]
        public ActionResult YeniBlog(Blog p)
        {
            c.Blogs.Add(p);
            c.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult BlogSil(int id)
        {
            var b = c.Blogs.Find(id);
            c.Blogs.Remove(b);
            c.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult BlogGetir(int id)
        {
            var bl = c.Blogs.Find(id);
            return View("BlogGetir", bl);
        }
        public ActionResult BlogGuncelle(Blog b)
        {
            var blg = c.Blogs.Find(b.ID);
            blg.Aciklama = b.Aciklama;
            blg.Baslik = b.Baslik;
            blg.BlogImage = b.BlogImage;
            blg.Tarih = b.Tarih;
            blg.BitisTarihi = b.BitisTarihi;
            blg.Fiyat = b.Fiyat;
            blg.TurDetay = b.TurDetay;
            c.SaveChanges();
            return RedirectToAction("Index");
        }

        //Yorum Contorller
        [Authorize]
        public ActionResult YorumListesi()
        {
            var yorumlar = c.Yorumlars.ToList();
            return View(yorumlar);
        }
        public ActionResult YorumSil(int id)
        {
            var b = c.Yorumlars.Find(id);
            c.Yorumlars.Remove(b);
            c.SaveChanges();
            return RedirectToAction("YorumListesi");
        }
        public ActionResult YorumGetir(int id)
        {
            var yr = c.Yorumlars.Find(id);
            return View("YorumGetir", yr);
        }
        public ActionResult YorumGuncelle(Yorumlar y)
        {
            var yrm = c.Yorumlars.Find(y.ID);
            yrm.KullaniciAdi = y.KullaniciAdi;
            yrm.Mail = y.Mail;
            yrm.Yorum = y.Yorum;
            c.SaveChanges();
            return RedirectToAction("YorumListesi");
        }

        //Otel Contorller
        public ActionResult OtelIndex()
        {
            var deger = c.Otels.ToList();
            return View(deger);
        }

        [HttpGet]
        public ActionResult YeniOtel()
        {
            return View();
        }
        [HttpPost]
        public ActionResult YeniOtel(Otel p)
        {
            c.Otels.Add(p);
            c.SaveChanges();
            return RedirectToAction("OtelIndex");
        }

        public ActionResult OtelSil(int id)
        {
            var otel = c.Otels.Find(id);
            c.Otels.Remove(otel);
            c.SaveChanges();
            return RedirectToAction("OtelIndex");
        }

        public ActionResult OtelGetir(int id)
        {
            var otel = c.Otels.Find(id);
            return View("OtelGetir", otel);
        }
        public ActionResult OtelGuncelle(Otel o)
        {
            var otel = c.Otels.Find(o.ID);
            otel.OtelBaslik = o.OtelBaslik;
            otel.OtelImage = o.OtelImage;
            otel.Konum = o.Konum;
            otel.Fiyat = o.Fiyat;
            otel.OtelDetay = o.OtelDetay;
            c.SaveChanges();
            return RedirectToAction("OtelIndex");
        }
    }
}