using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dashboard.Models
{
    public struct RevenueByDate
    {
        public string Date { get; set; }
        public decimal TotalAmount { get; set; }
    }
    public class SalesModel
    {
        private DateTime startDate;
        private DateTime endDate;
        private int numberDays;

        public int NumCustomers { get; set; }
        public int NumSuppliers { get; set; }
        public int NumProducts { get; set; }
        public List<KeyValuePair<string, int>> TopProductsList { get; set; }
        public List<KeyValuePair<string, int>> UnderstockList { get; set; }
        public List<RevenueByDate> GrossRevenueList { get; set; }
        public int NumOrders { get; set; }
        public decimal TotalRevenue { get; set; }
        public decimal TotalProfit { get; set; }
    }
}
