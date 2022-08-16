using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Dashboard.Models
{
    public interface ISalesRepository
    {
        //void Add(SalesModel salesModel);
        //void Edit(SalesModel salesModel);
        //void Remove(int id);
        //SalesrModel GetById(int id);
        SalesModel GetData(DateTime startDate, DateTime endDate);
        //IEnumerable<SalesModel> GetByAll();
    }
}
