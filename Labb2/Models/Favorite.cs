using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace YourNamespace // Replace with your actual namespace
{
    public class Favorite
    {
        [Key]
        public int FavoriteId { get; set; }

        [Required]
        public int ChampionId { get; set; }

        // Navigation property for the related Champion
        // Establishes a one-to-many relationship with the Champion table
        [ForeignKey("ChampionId")]
        public Champion Champion { get; set; }
    }
}
