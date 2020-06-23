using System.ComponentModel;

namespace Top2000MVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Track")]
    public partial class Track
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Track()
        {
            Rank = new HashSet<Rank>();
        }

        public int trackID { get; set; }

        [StringLength(50), DisplayName("Nummer")]

        public string track_name { get; set; }

        public int? Artist_artistID { get; set; }

        [Column(TypeName = "date")]
        [DisplayFormat(DataFormatString = "{0:yyyy}", ApplyFormatInEditMode = true), DisplayName("Release Datum")]
        public DateTime? release { get; set; }

        public virtual Artist Artist { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rank> Rank { get; set; }
    }
}
