using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fees
{
    public class StateFee
    {
        public string Name { get; private set; }
        public string LetterCode { get; private set; }
        public decimal Fee { get; private set; }

        public StateFee(string name, string letterCode, decimal fee)
        {
            Name = name;
            LetterCode = letterCode;
            Fee = fee;
        }
    }
}
