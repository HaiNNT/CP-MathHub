using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CP_MathHub.Service.Helpers
{
    public static class MhHtmlHelper
    {
        public static string MainPostCreateTime(DateTime time)
        {
            TimeSpan period = (DateTime.Now - time);

            if (period.TotalSeconds < 60)
            {
                return "vừa hỏi";
            }
            if (period.TotalSeconds >= 60 && period.TotalHours < 1)
            {
                return "hỏi " + period.TotalMinutes + " phút trước";
            }
            if (period.TotalMinutes >= 60 && period.TotalHours < 24)
            {
                return "hỏi " + period.TotalHours + " tiếng trước";
            }
            return "hỏi vào ngày " + time.Date.ToShortDateString() + " lúc " + time.ToShortTimeString();
        }
    }
}
