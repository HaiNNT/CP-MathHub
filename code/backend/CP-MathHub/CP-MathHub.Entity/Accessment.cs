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
    
    public partial class Accessment
    {
        public int UserId { get; set; }
        public int RoleId { get; set; }
        public System.DateTime AccessedDate { get; set; }
        public System.DateTime ExpireDate { get; set; }
    
        public virtual User User { get; set; }
        public virtual Role Role { get; set; }
    }
}