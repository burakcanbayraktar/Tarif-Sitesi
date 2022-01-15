using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using yemek.Models;
using System.Web.Security;

namespace yemek.Areas.admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: admin/Login
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Alogin(kullanıcılar kull)
        {   
            using(yeme20 db= new yeme20())
            {
                var kullanıcıv = db.kullanıcılar.FirstOrDefault(
                    x => x.kad == kull.kad && x.sifre == kull.sifre);
                
                if(kullanıcıv !=null)
                {
                    FormsAuthentication.SetAuthCookie(kullanıcıv.kad, false);
                    return RedirectToAction("/index", "urunler");
                }

                return View("index");
                
            }
      
        }

    }
}