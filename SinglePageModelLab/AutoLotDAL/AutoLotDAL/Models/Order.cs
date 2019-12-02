using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutoLotDAL.Models
{
    public class Order
    {
        public int OrderId { get; set; }

        public int CustId { get; set; }

        public int CarId { get; set; }
    }
}
