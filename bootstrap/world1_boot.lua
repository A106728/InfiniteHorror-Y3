-- World1 Bootstrap (Fix for 0 units / 0 events not triggering)
-- Evidence: GDD W1 full timeline 1:00-13:00

function StartWorld1()
    print("BOOT: World1 loading...")

    -- direct engine entry point
    WorldManager.loadWorld("W1_BIOHAZARD_RACCOON_CITY")

    -- force trigger first wave
    TriggerEvent("e_start")
end

-- auto bind to Y3 entry system
RegisterGameStart(StartWorld1)