using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.Mvc;
using Microsoft.Ajax.Utilities;
using Top2000MVC.Models;

namespace Top2000MVC.Controllers
{
    public class ListController : Controller
    {
        private Top2000Context db = new Top2000Context();
        

        // GET: List
        ///
        public ActionResult ListIndex(int year = 2019)
        {
            try
            {
                var cy = DateTime.Parse(year.ToString() + "-01-01");
                var sort = from r in db.Rank
                    where r.year == cy
                    select r;
                ViewBag.year = cy.Year;
                return View(sort.ToList());

            }
            catch (FormatException)
            {
                ViewBag.Error = "Er is geen juist jaartal opgeggeven";
                return View("Error");
            }
            
        }


        
    }
}
