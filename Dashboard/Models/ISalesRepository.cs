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
        SalesModel GetData(DateTime startDate, DateTime endDate);
    }
}
