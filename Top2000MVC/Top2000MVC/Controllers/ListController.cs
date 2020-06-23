﻿using System;
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
        public ActionResult ListIndex(string year = "2019")
        {
            year += "-01-01";
            
            DateTime cy = DateTime.Parse(year);
            var sort = from r in db.Rank
                where r.year == cy
                select r;
            return View(sort.ToList());
        }


        }
    }
}