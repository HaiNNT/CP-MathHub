//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CP_MathHub.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Notification
    {
        public int Id { get; set; }
        public string Content { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public bool Seen { get; set; }
        public string Link { get; set; }
        public NotificationSettingEnum Type { get; set; }
        public int UserId { get; set; }
        public Nullable<int> AuthorId { get; set; }
    
        public virtual User User { get; set; }
        public virtual User Author { get; set; }
    }
}
