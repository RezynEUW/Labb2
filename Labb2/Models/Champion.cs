namespace Labb2.Models
{
    public class Champion
    {
        public int ChampionId { get; set; }
        public string Name { get; set; }
        public DateTime ReleaseDate { get; set; }
        public string ImageUrl { get; set; }

        // Navigation properties
        public ICollection<ChampionRole> ChampionRoles { get; set; }
        public ICollection<ChampionClass> ChampionClasses { get; set; }
    }
}
