-- Load up your custom scripts here! Ideally, your custom scripts will be placed in the scripts/custom folder and then get loaded like this:
--
-- require("custom/yourScript")
--
-- Refer to the Tutorial.md file for information on how to use various event and command hooks in your scripts.

DailyRewards = require("custom.DailyRewards")
decorateHelp = require("custom.decorateHelp")  --  command: "/dh"
easyFind = require("custom.easyFind")  --  command:  "/find"
followersQuestFixes = require("custom.followersQuestFixes")
jrpAnim = require("custom.jrpAnim")  --  command:  "/a /anim"
jrpStatus = require("custom.jrpStatus")  --  command:  "/status"
kanaFurniture = require("custom.kanaFurniture")  --  command:  "/furniture /furn"
kanaHousing = require("custom.kanaHousing")  --  command:  "/house /adminhouse /houseinfo"
kanaMOTD = require("custom.kanaMOTD")
kanaRevive = require("custom.kanaRevive")
noteWriting = kanaRevive = require("custom.notWriting")
periodicCellResets = require("custom.periodicCellResets")
questFixes = require("custom.questFixes")
quickKeyAddons = require("custom.quickKeyAddons")  --  command: "/macro /hotkey /hotkeys /hk"
spawnSystem = require("custom.spawnSystem")  --  command:  "/sp"
StarterKit = require("custom.StarterKit")
support = require("custom.support.support")  --  command: "/support /ticket"

