local Env = {}
function Env.readEnv()
    local file = io.open(".env", "r");
    local lines = {}

    for line in file:lines() do
        local fields = {}
        local pattern = line.format("([^%s]+)", "=")
        local result = tostring(line):gsub(pattern, function(c) fields[#fields + 1] = c end)
        fields[2] = fields[2] or ""
        if fields[2] == "true" then fields[2] = true end
        if fields[2] == "false" then fields[2] = false end
        fields[1] = fields[1]:gsub("^%s*(.-)%s*$", "%1")
        fields[2] = fields[2]:gsub("^%s*(.-)%s*$", "%1")
        lines[fields[1]] = fields[2]
    end

    return lines
end

function env(envKey, default)
    default = default or nil
    return Env.readEnv()[envKey] or default
end