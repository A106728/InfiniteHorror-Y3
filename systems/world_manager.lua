-- World Manager Core (Y3)
-- Fix layer: world binding for units/events (0 units / 0 events issue)

WorldManager = {}
local currentWorld = nil

-- evidence: GDD 5-world structure
function WorldManager.loadWorld(worldId)
    currentWorld = worldId
    print("World Loaded: " .. worldId)

    WorldManager.initUnits()
    WorldManager.initEvents()
end

-- evidence: missing unit count fix
function WorldManager.initUnits()
    print("Init Units Table Binding")
    RegisterUnitTable("spawn_table.json")
end

-- evidence: missing event count fix
function WorldManager.initEvents()
    print("Init Events Table Binding")
    RegisterEventTable("events.json")
end

function WorldManager.getCurrentWorld()
    return currentWorld
end