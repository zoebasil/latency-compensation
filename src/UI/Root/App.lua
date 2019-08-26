--[[
	Entry-point to the game UI.
]]

local import = require(game.ReplicatedStorage.Lib.Import)

local Roact = import "Roact"
local RoactRodux = import "RoactRodux"

local PingDisplay = import "UI/Components/PingDisplay"

local function App(store)
	return Roact.createElement(RoactRodux.StoreProvider, { store = store }, {
		Roact.createElement("ScreenGui", {
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		}, {

			PingDisplay = Roact.createElement(PingDisplay)
		})
	})
end

return App
