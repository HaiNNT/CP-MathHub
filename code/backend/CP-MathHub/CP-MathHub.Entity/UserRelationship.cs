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
    
    public partial class UserRelationship
    {
        public int Id { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public int UserId { get; set; }
        public int TargetUserId { get; set; }
        public RelationshipEnum Status { get; set; }
        public System.DateTime LastChangeStatus { get; set; }
    
        public virtual User Users { get; set; }
        public virtual User TargetUser { get; set; }
    }
}
