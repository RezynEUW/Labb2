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
        // Normal sorting
        var championsByName = await _context.Champions.OrderBy(c => c.Name).ToListAsync();
        var championsByReleaseDate = await _context.Champions.OrderBy(c => c.ReleaseDate).ToListAsync();

        // Reverse sorting
        var championsByNameDesc = await _context.Champions.OrderByDescending(c => c.Name).ToListAsync();
        var championsByReleaseDateDesc = await _context.Champions.OrderByDescending(c => c.ReleaseDate).ToListAsync();

        var viewModel = new ChampionViewModel
        {
            ChampionsByName = championsByName,
            ChampionsByReleaseDate = championsByReleaseDate,
            ChampionsByNameDesc = championsByNameDesc,
            ChampionsByReleaseDateDesc = championsByReleaseDateDesc
        };

        return View(viewModel);
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
