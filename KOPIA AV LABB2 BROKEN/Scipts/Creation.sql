USE LeagueChecker;

CREATE TABLE Champions (
    ChampionId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL UNIQUE,
    ReleaseDate DATE NOT NULL,
    ImageUrl NVARCHAR(255)
);

CREATE TABLE Roles (
    RoleId INT PRIMARY KEY IDENTITY(1,1),
    RoleName NVARCHAR(50) NOT NULL
);

CREATE TABLE Classes (
    ClassId INT PRIMARY KEY IDENTITY(1,1),
    ClassName NVARCHAR(50) NOT NULL
);

CREATE TABLE ChampionRoles (
    ChampionRoleId INT PRIMARY KEY IDENTITY(1,1),
    ChampionId INT NOT NULL,
    RoleId INT NOT NULL,
    FOREIGN KEY (ChampionId) REFERENCES Champions(ChampionId),
    FOREIGN KEY (RoleId) REFERENCES Roles(RoleId)
);

CREATE TABLE ChampionClasses (
    ChampionClassId INT PRIMARY KEY IDENTITY(1,1),
    ChampionId INT NOT NULL,
    ClassId INT NOT NULL,
    FOREIGN KEY (ChampionId) REFERENCES Champions(ChampionId),
    FOREIGN KEY (ClassId) REFERENCES Classes(ClassId)
);

CREATE TABLE Users (
    UserId INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(100) NOT NULL UNIQUE,
    Password NVARCHAR(100) NOT NULL
);

CREATE TABLE Favorites (
    FavoriteId INT PRIMARY KEY IDENTITY(1,1),
    UserId INT NOT NULL,
    ChampionId INT NOT NULL,
    FOREIGN KEY (UserId) REFERENCES Users(UserId),
    FOREIGN KEY (ChampionId) REFERENCES Champions(ChampionId),
    UNIQUE (UserId, ChampionId)
);



