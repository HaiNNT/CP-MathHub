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
    
    public partial class Advertisement
    {
        public int Id { get; set; }
        public string Company { get; set; }
        public string Description { get; set; }
        public string Link { get; set; }
        public System.DateTime CreateDate { get; set; }
        public string Name { get; set; }
        public int Position { get; set; }
        public int Price { get; set; }
        public System.DateTime ExpiredDate { get; set; }
        public int Duration { get; set; }
    
        public virtual Image Image { get; set; }
    }
}
