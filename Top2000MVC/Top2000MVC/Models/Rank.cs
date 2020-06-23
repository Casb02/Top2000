using System.ComponentModel;

namespace Top2000MVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Rank")]
    public partial class Rank
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [DisplayName("Nr.")]
        public int rankID { get; set; }

        [Key]
        [Column(Order = 1, TypeName = "date"), DisplayName("Jaar")]
        public DateTime year { get; set; }

        public int Track_trackID { get; set; }

        public virtual Track Track { get; set; }
    }
}
