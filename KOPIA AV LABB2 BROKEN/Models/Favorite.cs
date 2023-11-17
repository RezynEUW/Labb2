namespace Labb2.Models
{
    public class Favorite
    {
        public int FavoriteId { get; set; } // Primary key
        public int UserId { get; set; }     // Foreign key to User
        public int ChampionId { get; set; } // Foreign key to Champion

        // Navigation properties
        public virtual User User { get; set; }
        public virtual Champion Champion { get; set; }

        // Add any additional properties or navigation properties if required
    }
}
