VGX = {}

-- =========================
-- MANAGER PERMISSION (FROM CONFIG)
-- =========================
function VGX.IsManager(src)
    for _, perm in ipairs(Config.PermissionManagers or {}) do
        if QBCore.Functions.HasPermission(src, perm) then
            return true
        end
    end
    return false
end
