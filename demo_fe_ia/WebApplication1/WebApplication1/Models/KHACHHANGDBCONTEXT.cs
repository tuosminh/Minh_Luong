using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;



namespace WebApplication1.Models
{
    public class KHACHHANGDBCONTEXT:DbContext
    {
        public KHACHHANGDBCONTEXT() : base("name=KHACHHANGCONNECTION") { }

        public DbSet<KHACHHANG> KHACHHANGs { get; set; }
    }
}