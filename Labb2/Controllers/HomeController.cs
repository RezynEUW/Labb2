using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Labb2.Models;
using Microsoft.EntityFrameworkCore; // Ensure this namespace is included
using Labb2.Data;
using System.Linq; // Add this for LINQ operations

namespace Labb2.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;
    private readonly LeagueCheckerDbContext _context; // Your DbContext

    // Constructor with DbContext injection
    public HomeController(ILogger<HomeController> logger, LeagueCheckerDbContext context)
    {
        _logger = logger;
        _context = context;
    }

    // Asynchronous action method to fetch data from the database
    public async Task<IActionResult> Index()
    {
        // Fetching and sorting champions by name
        var championsByName = await _context.Champions.OrderBy(c => c.Name).ToListAsync();

        // Fetching and sorting champions by release date
        var championsByReleaseDate = await _context.Champions.OrderByDescending(c => c.ReleaseDate).ToListAsync();

        // Creating a ViewModel to pass to the view
        var viewModel = new ChampionViewModel
        {
            ChampionsByName = championsByName,
            ChampionsByReleaseDate = championsByReleaseDate
        };

        return View(viewModel); // Passing the ViewModel to the view
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
