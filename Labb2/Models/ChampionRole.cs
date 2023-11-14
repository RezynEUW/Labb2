public class ChampionRole
{
    public int ChampionRoleId { get; set; }
    public int ChampionId { get; set; }
    public int RoleId { get; set; }

    // Navigation properties
    public Champion Champion { get; set; }
    public Role Role { get; set; }
}
