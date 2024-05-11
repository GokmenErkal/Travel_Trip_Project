using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Travel_Trip_Project.Models.Siniflar
{
    public class OtelRezervasyon
    {
        [Key]
        public int ID { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public string Telefon { get; set; }
        public string Mail { get; set; }
        public int KisiSayisi { get; set; }
        public DateTime? DogumTarihi { get; set; }
        public int Otelid { get; set; }
        public virtual Otel Otel { get; set; }
    }
}