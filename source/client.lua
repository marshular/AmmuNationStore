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