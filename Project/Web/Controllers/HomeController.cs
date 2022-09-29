using Business.Abstract;
using Entity.Concrete;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Runtime.InteropServices;
using System.Threading.Tasks;
using Web.Models;

namespace Web.Controllers
{
    public class HomeController : Controller
    {

        private ICustomerService _customerService;

        public HomeController(ICustomerService customerService)
        {
            _customerService = customerService;
        }
    

        public IActionResult Index()
        {
            var model = new CustomersModel()
            {
                CustomerModel = _customerService.GetAll()
            };
            return View(model);
            
        }
        public IActionResult Add()
        {


            return View();

        }

        [HttpPost]
        public IActionResult Add(Customer customer)
        {
            _customerService.Add(customer);


            return RedirectToAction("Index");
        }
       
        [HttpPost]
        public IActionResult Delete(int Id)
        {
            _customerService.Delete(new Customer() { Id=Id});

            return RedirectToAction("Index");

        }
        public IActionResult Update(int id)
        {
            var model = new CustomersModel()
            {
                CustomerModel = _customerService.Get(id)
            };
            return View(model);


        }
        [HttpPost]
        public IActionResult Update(Customer customer)
        {
            _customerService.Update(customer);

            return RedirectToAction("Index");


        }

    }

}