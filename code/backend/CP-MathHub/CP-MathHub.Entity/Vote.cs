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
    
    public partial class Vote
    {
        public int Id { get; set; }
        public System.DateTime VotedDate { get; set; }
        public int PostId { get; set; }
        public int UserId { get; set; }
        public VoteEnum Type { get; set; }
    
        public virtual Post Post { get; set; }
        public virtual User User { get; set; }
    }
}