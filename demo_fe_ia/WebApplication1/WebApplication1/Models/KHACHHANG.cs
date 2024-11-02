using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace WebApplication1.Models
{
    public class KHACHHANG
    {
        [Key]
        public int IdKHACHHANG { get; set; }

        [Display(Name = "Tên Đăng Nhập")]
        public string TENDANGNHAP { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Mật Khẩu")]
        public string MATKHAU { get; set; }

        [EmailAddress]
        [Display(Name = "Email")]
        public string EMAIL { get; set; }
    }
}