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
    
    public partial class Series
    {
        public Series()
        {
            this.Articles = new HashSet<Article>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Createddate { get; set; }
        public int GroupId { get; set; }
    
        public virtual ICollection<Article> Articles { get; set; }
        public virtual Group Group { get; set; }
    }
}