Sandbox = {
    descrition = "Sandbox"
}

require("vendors/autoloader")
Autoloader.init()
Config.Init()
Sandbox.init = Main.init()
FileManager.save("", "../Sandbox.log")

return Sandbox
