
using System;
using System.Collections.Generic;
using System.Text;
using Entity.Concrete;
using DataAccess.Abstract;
using Business.Abstract;

namespace Business.Concrete
{
    public class CustomerManager : ICustomerService
    {
        private ICustomerDal _customerDal;

        public CustomerManager(ICustomerDal customerDal)
        {
            _customerDal = customerDal;
        }

        public void Add(Customer customer)
        {
            _customerDal.Add(customer);
        }

       

        public void Delete(Customer entity)
        {
            _customerDal.Delete(entity);
        }

        public List<Customer> GetAll()
        {
            return _customerDal.GetAll();
        }

      
        public void Update(Customer entity)
        {
            _customerDal.Update(entity);
        }
        public List<Customer> Get(int id)
        {
            return _customerDal.Get(id);
        }
        
    }
}

