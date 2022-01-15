using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using yemek.Models;
namespace yemek.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Default
        public ActionResult Index()
        {   
            using(yeme20 db = new yeme20())
            {
                var model = db.yemn.ToList();
                return View(model);
            }
            
        }
    }
}