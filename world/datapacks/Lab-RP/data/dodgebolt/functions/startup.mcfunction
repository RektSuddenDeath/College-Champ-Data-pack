function dodgebolt:scoreboard
execute unless score mega_mode db_game matches 1 run schedule function dodgebolt:intro/1a 2s
execute unless score mega_mode db_game matches 1 run schedule function dodgebolt:intro/2a 4s
execute unless score mega_mode db_game matches 1 run schedule function dodgebolt:intro/3a 12s
execute unless score mega_mode db_game matches 1 run schedule function dodgebolt:intro/4a 20s
execute unless score mega_mode db_game matches 1 run schedule function dodgebolt:intro/5a 28s
execute unless score mega_mode db_game matches 1 run schedule function dodgebolt:intro/6a 36s
execute unless score mega_mode db_game matches 1 run schedule function dodgebolt:initiategame 36s

execute if score mega_mode db_game matches 1 run schedule function dodgebolt:intro/6a 5s
execute if score mega_mode db_game matches 1 run schedule function dodgebolt:initiategame 5s

schedule function dodgebolt:buildarena 1t

gamemode spectator @a
summon armor_stand 10013 210 9978 {CustomName:'"Intro"',NoGravity:1b,Rotation:[0f,90f],Invisible:1b,Tags:["Intro"]}
#region fold
execute as @e[type=armor_stand,tag=Intro,limit=1] at @s run execute as @a[gamemode=spectator,distance=0.1..] run spectate
execute as @e[type=armor_stand,tag=Intro,limit=1] at @s run execute as @a[gamemode=spectator,distance=0.1..] run spectate @e[type=armor_stand,tag=Intro,limit=1] @s

forceload add 10038 9954 9988 10002
#endregion
function dodgebolt:intro/hold

scoreboard players set round db_game 0