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
            : base("name=Top2000")
        {
        }

        public virtual DbSet<Artist> Artist { get; set; }
        public virtual DbSet<Rank> Rank { get; set; }
        public virtual DbSet<Track> Track { get; set; }
        public virtual DbSet<AspNetRoles> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaims> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogins> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUsers> AspNetUsers { get; set; }


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
            modelBuilder.Entity<AspNetRoles>()
                .HasMany(e => e.AspNetUsers)
                .WithMany(e => e.AspNetRoles)
                .Map(m => m.ToTable("AspNetUserRoles").MapLeftKey("RoleId").MapRightKey("UserId"));

            modelBuilder.Entity<AspNetUsers>()
                .HasMany(e => e.AspNetUserClaims)
                .WithRequired(e => e.AspNetUsers)
                .HasForeignKey(e => e.UserId);

            modelBuilder.Entity<AspNetUsers>()
                .HasMany(e => e.AspNetUserLogins)
                .WithRequired(e => e.AspNetUsers)
                .HasForeignKey(e => e.UserId);

        }

        
    }
}
