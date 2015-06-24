using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CP_MathHub.Service.Helpers
{
    public static class MhHtmlHelper
    {
        public static string PostCreatedTime(DateTime time, string type)
        {
            TimeSpan period = (DateTime.Now - time);

            if ((int) period.TotalSeconds < 60)
            {
                return "vừa " + type;
            }
            if ((int) period.TotalSeconds >= 60 && (int)period.TotalHours < 1)
            {
                return type + " " + (int)period.TotalMinutes + " phút trước";
            }
            if ((int) period.TotalMinutes >= 60 && (int)period.TotalHours < 24)
            {
                return type + " " + (int)period.TotalHours + " tiếng trước";
            }
            return type + " vào ngày " + time.Date.ToShortDateString() + " lúc " + time.ToShortTimeString();
        }      
    }
}
