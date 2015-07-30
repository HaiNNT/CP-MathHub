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
    
    public partial class Report
    {
        public int Id { get; set; }
        public System.DateTime ReportedDate { get; set; }
        public ReportTypeEnum Type { get; set; }
        public int ReporterId { get; set; }
        public Nullable<int> UserId { get; set; }
        public Nullable<int> PostId { get; set; }
        public string Description { get; set; }
        public bool Status { get; set; }
    
        public virtual User Reporter { get; set; }
        public virtual User User { get; set; }
        public virtual Post Post { get; set; }
    }
}
