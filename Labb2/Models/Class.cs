public class Class
{
    public int ClassId { get; set; }
    public string ClassName { get; set; }

    // Navigation property
    public ICollection<ChampionClass> ChampionClasses { get; set; }
}
