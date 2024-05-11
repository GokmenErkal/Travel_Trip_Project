using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Travel_Trip_Project.Models.Siniflar
{
    public class TurRezervasyon
    {
        [Key]
        public int ID { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public string Telefon { get; set; }
        public string Mail { get; set; }
        public int MisafirSayisi { get; set; }
        public DateTime? DogumT { get; set; }
        public int Blogid { get; set; }
        public virtual Blog Blog { get; set; }
        //public int Userid { get; set; }
        //public virtual User User { get; set; }

    }
}