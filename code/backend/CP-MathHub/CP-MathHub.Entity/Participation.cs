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
    
    public partial class Participation
    {
        public int Id { get; set; }
        public GroupRoleEnum Role { get; set; }
        public System.DateTime JoinedDate { get; set; }
        public ParticipationEnum Status { get; set; }
        public int UserId { get; set; }
        public int GroupId { get; set; }
    
        public virtual User User { get; set; }
        public virtual Group Group { get; set; }
    }
}
