namespace Labb2.Models
{
    public class Role
    {
        public int RoleId { get; set; }
        public string RoleName { get; set; }

        // Navigation property
        public ICollection<ChampionRole> ChampionRoles { get; set; }
    }
}