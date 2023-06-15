------------------------------------------------------------------------
------------------------------------------------------------------------
--		    Don't touch if you don't know what you're doing.		  --
--     For support join my discord: https://discord.gg/Z9Mxu72zZ6     --
--																	  --
------------------------------------------------------------------------
------------------------------------------------------------------------

rightPosition = {x = 1320, y = 100}
leftPosition = {x = 0, y = 100}
menuPosition = {x = 0, y = 200}

if config.menuPosition then
    if config.menuPosition == "left" then
        menuPosition = leftPosition
    elseif config.menuPosition == "right" then
        menuPosition = rightPosition
    end
end

_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu()

function Menu()
    local MenuTitle = ""
    if not config.customMenuEnabled then
        MenuTitle = GetPlayerName(PlayerId())
    else
        MenuTitle = ""
    end
	_menuPool:Remove()
	_menuPool = NativeUI.CreatePool()
	mainMenu = NativeUI.CreateMenu(MenuTitle, GetResourceMetadata(GetCurrentResourceName(), "C", 0), menuPosition["x"], menuPosition["y"], menuImage, menuImage)
	_menuPool:Add(mainMenu)
	mainMenu:SetMenuWidthOffset(config.menuWidth)
	collectgarbage()
	mainMenu:SetMenuWidthOffset(config.menuWidth)	
	_menuPool:ControlDisablingEnabled(false)
	_menuPool:MouseControlsEnabled(false)

    
    for subMenu, items in pairs(config.weapons) do
        local subMenu = _menuPool:AddSubMenu(mainMenu, string.gsub(subMenu, "_", " "), "", true, menuImage, menuImage)
        subMenu:SetMenuWidthOffset(config.menuWidth)
        for type, weaponInfo in pairs(items) do
            local type = NativeUI.CreateItem(weaponInfo[1] .. ": ~g~$" .. weaponInfo[3], weaponInfo[4])
            subMenu:AddItem(type)
            type.Activated = function(ParentMenu, SelectedItem)
            if weaponInfo[5] then
                TriggerServerEvent("purchaseWeapon", weaponInfo[1], weaponInfo[2], weaponInfo[3], weaponInfo[5])
            else
                TriggerServerEvent("purchaseWeapon", weaponInfo[1], weaponInfo[2], weaponInfo[3], "none")
            end
            if weaponInfo[1] == "Armor" then
                TriggerServerEvent("purchaseArmor", weaponInfo[3])
                giveArmor('Armor', weaponInfo[3])
            end
        end
    end
end

    local ToggleClose = NativeUI.CreateItem("Close", "Close the menu")
    mainMenu:AddItem(ToggleClose)
    ToggleClose.Activated = function(ParentMenu, SelectedItem)
        _menuPool:CloseAllMenus()
    end

    _menuPool:RefreshIndex()
end

-- Alert thread
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		_menuPool:ProcessMenus()	
		_menuPool:ControlDisablingEnabled(false)
		_menuPool:MouseControlsEnabled(false)

		if InGunStore() and not _menuPool:IsAnyMenuOpen() then
			alert("Press ~INPUT_CONTEXT~ to view the weapon menu.")
			if IsControlJustPressed(0, 51) and not _menuPool:IsAnyMenuOpen() then
                Menu()
                mainMenu:Visible(true)
			end
		end
	end
end)

print("Gun Store Menu by Andyyy#7666. If you're in need of support join the discord server: https://discord.gg/Z9Mxu72zZ6")
