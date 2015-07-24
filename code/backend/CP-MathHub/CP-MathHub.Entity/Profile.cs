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
    
    public partial class Profile
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public string School { get; set; }
        public Nullable<System.DateTime> Birthday { get; set; }
        public string Address { get; set; }
        public string Facebook { get; set; }
        public string Summary { get; set; }
        public string ViewPoint { get; set; }
        public Nullable<GenderEnum> Gender { get; set; }
        public Nullable<EducationEnum> Education { get; set; }
        public Nullable<int> LocationId { get; set; }
    
        public virtual User User { get; set; }
        public virtual Location Location { get; set; }
    }
}
