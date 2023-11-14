using Microsoft.EntityFrameworkCore;
using Labb2.Models; // This should be the namespace where your entity models are located

namespace Labb2.Data
{
    public class LeagueCheckerDbContext : DbContext
    {
        public LeagueCheckerDbContext(DbContextOptions<LeagueCheckerDbContext> options)
            : base(options)
        {
        }

        public DbSet<Champion> Champions { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<Class> Classes { get; set; }
        public DbSet<ChampionRole> ChampionRoles { get; set; }
        public DbSet<ChampionClass> ChampionClasses { get; set; }

        // ... other DbSets and model configurations
    }
}
