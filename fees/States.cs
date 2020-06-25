using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fees
{
    public class States
    {
        public List<StateFee> StateServiceFees = new List<StateFee>();
        public decimal OutOfAreaFee { get; private set; }

        public States()
        {
            StateServiceFees.Add(new StateFee("Washington", "WA", 2.99m));
            StateServiceFees.Add(new StateFee("California", "CA", 16.99m));
            StateServiceFees.Add(new StateFee("Hawaii", "HI", 39.99m));
            StateServiceFees.Add(new StateFee("Alaska", "AK", 45.99m));

            OutOfAreaFee = 49.99m;
        }

        // If state in listed states, give fee amount, if not then give out of area fee amount
        public decimal GetFee(string letterCode)
        {
            var state = StateServiceFees.FirstOrDefault(f => f.LetterCode.Equals(letterCode.ToUpper()));
            return state != null ? state.Fee : OutOfAreaFee;
        }
    }
}
