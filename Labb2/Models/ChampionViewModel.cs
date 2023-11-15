using System.Collections.Generic;

namespace Labb2.Models
{
    public class ChampionViewModel
    {
        // Existing properties for sorted lists of champions
        public List<Champion> ChampionsByName { get; set; }
        public List<Champion> ChampionsByReleaseDate { get; set; }
        public List<Champion> ChampionsByNameDesc { get; set; }
        public List<Champion> ChampionsByReleaseDateDesc { get; set; }

        // New property to hold the list of favorite champions
        public List<Champion> FavoriteChampions { get; set; }
        public List<Champion> FavoriteChampionsR { get; set; }
        public List<Champion> FavoriteChampionsDesc { get; set; }
        public List<Champion> FavoriteChampionsRDesc { get; set; }

        // Constructor to initialize lists
        public ChampionViewModel()
        {
            ChampionsByName = new List<Champion>();
            ChampionsByReleaseDate = new List<Champion>();
            ChampionsByNameDesc = new List<Champion>();
            ChampionsByReleaseDateDesc = new List<Champion>();

            FavoriteChampions = new List<Champion>(); // Initialize the favorites list
            FavoriteChampionsR = new List<Champion>();
            FavoriteChampionsDesc = new List<Champion>();
            FavoriteChampionsRDesc = new List<Champion>();
        }
    }
}
