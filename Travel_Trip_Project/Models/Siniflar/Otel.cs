using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Travel_Trip_Project.Models.Siniflar
{
    public class Otel
    {
        [Key]
        public int ID { get; set; }
        public string OtelBaslik { get; set; }
        public string OtelImage { get; set; }
        public string Konum { get; set; }
        public string Fiyat { get; set; }
        public string OtelDetay { get; set; }
    }
}