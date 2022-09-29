
using Dapper;
using DataAccess.Abstract;
using Entity.Concrete;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using static Dapper.SqlMapper;

namespace DataAccess.Concrete.EntityFramework
{
    public class DpEntityRepositoryBase : IRepository<Customer> { 

        private  string connectionstring = @"Data Source=.;initial Catalog=Biletleme;Integrated Security=true";


        //SqlConnection sqlcon = new SqlConnection(@"Data Source=.;initial Catalog=Biletleme;Integrated Security=true");
        public void Add(Customer entity)
        {
            using (SqlConnection sqlco = new SqlConnection(connectionstring))
            {
                sqlco.Open();
                sqlco.Query<Customer>($"insert into Customers Values('{entity.CustomerName}','{entity.CustomerSurname}','{entity.CustomerBirthday}','{entity.PhoneNumber}','{entity.MailAddress}','{entity.RegistrationDate}','{entity.Gender}','{entity.Status}')");
            }

        }


        public void Update(Customer entity)
            {

                using (SqlConnection sqlco = new SqlConnection(connectionstring))
                {
                    sqlco.Open();
                 sqlco.Query<Customer>($"update Customers set [CustomerName]='{entity.CustomerName}',[CustomerSurname]='{entity.CustomerSurname}',[CustomerBirthday]=CAST('{entity.CustomerBirthday}' AS DATETIME),[PhoneNumber]='{entity.PhoneNumber}',[MailAddress]='{entity.MailAddress}',[RegistrationDate]= CAST('{entity.RegistrationDate}' AS DATETIME),[Gender]= '{entity.Gender}',[Status]= '{entity.Status}' where Id={entity.Id}");

                }
                }




        public void Delete(Customer entity)
        {
            using (SqlConnection sqlco = new SqlConnection(connectionstring))
            {
                sqlco.Open();
                sqlco.Query<Customer>($"delete from Customers where Id={entity.Id}");
            }

        }


        public List<Customer> Get(int id)
        {
            using (SqlConnection sqlco = new SqlConnection(connectionstring))
            {
                sqlco.Open();
               return sqlco.Query<Customer>($"Select * from Customers where Id={id}").ToList(); 
            }


        }
        public List<Customer> GetAll()
        {
            using (SqlConnection sqlco = new SqlConnection(connectionstring))
            {
                sqlco.Open();

                return sqlco.Query<Customer>(@"Select * from Customers").ToList();
            }
        }
    }

}
