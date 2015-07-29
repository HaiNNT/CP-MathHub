using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CP_MathHub.Entity;

namespace CP_MathHub.Models.RealTime
{
    public class ConversationViewModel
    {
        public string Name { get; set; }
        public string Avatar { get; set; }
        public Message LastMessage { get; set; }
        public int NewMessageNum { get; set; }
    }
}