
# For timed items
scoreboard objectives add dd_tooltime dummy
scoreboard players set firebomb dd_tooltime -1
scoreboard players set foxlifespan dd_tooltime -1
scoreboard players set sticky dd_tooltime -1

# For consumables, detect what is in the player's hand
scoreboard objectives add dd_toolheld dummy
scoreboard players set @a dd_toolheld -1
scoreboard objectives add dd_toolused minecraft.used:snowball
scoreboard players set @a dd_toolused 0

function decisiondome:tools/master