using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.RealTime
{
    public class ConversationDetailViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public List<MesagesOfDate> Dates { get; set; }

        public void SetDates(List<Message> messages)
        {
            Dates = new List<MesagesOfDate>();
            messages = messages.OrderBy(m => m.CreatedDate).ToList();
            if (messages.Count > 0)
            {
                for (DateTime i = DateTime.Now.Date; i >= messages.FirstOrDefault().CreatedDate.Date; i = i.AddDays(-1))
                {
                    MesagesOfDate date = new MesagesOfDate();
                    date.Date = i;
                    date.Messages = messages.Where(m => m.CreatedDate.Date == i).ToList();
                    Dates.Add(date);
                }
                Dates = Dates.OrderBy(d => d.Date).ToList();
            }
        }
    }

    public class MesagesOfDate
    {
        public DateTime Date { get; set; }
        public List<Message> Messages { get; set; }
    }
}