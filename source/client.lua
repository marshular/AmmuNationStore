------------------------------------------------------------------------
------------------------------------------------------------------------
--		    Don't touch if you don't know what you're doing.		  --
--     For support join my discord: https://discord.gg/Z9Mxu72zZ6     --
--																	  --
------------------------------------------------------------------------
------------------------------------------------------------------------

if config.customMenuEnabled then
    local RuntimeTXD = CreateRuntimeTxd('Custom_Menu_Head')
    local Object = CreateDui(config.menuImage, 512, 128)
    _G.Object = Object
    local TextureThing = GetDuiHandle(Object)
    local Texture = CreateRuntimeTextureFromDuiHandle(RuntimeTXD, 'Custom_Menu_Head', TextureThing)
    menuImage = "Custom_Menu_Head"
else
    menuImage = "shopui_title_sm_hangar"
end

-- Alert on top left of screen
function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

-- Check if player is in a gun store
function InGunStore()
	local playerCoords = GetEntityCoords(PlayerPedId(), 0)
	local GunStore = GetCoordsAndRotationOfClosestObjectOfType(playerCoords.x, playerCoords.y, playerCoords.z, 2.5, 1093460780, 0)

	if GunStore == 1 then
		return true
    elseif _menuPool:IsAnyMenuOpen() and GunStore ~= 1 then
        _menuPool:CloseAllMenus()
    end
end

RegisterNetEvent("purchaseWeapon")
AddEventHandler("purchaseWeapon", function(name, hash, price, ammo)
    if ammo == "none" then
        giveWeapon(name, hash, price)
    else
        giveAmmo(name, ammo, price, hash)
    end
end)

function giveArmor(name, price)
    AddArmourToPed(PlayerPedId(), 100)
    SetNotificationTextEntry("STRING")
    AddTextComponentString("You've purchased ~b~" .. name .. " ~w~ for ~g~$" .. price .. ".")
    DrawNotification(true, true)
end

function giveWeapon(name, hash, price)
    GiveWeaponToPed(PlayerPedId(), GetHashKey(hash), 30, false, false)
    SetNotificationTextEntry("STRING")
    AddTextComponentString("You've purchased a " .. "~b~" .. name .. "~w~ for ~g~$" .. price .. ".")
    DrawNotification(true, true)
end

function giveAmmo(name, amount, price, ammoType)
    AddAmmoToPedByType(PlayerPedId(), ammoType, amount)
    SetNotificationTextEntry("STRING")
    AddTextComponentString("You've purchased ~b~" .. amount .. " ~s~rounds of ~b~" .. name .. "~w~ for ~g~$" .. price .. ".")
    DrawNotification(true, true)
end


--- Components


--- Silencer Start
local used = 0

RegisterNetEvent('addsilencer')
AddEventHandler('addsilencer', function(duration)
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("component_at_pi_supp_02"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 

		  	elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 


		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 

		  	elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 

		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true)  

		  	elseif currentWeaponHash == GetHashKey("WEAPON_VINTAGEPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_VINTAGEPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 


		  	elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 
				

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 
		  		

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true)  
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true)  
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSHOTGUN"), GetHashKey("COMPONENT_AT_AR_SUPP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 
                
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSHOTGUN"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPSHOTGUN"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_AT_SR_SUPP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNIPERRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNIPERRIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a silencer on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	else 
                SetNotificationTextEntry("STRING")
                AddTextComponentString("You are not holding a weapon, or your weapon doesn't have a silencer.")
                DrawNotification(true, true) 
		  		
			end
        end)
--- Silencer END


--- Flashlight Start
RegisterNetEvent('addflashlight')
AddEventHandler('addflashlight', function(duration)
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 

                
		  	elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 
		  		

		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))   
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 

				
		  	elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))    
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 


		  	elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 
				

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 
				 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 
		  			

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSHOTGUN"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSHOTGUN"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPSHOTGUN"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
		  		 ESX.ShowNotification(("You have just equipped yourself with a flashlight. It will be necessary to re-equip it with every return in town.")) 
	used2 = used2 + 1
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equpped a flashlight on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped a flashlight on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	else 
                SetNotificationTextEntry("STRING")
                AddTextComponentString("You are not holding a weapon, or your weapon doesn't have a flashlight.")
                DrawNotification(true, true) 
            end
		end)
--- Flashlight END

--- Grip Start
RegisterNetEvent('addgrip')
AddEventHandler('addgrip', function(duration)
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)	
			if currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped a grip on your weapon.")
                   DrawNotification(true, true) 


		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped a grip on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped a grip on your weapon.")
                   DrawNotification(true, true) 
		  		
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped a grip on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped a grip on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSHOTGUN"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped a grip on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSHOTGUN"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped a grip on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPSHOTGUN"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped a grip on your weapon.")
                   DrawNotification(true, true) 
		  		 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped a grip on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	else 
                SetNotificationTextEntry("STRING")
                AddTextComponentString("You are not holding a weapon, or your weapon doesn't have a grip.")
                DrawNotification(true, true) 
		  		
			end

end)

--- Grip END

--- Yusuf Start
RegisterNetEvent('addyusuf')
AddEventHandler('addyusuf', function(duration)
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_VARMOD_LUXE"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped the yusuf skin on your weapon.")
                   DrawNotification(true, true) 

		  	elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped the yusuf skin on your weapon.")
                   DrawNotification(true, true) 
		  		
				
		  	elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_APPISTOL_VARMOD_LUXE"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped the yusuf skin on your weapon.")
                   DrawNotification(true, true) 
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_VARMOD_LUXE"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped the yusuf skin on your weapon.")
                   DrawNotification(true, true) 

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_SMG_VARMOD_LUXE"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped the yusuf skin on your weapon.")
                   DrawNotification(true, true) 
		  		 

		  	elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_MICROSMG_VARMOD_LUXE"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped the yusuf skin on your weapon.")
                   DrawNotification(true, true) 
				


		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_ASSAULTRIFLE_VARMOD_LUXE"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped the yusuf skin on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_CARBINERIFLE_VARMOD_LUXE"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped the yusuf skin on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE"))  
                   SetNotificationTextEntry("STRING")
                   AddTextComponentString("You have just equipped the yusuf skin on your weapon.")
                   DrawNotification(true, true) 
		  		
		  	
		  	else 
                SetNotificationTextEntry("STRING")
                AddTextComponentString("You are not holding a weapon, or your weapon doesn't have a yusuf skin.")
                DrawNotification(true, true) 
		  		
			end

end)

--- Yusuf END


---Extended Clip Start (weird format ngl)

local extendedweapons = {
"PISTOL",
"PISTOL50",
"ASSAULTRIFLE",
"COMBATPDW",
"APPISTOL",
"COMBATPISTOL",
"CARBINERIFLE",
"MACHINEPISTOL",
"MICROSMG",
"MINISMG",
"SNSPISTOL",
"HEAVYPISTOL",
"SNSPISTOL_MK2",
"PISTOL_MK2",
"VINTAGEPISTOL",
"CERAMICPISTOL",
"SMG",
"ASSAULTSMG",
"SMG_MK2",
"ASSAULTSHOTGUN",
"HEAVYSHOTGUN",
"ADVANCEDRIFLE",
"SPECIALCARBINE",
"BULLPUPRIFLE",
"BULLPUPRIFLE_MK2",
"SPECIALCARBINE_MK2",
"ASSAULTRIFLE_MK2",
"CARBINERIFLE_MK2",
"COMPACTRIFLE",
"MILITARYRIFLE",
"MG",
"COMBATMG",
"COMBATMG_MK2",
"GUSENBERG"
}

function applyextendedclip()
    local ped = GetPlayerPed(-1)
    local gun = GetSelectedPedWeapon(ped)
      for k,v in pairs(extendedweapons) do
        if  gun == GetHashKey("WEAPON_"..v) then
          GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_"..v), GetHashKey("COMPONENT_"..v.."_CLIP_02")) 
	else 
	   SetNotificationTextEntry("STRING")
           AddTextComponentString("You bought a extended clip, if it doesn't put onto your weapon, that means there isn't one avalible for it.")
           DrawNotification(true, true) 
       end
    end
end

RegisterNetEvent('addextendedclip')
AddEventHandler('addextendedclip', function()
  applyextendedclip()
end)

--- Extended Clip END