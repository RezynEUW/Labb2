-- Check Connection
SHOW DATABASES;

-- Access


-- Test 1: Champion/Role/Class (Has doubles)

SELECT 
    c.Name, 
    r.RoleName, 
    cl.ClassName
FROM 
    champions c
JOIN 
    championroles cr ON c.ChampionId = cr.ChampionId
JOIN 
    roles r ON cr.RoleId = r.RoleId
JOIN 
    championclasses cc ON c.ChampionId = cc.ChampionId
JOIN 
    classes cl ON cc.ClassId = cl.ClassId;
    
-- Test 2: Lists every Assassin champion in one column
    
SELECT 
    c.Name
FROM 
    champions c
JOIN 
    championclasses cc ON c.ChampionId = cc.ChampionId
JOIN 
    classes cl ON cc.ClassId = cl.ClassId
WHERE 
    cl.ClassName = 'Assassin';

-- Test 3: List every Assassin + Fighter (any) 

SELECT 
    DISTINCT c.Name
FROM 
    champions c
JOIN 
    championclasses cc1 ON c.ChampionId = cc1.ChampionId
JOIN 
    classes cl1 ON cc1.ClassId = cl1.ClassId AND cl1.ClassName = 'Assassin'
JOIN 
    championclasses cc2 ON c.ChampionId = cc2.ChampionId
JOIN 
    classes cl2 ON cc2.ClassId = cl2.ClassId AND cl2.ClassName LIKE 'Fighter%'
WHERE 
    c.ChampionId IN (
        SELECT 
            c2.ChampionId
        FROM 
            champions c2
        JOIN 
            championclasses cc2 ON c2.ChampionId = cc2.ChampionId
        JOIN 
            classes cl2 ON cc2.ClassId = cl2.ClassId
        WHERE 
            cl2.ClassName LIKE 'Fighter%'
        )
ORDER BY 
    c.Name;

-- Test 4: Present every Marksman and Support

-- Selecting Marksman champions
(SELECT 
    c.Name,
    'Marksman' AS Tag
FROM 
    champions c
JOIN 
    championclasses cc ON c.ChampionId = cc.ChampionId
JOIN 
    classes cl ON cc.ClassId = cl.ClassId
WHERE 
    cl.ClassName = 'Marksman')

UNION

-- Selecting Support champions
(SELECT 
    c.Name,
    'Support' AS Tag
FROM 
    champions c
JOIN 
    championroles cr ON c.ChampionId = cr.ChampionId
JOIN 
    roles r ON cr.RoleId = r.RoleId
WHERE 
    r.RoleName = 'Support')

ORDER BY Tag, Name;
