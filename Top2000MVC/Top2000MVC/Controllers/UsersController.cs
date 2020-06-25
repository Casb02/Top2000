using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Top2000MVC.Models;

namespace Top2000MVC.Controllers
{
    public class UsersController : Controller
    {

        private Top2000Context db = new Top2000Context();
        // GET: Users
        public ActionResult Index()
        {
            if (User.IsInRole("Admin"))
            {
                return View(db.AspNetUsers.ToList());
            }
            else
            {
                ViewBag.Error = "U heeft geen toegang om deze pagina te bekijken.";
                return View("Error");
            }
        }

        // GET: Users/Edit/5
        public ActionResult Edit(string id)
        {

            ViewBag.UserName = db.AspNetUsers.Find(id).UserName; ;
            return View();
        }

        private void AddErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }

        }
        // Niet af gemaakt Dus let hier niet op
        //
        // // POST: Users/Edit/5
        // [HttpPost]
        // public ActionResult Edit(int id, FormCollection collection)
        // {
        //     if (ModelState.IsValid)
        //     {
        //         var user = new ApplicationUser {UserName = model.Email, Email = model.Email};
        //         var result = await UserManager, ;
        //         if (result.Succeeded)
        //         {
        //             return RedirectToAction("Index", "Home");
        //         }
        //
        //         AddErrors(result);
        //     }
        // }
        //
        // // GET: Users/Delete/5
        //     public ActionResult Delete(int id)
        // {
        //     return View();
        // }
        //
        // // POST: Users/Delete/5
        // [HttpPost]
        // public ActionResult Delete(int id, FormCollection collection)
        // {
        //     try
        //     {
        //         // TODO: Add delete logic here
        //
        //         return RedirectToAction("Index");
        //     }
        //     catch
        //     {
        //         return View();
        //     }
        // }
    }
}
