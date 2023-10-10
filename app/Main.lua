Main = {}
function Main.init()
    registerForEvent("onInit", function()
        log(config('app.name','Mod') .. ": Hello World!")
    end)
end

return Main
