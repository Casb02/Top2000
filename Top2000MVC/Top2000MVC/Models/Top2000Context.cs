using System.Collections.Generic;

namespace Top2000MVC.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Top2000Context : DbContext
    {
        public Top2000Context()
            : base("name=Top2000Context")
        {
        }

        public virtual DbSet<Artist> Artist { get; set; }
        public virtual DbSet<Rank> Rank { get; set; }
        public virtual DbSet<Track> Track { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Artist>()
                .Property(e => e.artist_name)
                .IsUnicode(false);

            modelBuilder.Entity<Artist>()
                .HasMany(e => e.Track)
                .WithOptional(e => e.Artist)
                .HasForeignKey(e => e.Artist_artistID);

            modelBuilder.Entity<Track>()
                .Property(e => e.track_name)
                .IsUnicode(false);

            modelBuilder.Entity<Track>()
                .HasMany(e => e.Rank)
                .WithRequired(e => e.Track)
                .HasForeignKey(e => e.Track_trackID)
                .WillCascadeOnDelete(false);
        }

        
    }
}
