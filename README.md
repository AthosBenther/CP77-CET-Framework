# CP77-CET-Framework
A simple framework for working with CET mods for Cyberpun 2077

## Description
This framework aims to make mod making for Cyberpunk 2077 using Cyber Engine Tweaks easier by providing useful features and minimizing code rewriting

## Usage
 - Download this repository into the CET mods folder
 - copy `.env.example` as `.env` and edit the values accordingly
 - You code logic goes in the `/app/Main.lua` file, opposed to `init.lua`


## Features

**Autoloader:** 

Automatically loads all lua files in the `/app` and `/vendors` folders to save time on `require()` calls.

Found some cool module you want available in your project? Just make sure it can be *required()* and drop it in the `/vendors/[autor]/` folder!


**Extended type functions**

Extends the funcionalities of types and add basic functions Lua lacks like `string_split` or `table_filter`. Let the weird code live recluse in the vendors folder, away from you beautiful, beautiful code


**.env Variables loader**

Save important, environment sensitive variables in a file that is not meant to be distributed. You can access the variable using the `env()` global function, and pass a default value in case the variable or the file are not available in the environment the mod is living now.


**Configurations manager**

Say you call `env` a lot. Like, a lot A LOT. You can create a file in the `/config` folder that simply returns a table with the fields you desire to preload and cache so you can access them later using the `config()` global function


**Log cleaning**

Everytime the mod is loaded it cleans the `[modname].log` file CET creates for ease of debugging. If an entry is created there it usually means you mod died. So why keep an obituary in a world where when the error changes it means a good thing? 


## More to come...

This is just the minimum viable product. Meaning that if you're reading this this project is in active development. Make sure to always check for new and improved updates!
