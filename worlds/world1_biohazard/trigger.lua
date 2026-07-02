-- World1 Biohazard Trigger Layer
-- Evidence-driven implementation from GDD v3.5

World1 = {}

-- evidence: GDD 1.1 5-world structure
function World1.onStart()
    print("World1 Start: Biohazard Raccoon City")
    World1.spawnTutorial()
end

-- evidence: GDD 3.3 tutorial combat
function World1.spawnTutorial()
    SpawnUnit("zombie_basic", 12)
    StartObjective("escort_charles")
end

-- evidence: GDD escort system
function World1.onEscortProgress()
    UpdateObjective("escort_charles")
end

-- evidence: GDD branch system
function World1.branchChoice(choice)
    if choice == "sewer" then
        SpawnUnit("licker", 2)
    else
        SpawnUnit("zombie_basic", 20)
    end
end

-- evidence: GDD boss 3-minute hold
function World1.spawnBoss()
    SpawnBoss("T-002_TYRANT", {hp=2000, phase=2})
    StartTimer(180)
end

function World1.onBossTimerEnd()
    CompleteObjective("tyrant_hold")
end