﻿using System.Collections.Generic;

namespace Labb2.Models
{
    public class ChampionViewModel
    {
        public List<Champion> ChampionsByName { get; set; }
        public List<Champion> ChampionsByReleaseDate { get; set; }
        public List<Champion> ChampionsByNameDesc { get; set; }
        public List<Champion> ChampionsByReleaseDateDesc { get; set; }
    }
}
