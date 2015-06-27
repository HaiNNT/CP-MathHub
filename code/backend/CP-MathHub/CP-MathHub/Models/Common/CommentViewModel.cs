﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CP_MathHub.Models.Common
{
    public class CommentViewModel
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public DateTime CreatedDate { get; set; }
        public string Content { get; set; }
    }
}