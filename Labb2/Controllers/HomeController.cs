using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Labb2.Models;
using Microsoft.EntityFrameworkCore;
using Labb2.Data;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using System.Security.Claims;
using System.Linq;
using System.Collections.Generic; // Needed for List

namespace Labb2.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;
    private readonly LeagueCheckerDbContext _context;
    private static List<int> FavoriteChampions = new List<int>(); // Simulated storage for favorites

    public HomeController(ILogger<HomeController> logger, LeagueCheckerDbContext context)
    {
        _logger = logger;
        _context = context;
    }

    public IActionResult Login()
    {
        return View();
    }

    [HttpPost]
    public async Task<IActionResult> Login(LoginViewModel model)
    {
        if (ModelState.IsValid)
        {
            // Replace this with your user validation logic
            var user = _context.Users
                        .FirstOrDefault(u => u.Username == model.Username && u.Password == model.Password);

            if (user != null)
            {
                var claims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name, user.Username)
                };

                var identity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
                var principal = new ClaimsPrincipal(identity);

                await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, principal);

                return RedirectToAction("Index");
            }
            else
            {
                ModelState.AddModelError(string.Empty, "Invalid login attempt.");
            }
        }

        return View(model);
    }   


    public async Task<IActionResult> Index()
    {
        var championsByName = await _context.Champions.OrderBy(c => c.Name).ToListAsync();
        var championsByReleaseDate = await _context.Champions.OrderBy(c => c.ReleaseDate).ToListAsync();
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

    [HttpPost]
    public IActionResult AddToFavorites(int championId)
    {
        if (!FavoriteChampions.Contains(championId))
        {
            FavoriteChampions.Add(championId);
        }

        // In a real application, save the updated list to a database
        return Json(new { success = true, message = "Added to favorites successfully!" });
    }

    [HttpPost]
    public IActionResult RemoveFromFavorites(int championId)
    {
        FavoriteChampions.Remove(championId);

        // In a real application, update the database
        return Json(new { success = true, message = "Removed from favorites successfully!" });
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
