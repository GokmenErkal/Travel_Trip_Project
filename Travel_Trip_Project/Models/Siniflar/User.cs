using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;


namespace Travel_Trip_Project.Models.Siniflar
{
    public class User
    {
        [Key]
        public int ID { get; set; }
        public string Kullanici { get; set; }
        public string Mail { get; set; }
        public string Sifre { get; set; }
        //public ICollection<TurRezervasyon> TurRezervasyons { get; set; }
    }
}