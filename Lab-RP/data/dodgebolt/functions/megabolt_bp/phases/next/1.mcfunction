
scoreboard players set phase megabolt_bp 2
scoreboard players set timer megabolt_bp 560
# FX
effect clear @a[tag=!admin] blindness
effect give @a[tag=!admin] blindness 1 0 true

# Event Scheduling
schedule function dodgebolt:megabolt_bp/text/1 2s
schedule function dodgebolt:megabolt_bp/text/2 10s
schedule function dodgebolt:megabolt_bp/text/3 18s
## Starts at 28s
function dodgebolt:megabolt_bp/phases/loop/2