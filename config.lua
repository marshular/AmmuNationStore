------------------------------------------------------------------------
------------------------------------------------------------------------
--																	  --
--     For support join my discord: https://discord.gg/Z9Mxu72zZ6     --
--																	  --
------------------------------------------------------------------------
------------------------------------------------------------------------

config = {
    saving = {
        enabled = true,
        filePath = "weapons.json" -- don't touch
    },

    menu = {
        position = "right",   --This is not functional
        width = 80, 
        customImage = true,
        image = "https://i.imgur.com/YHgZX1E.png", -- Another cool image: https://i.imgur.com/ON97ple.png
    },

    locations = {
        {x = 1693.71, y = 3760.54, z = 34.71}
    },

    weapons = {
        HandGuns = {--FORMAT Display Name, Spawn Code, Price, Description, Amount(On Ammo)
            pistols_1 = {"Pistol", "weapon_pistol", 699, "Most reliable and dependable sidearm for law-enforcement, military and personal defense."},
            pistols_2 = {"Combat Pistol", "weapon_combatpistol", 549, "Short recoil-operated, semi-automatic pistol designed and produced by Hawk & Little."},
            pistols_3 = {"AP Pistol", "weapon_appistol", 6100, "High-penetration, fully-automatic pistol. Holds 18 rounds in the magazine."},
            pistols_4 = {"Pistol .50", "weapon_pistol50", 2550, "High-impact pistol that delivers immense power but with extremely strong recoil."},
            pistols_5 = {"SNS Pistol", "weapon_snspistol", 300, "Like condoms or hairspray, this fits in your pocket for a night on the town."},
            pistols_6 = {"Heavy Pistol", "weapon_heavypistol", 1100, "The heavyweight champion. Delivers accuracy and a serious forearm workout every time."},
            pistols_7 = {"Heavy Revolver", "weapon_revolver", 5900, "A handgun with enough stopping power to drop a crazed rhino."},
            pistols_8 = {"Double Action Revolver", "weapon_doubleaction", 279, "Sometimes revenge is a dish best served six times, in quick succession, right between the eyes."}
        },
        Submachine_Guns = {
            submachineGuns_1 = {"Micro SMG", "weapon_microsmg", 2400, "Combines compact design with a high rate of fire at approximately 700-900 rounds per minute."},
            submachineGuns_2 = {"SMG", "weapon_smg", 2150, "This is known as a good all-around submachine gun. Lightweight with an accurate sight."},
            submachineGuns_3 = {"Assault SMG", "weapon_assaultsmg", 1480, "A high-capacity submachine gun that is both compact and lightweight. Holds up to 30 bullets."},
            submachineGuns_4 = {"Combat PDW", "weapon_combatpdw", 1799, "Who said personal weaponry couldn't be worthy of military personnel? Integral suppressor."},
            submachineGuns_5 = {"Machine Pistol", "weapon_machinepistol", 1100, "The snare drum to your twin-engine V8 bass: no drive-by sounds quite right without it."},
            submachineGuns_6 = {"Mini SMG", "weapon_minismg", 1240, "Increasingly popular since marketing team started caring about little guys in low income areas."}
        },
        Shotguns = {
            shotguns_1 = {"Pump Shotgun", "weapon_pumpshotgun", 800, "Standard shotgun ideal for short-range combat. High-projectile spread, lower accuracy at long range."},
            shotguns_2 = {"Sawed-Off Shotgun", "weapon_sawnoffshotgun", 450, "Single-barrel, sawed-off shotgun. Low range and ammo capacity but devastating in close combat."},
            shotguns_3 = {"Musket", "weapon_musket", 1600, "Armed with nothing but muskets and a superiority complex, the Brits took over half the world."},
            shotguns_4 = {"Double Barrel Shotgun", "weapon_dbshotgun", 300, "Who needs a high fire rate when your first shot turns the other guy into a fine mist?"},
            shotguns_5 = {"Sweeper Shotgun", "weapon_autoshotgun", 995, "How many effective tools for riot control can you tuck into your pants?"},
            shotguns_6 = {"Combat Shotgun", "weapon_combatshotgun", 1200, "There's only one semi-automatic shotgun with a fire rate that sets the LSFD alarm ringing."}
        },
        Assault_Rifles = {
            assaultRifles_1 = {"Assault Rifle", "weapon_assaultrifle", 8280, "This standard assault rifle boasts a large capacity magazine and long distance accuracy."},
            assaultRifles_2 = {"Carbine Rifle", "weapon_carbinerifle", 9700, "Combining long distance accuracy with a high capacity magazine, make the hit."},
            assaultRifles_3 = {"Advanced Rifle", "weapon_advancedrifle", 8800, "The most lightweight and compact of all rifles, without compromising accuracy and fire rate."},
            assaultRifles_4 = {"Special Carbine", "weapon_specialcarbine", 7200, "Combining accuracy, maneuverability, firepower and low recoil, this is extremely versatile."},
            assaultRifles_5 = {"Bullpup Rifle", "weapon_bullpuprifle", 1750, "The latest Chinese import taking America by storm, this rifle is known for balanced handling."},
            assaultRifles_6 = {"Compact Rifle", "weapon_compactrifle", 2390, "Half the size, all the power, double the recoil: no riskier way to say \"I'm compensating\"."}
        },
        Light_Machine_Guns = {
            lightMachineGuns_1 = {"MG", "weapon_mg", 8500, "General purpose machine. Long range penetrative power. Very effective against large groups."},
            lightMachineGuns_2 = {"Combat MG", "weapon_combatmg", 9530, "Lightweight and excellent maneuverability with a high rate of fire to devastating effect."},
            lightMachineGuns_3 = {"Gusenberg Sweeper", "weapon_gusenberg", 2800, "Looks great sticking out the window of a Roosevelt or paired with a pinstripe suit."}
        },
        Special_Toys = {
            special_1 = {"Sniper Rifle", "weapon_sniperrifle", 12500, "Standard sniper rifle. Ideal for situations that require accuracy at long range."},
            special_2 = {"Marksman Rifle", "weapon_marksmanrifle", 6900, "Whether you're up close or a disconcertingly long way away. A multi-range tool for tools."},
            special_3 = {"Firework Launcher", "weapon_firework", 2500, "Put the flair back in flare with this firework launcher."},
            special_4 = {"Molotov Cocktail", "weapon_molotov", 50, "Crude yet highly effective incendiary weapon. No happy hour with this cocktail."},
            special_5 = {"Flare", "weapon_flare", 25, "Use to signal distress or drunken excitement."}
        },
        Ammo = {
            ammo_1 = {"Pistol Ammo", "AMMO_PISTOL", 120, "Purchase 60 rounds of pistol ammo.", 60},
            ammo_2 = {"SMG Ammo", "AMMO_SMG", 250, "Purchase 100 rounds of SMG ammo.", 100},
            ammo_3 = {"Shotgun Ammo", "AMMO_SHOTGUN", 185, "Purchase 30 rounds of Shotgun ammo.", 30},
            ammo_4 = {"Assault Rifle Ammo", "AMMO_RIFLE", 500, "Purchase 150 rounds of Assault Rifle Ammo.", 150},
            ammo_5 = {"LMG Ammo", "AMMO_MG", 700, "Purchase 200 Rounds of Light Machine Gun Ammo.", 200},
            ammo_6 = {"Sniper Ammo", "AMMO_SNIPER", 200, "Purchase 25 Rounds of Sniper Ammo.", 25}
        },
    }
}