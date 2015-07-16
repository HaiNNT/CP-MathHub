using CP_MathHub.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace CP_MathHub.Service.Helpers
{
    public static class ListHelper
    {
        public static List<int> ToIdList(this List<Tag> tags)
        {
            List<int> result = new List<int>();
            foreach (Tag t in tags)
            {
                result.Add(t.Id);
            }
            return result;
        }
    }
}
