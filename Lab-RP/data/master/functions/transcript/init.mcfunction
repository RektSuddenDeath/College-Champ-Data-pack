
scoreboard objectives add _transcript dummy
scoreboard players set hour _transcript 0
scoreboard players set minute _transcript 0
scoreboard players set second _transcript -1

tellraw @a[tag=admin] ["[§6DEV§r] Transcript is now enabled."]
tellraw @a[tag=_transcript] ["[§6DEV§r] You are now receiving transcript messages."]

function master:transcript/sec