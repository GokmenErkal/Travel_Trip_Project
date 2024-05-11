﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Travel_Trip_Project.Models.Siniflar
{
    public class Context : DbContext
    {
        public DbSet<Admin> Admins { get; set; }
        public DbSet<AdresBlog> AdresBlogs { get; set; }
        public DbSet<Blog> Blogs { get; set; }
        public DbSet<Hakkimizda> Hakkimizdas { get; set; }
        public DbSet<iletisim> iletisims { get; set; }
        public DbSet<Yorumlar> Yorumlars { get; set; }
        public DbSet<Otel> Otels { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<TurRezervasyon> TurRezervasyons { get; set; }
        public DbSet<OtelRezervasyon> OtelRezervasyons { get; set; }
    }
}