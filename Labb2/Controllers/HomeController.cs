using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Labb2.Models;
using Microsoft.EntityFrameworkCore;
using Labb2.Data;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using System.Security.Claims;
using System.Linq;
using System.Threading.Tasks;

namespace Labb2.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly LeagueCheckerDbContext _context;

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
                var user = _context.Users.FirstOrDefault(u => u.Username == model.Username && u.Password == model.Password);

                if (user != null)
                {
                    var claims = new List<Claim>
                    {
                        new Claim(ClaimTypes.Name, user.Username),
                        new Claim(ClaimTypes.NameIdentifier, user.UserId.ToString())
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

            var userId = User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var favoriteChampions = new List<Champion>();

            if (!string.IsNullOrEmpty(userId))
            {
                var userFavorites = _context.Favorites.Where(f => f.UserId.ToString() == userId);
                favoriteChampions = await userFavorites.Select(f => f.Champion).ToListAsync();
            }

            var viewModel = new ChampionViewModel
            {
                ChampionsByName = championsByName,
                ChampionsByReleaseDate = championsByReleaseDate,
                ChampionsByNameDesc = championsByNameDesc,
                ChampionsByReleaseDateDesc = championsByReleaseDateDesc,

                FavoriteChampions = favoriteChampions.OrderBy(c => c.Name).ToList(),
                FavoriteChampionsR = favoriteChampions.OrderBy(c => c.ReleaseDate).ToList(),
                FavoriteChampionsDesc = favoriteChampions.OrderByDescending(c => c.Name).ToList(),
                FavoriteChampionsRDesc = favoriteChampions.OrderByDescending(c => c.ReleaseDate).ToList()
            };

            return View(viewModel);
        }

        [HttpPost]
        public async Task<IActionResult> AddToFavorites(int championId)
        {
            var userId = User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            if (!string.IsNullOrEmpty(userId))
            {
                var alreadyFavorite = _context.Favorites.Any(f => f.UserId.ToString() == userId && f.ChampionId == championId);
                if (!alreadyFavorite)
                {
                    var favorite = new Favorite { UserId = int.Parse(userId), ChampionId = championId };
                    _context.Favorites.Add(favorite);
                    await _context.SaveChangesAsync();
                    return Json(new { success = true, message = "Added to favorites successfully!" });
                }
            }

            return Json(new { success = false, message = "Error adding to favorites or user not authenticated." });
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
}
