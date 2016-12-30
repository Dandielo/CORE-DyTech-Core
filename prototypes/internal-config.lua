dytech:config
{
    health = 
    {
        tier1 = 100,
        tier2 = 250,
        tier3 = 500, 
        tier4 = 1000,
        tier5 = 1750,
        tier6 = 2500,
        tier7 = 4000,
        tier8 = 7500,
        tier9 = 12500,
        tier10 = 20000,
    },
    
    -- Resistance { "type", decrease, percent }
    resistances = 
    {
        tier1 = 
        {
        --  { "type",    decrease,      %   }
            { "fire",           0,      0   },
            { "physical",       0,      0   },
            { "impact",         0,      0   },
            { "explosion",      0,      0   },
            { "acid",           0,      0   },
            { "plasma",         0,      0   },
            { "laser",          0,      0   }
        },
        tier2 = 
        {
        --  { "type",    decrease,      %   }
            { "fire",           0,      20  },
            { "physical",       0,      0   },
            { "impact",         0,      0   },
            { "explosion",      0,      5   },
            { "acid",           0,      0   },
            { "plasma",         0,      0   },
            { "laser",          0,      0   },
        },
        tier3 = 
        {
        --  { "type",    decrease,      %   }
            { "fire",           0,      25  },
            { "physical",       0,      5   },
            { "impact",         0,      5   },
            { "explosion",      0,      10  },
            { "acid",           0,      5   },
            { "plasma",         0,      0   },
            { "laser",          0,      5   },
        },
        tier4 = 
        {
        --  { "type",    decrease,      %   }
            { "fire",         2.5,      40  },
            { "physical",       0,      10  },
            { "impact",         0,      10  },
            { "explosion",      0,      15  },
            { "acid",           0,      10  },
            { "plasma",         0,      0   },
            { "laser",          0,      10  },
        },
        tier5 = 
        {
        --  { "type",    decrease,      %   }
            { "fire",           5,      60  },
            { "physical",     2.5,      15  },
            { "impact",       2.5,      15  },
            { "explosion",      0,      25  },
            { "acid",           0,      15  },
            { "plasma",         0,      0   },
            { "laser",          0,      25  },
        },
        tier6 = 
        {
        --  { "type",    decrease,      %   }
            { "fire",          10,      75  },
            { "physical",       5,      25  },
            { "impact",         5,      25  },
            { "explosion",      4,      25  },
            { "acid",           5,      25  },
            { "plasma",        15,      10  },
            { "laser",         10,      40  },
        },
        tier7 = 
        {
        --  { "type",    decrease,      %    }
            { "fire",          15,      90   },
            { "physical",      10,      37.5 },
            { "impact",      12.5,      37.5 },
            { "explosion",      6,      37.5 },
            { "acid",          15,      37.5 },
            { "plasma",        30,      20   },
            { "laser",         25,      45   },
        },
        tier8 = 
        {
        --  { "type",    decrease,      %   }
            { "fire",           0,      100 },
            { "physical",    22.5,      50  },
            { "impact",        20,      50  },
            { "explosion",   12.5,      50  },
            { "acid",          25,      50  },
            { "plasma",        45,      30  },
            { "laser",         40,      50  },
        },
        tier9 = 
        {
        --  { "type",    decrease,      %   }
            { "fire",           0,      100 },
            { "physical",      35,      65  },
            { "impact",        25,      65  },
            { "explosion",     25,      65  },
            { "acid",          35,      65  },
            { "plasma",        60,      40  },
            { "laser",         55,      65  },
        },
        tier10 = 
        {
        --  { "type",    decrease,      %   }
            { "fire",           0,      100 },
            { "physical",      50,      80  },
            { "impact",        35,      80  },
            { "explosion",     40,      80  },
            { "acid",          45,      80  },
            { "plasma",        75,      50  },
            { "laser",         75,      85  },
        },

        fire = {
        --  { "type",    decrease,      %   }
            { "fire",           0,      75  },
        },
    }
}


--require "prototypes.internal-config"

Health = {
    Tier1 = 100,
    Tier2 = 250,
    Tier3 = 500,
    Tier4 = 1000,
    Tier5 = 1750,
    Tier6 = 2500,
    Tier7 = 4000,
    Tier8 = 7500,
    Tier9 = 12500,
    Tier10 = 20000
}

Resistances = {
    Tier1 = {
      {type = "fire", decrease = 0, percent = 0},
      {type = "physical", decrease = 0, percent = 0},
      {type = "impact", decrease = 0, percent = 0},
      {type = "explosion", decrease = 0, percent = 0},
      {type = "acid", decrease = 0, percent = 0},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 0}},
    Tier2 = {
      {type = "fire", decrease = 0, percent = 20},
      {type = "physical", decrease = 0, percent = 0},
      {type = "impact", decrease = 0, percent = 0},
      {type = "explosion", decrease = 0, percent = 5},
      {type = "acid", decrease = 0, percent = 0},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 0}},
    Tier3 = {
      {type = "fire", decrease = 0, percent = 25},
      {type = "physical", decrease = 0, percent = 5},
      {type = "impact", decrease = 0, percent = 5},
      {type = "explosion", decrease = 0, percent = 10},
      {type = "acid", decrease = 0, percent = 5},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 5}},
    Tier4 = {
      {type = "fire", decrease = 2.5, percent = 40},
      {type = "physical", decrease = 0, percent = 10},
      {type = "impact", decrease = 0, percent = 10},
      {type = "explosion", decrease = 0, percent = 15},
      {type = "acid", decrease = 0, percent = 10},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 10}},
    Tier5 = {
      {type = "fire", decrease = 5, percent = 60},
      {type = "physical", decrease = 2.5, percent = 15},
      {type = "impact", decrease = 2.5, percent = 15},
      {type = "explosion", decrease = 0, percent = 25},
      {type = "acid", decrease = 0, percent = 15},
      {type = "plasma", decrease = 0, percent = 0},
      {type = "laser", decrease = 0, percent = 25}},
    Tier6 = {
      {type = "fire", decrease = 10, percent = 75},
      {type = "physical", decrease = 5, percent = 25},
      {type = "impact", decrease = 5, percent = 25},
      {type = "explosion", decrease = 4, percent = 25},
      {type = "acid", decrease = 5, percent = 25},
      {type = "plasma", decrease = 15, percent = 10},
      {type = "laser", decrease = 10, percent = 40}},
    Tier7 = {
      {type = "fire", decrease = 15, percent = 90},
      {type = "physical", decrease = 10, percent = 37.5},
      {type = "impact", decrease = 12.5, percent = 37.5},
      {type = "explosion", decrease = 6, percent = 37.5},
      {type = "acid", decrease = 15, percent = 37.5},
      {type = "plasma", decrease = 30, percent = 20},
      {type = "laser", decrease = 25, percent = 45}},
    Tier8 = {
      {type = "fire", decrease = 0, percent = 100},
      {type = "physical", decrease = 22.5, percent = 50},
      {type = "impact", decrease = 20, percent = 50},
      {type = "explosion", decrease = 12.5, percent = 50},
      {type = "acid", decrease = 25, percent = 50},
      {type = "plasma", decrease = 45, percent = 30},
      {type = "laser", decrease = 40, percent = 50}},
    Tier9 = {
      {type = "fire", decrease = 0, percent = 100},
      {type = "physical", decrease = 35, percent = 65},
      {type = "impact", decrease = 25, percent = 65},
      {type = "explosion", decrease = 25, percent = 65},
      {type = "acid", decrease = 35, percent = 65},
      {type = "plasma", decrease = 60, percent = 40},
      {type = "laser", decrease = 55, percent = 60}},
    Tier10 = {
      {type = "fire", decrease = 0, percent = 100},
      {type = "physical", decrease = 50, percent = 80},
      {type = "impact", decrease = 35, percent = 80},
      {type = "explosion", decrease = 40, percent = 80},
      {type = "acid", decrease = 45, percent = 80},
      {type = "plasma", decrease = 75, percent = 50},
      {type = "laser", decrease = 75, percent = 85}},
    Fire = {
      {type = "fire", decrease = 0, percent = 75}},
}
