using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using yemek.Models;
using System.IO;
using yemek.App_Code;




namespace yemek.Areas.admin.Controllers
{
    [Authorize]
    public class UrunlerController : Controller
    {
        // GET: admin/Urunler
        public ActionResult Index()
        {
            using (yeme20 db = new yeme20())
            {
                var model = db.yemn.ToList();
                return View(model);
            }

        }

        public ActionResult Yeni()
        {
            var model = new yemn();

            return View("UrunForm", model);
        }
        public ActionResult Guncelle(int id)
        {
            using (yeme20 db = new yeme20())
            {
                var model = db.yemn.Find(id);
                if (model == null)
                {
                    return HttpNotFound();
                }
                return View("UrunForm", model);
            }
        }
        public ActionResult Kaydet(yemn gelenyem)
        {
            using (yeme20 db = new yeme20())
            {
                if (gelenyem.id == 0)
                {

                    string fotoAdi = Seo.DosyaAdiDuzenle(gelenyem.fotoFile.FileName);
                    gelenyem.foto = fotoAdi;
                    db.yemn.Add(gelenyem);
                    gelenyem.fotoFile.SaveAs(Path.Combine(Server.MapPath("~/Content/images"), Path.GetFileName(fotoAdi)));

                }
                else
                {
                    var gg = db.yemn.Find(gelenyem.id);
                    if (gelenyem.fotoFile != null)
                    {
                        string fotoAdi = Seo.DosyaAdiDuzenle(gelenyem.fotoFile.FileName);
                        gelenyem.foto = fotoAdi;
                        gelenyem.fotoFile.SaveAs(Path.Combine(Server.MapPath("~/Content/images"), Path.GetFileName(fotoAdi)));

                    }
                    db.Entry(gg).CurrentValues.SetValues(gelenyem);

                }
                db.SaveChanges();
                return RedirectToAction("index");

            }

        }
        public ActionResult Sil(int id)
        {
            using (yeme20 db = new yeme20())
            {
                var silinecek = db.yemn.Find(id);
                db.yemn.Remove(silinecek);
                db.SaveChanges();
                return RedirectToAction("/index");
            }

        }
    }
}