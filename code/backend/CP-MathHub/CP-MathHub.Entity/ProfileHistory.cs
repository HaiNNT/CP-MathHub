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
    
    public partial class ProfileHistory
    {
        public int Id { get; set; }
        public string Type { get; set; }
        public string Location { get; set; }
        public string Career { get; set; }
        public System.DateTime FromTime { get; set; }
        public System.DateTime ToTime { get; set; }
        public int UserId { get; set; }
    
        public virtual User User { get; set; }
    }
}
