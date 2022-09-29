using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using static Dapper.SqlMapper;

namespace DataAccess.Abstract
{
    public interface IRepository<T>
    {
     
        List<T> GetAll();
        List<T> Get(int id);
        void Add(T entity);
        void Update(T entity);
        void Delete(T entity);
    
    }
}
