namespace Labb2.Models
{
    public class ChampionClass

    {
        public int ChampionClassId { get; set; }
        public int ChampionId { get; set; }
        public int ClassId { get; set; }

        // Navigation properties
        public Champion Champion { get; set; }
        public Class Class { get; set; }
    }
}