using System;
using System.Collections.Generic;
using System.Text;
using Entity.Concrete;
namespace Business.Abstract
{
    public interface ICustomerService
    {
        List<Customer> Get(int id);
        List<Customer> GetAll();
        void Add(Customer customer);
        void Update(Customer customer);
        void Delete(Customer customer);

    }
}
