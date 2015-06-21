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

            if ((int) period.TotalSeconds < 60)
            {
                return "vừa hỏi";
            }
            if ((int) period.TotalSeconds >= 60 && (int)period.TotalHours < 1)
            {
                return "hỏi " + (int) period.TotalMinutes + " phút trước";
            }
            if ((int) period.TotalMinutes >= 60 && (int)period.TotalHours < 24)
            {
                return "hỏi " + (int) period.TotalHours + " tiếng trước";
            }
            return "hỏi vào ngày " + time.Date.ToShortDateString() + " lúc " + time.ToShortTimeString();
        }
    }
}
