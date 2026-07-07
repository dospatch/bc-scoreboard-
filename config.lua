Config = {}

---------------------------------
-- Resource Information
---------------------------------

Config.ServerName = "BCGAMING Roleplay"

Config.Title = "Player Scoreboard"

Config.Logo = "logo.png"



---------------------------------
-- Framework
---------------------------------

-- qb = QB-Core
-- esx = ESX

Config.Framework = "qb"



---------------------------------
-- Controls
---------------------------------

Config.Keybind = "TAB"

Config.Command = "scoreboard"



---------------------------------
-- Update Settings
---------------------------------

Config.RefreshTime = 5000



---------------------------------
-- UI Settings
---------------------------------

Config.ShowPing = true

Config.ShowJobs = true

Config.ShowStaff = true

Config.EnableAnimations = true

Config.EnableSearch = true



---------------------------------
-- Premium Features
---------------------------------

Config.Premium = {

    Enabled = true,

    ShowServerLogo = true,

    ShowDepartmentCounts = true,

    ShowStaffBadges = true,

    ShowPlayerPing = true

}



---------------------------------
-- Departments
---------------------------------

Config.Jobs = {

    police = {

        icon = "🚓",

        category = "police"

    },


    sheriff = {

        icon = "🚔",

        category = "police"

    },


    state = {

        icon = "⭐",

        category = "police"

    },


    ambulance = {

        icon = "🚑",

        category = "ems"

    },


    doctor = {

        icon = "⚕️",

        category = "ems"

    },


    fire = {

        icon = "🔥",

        category = "fire"

    },


    firefighter = {

        icon = "🚒",

        category = "fire"

    },


    mechanic = {

        icon = "🔧",

        category = "civilian"

    },


    taxi = {

        icon = "🚕",

        category = "civilian"

    },


    unemployed = {

        icon = "👤",

        category = "civilian"

    }

}



---------------------------------
-- Staff Permissions
---------------------------------

Config.StaffPermissions = {

    ["license:OWNER_LICENSE"] = {

        name = "Owner",

        icon = "👑"

    },


    ["license:DEV_LICENSE"] = {

        name = "Developer",

        icon = "💻"

    },


    ["license:ADMIN_LICENSE"] = {

        name = "Administrator",

        icon = "⭐"

    },


    ["license:MOD_LICENSE"] = {

        name = "Moderator",

        icon = "🛡️"

    }

}



---------------------------------
-- Commands
---------------------------------

Config.Commands = {

    Enabled = true,

    Reload = "bcscore_reload"

}



---------------------------------
-- Version Information
---------------------------------

Config.Version = {

    Current = "1.1.0",

    Resource = "bc-scoreboard",

    Name = "BC-Scoreboard Premium",

    Author = "BCGAMING",

    Build = "2026.07",

    UpdateCheck = true,


    Changelog = {

        "Added Premium Staff Badge System",
        "Added Identifier Support",
        "Added Department Icons",
        "Added Theme Configuration",
        "Added Performance Improvements",
        "Added Admin Settings",
        "Added Server Information Panel",
        "Added QB-Core Support",
        "Added ESX Support",
        "Added OneSync Optimization"

    }

}



---------------------------------
-- Developer
---------------------------------

Config.Debug = false