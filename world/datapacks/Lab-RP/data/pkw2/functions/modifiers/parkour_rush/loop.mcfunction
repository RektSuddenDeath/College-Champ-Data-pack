

function pkw2:modifiers/parkour_rush/assign_bounds 


# in spectator mode, actionbar is read from the nearest player in 20 blocks
execute as @a[gamemode=spectator] at @s run scoreboard players operation @s pkw2_mod_abar_low = @a[sort=nearest,limit=1,gamemode=!spectator,distance=0..20] pkw2_mod_abar_low
execute as @a[gamemode=spectator] at @s run scoreboard players operation @s pkw2_mod_abar_high = @a[sort=nearest,limit=1,gamemode=!spectator,distance=0..20] pkw2_mod_abar_high


execute as @a if score @s pkw2_mod_abar_low matches 0..9 if score @s pkw2_mod_abar_high matches 0..9 run title @s actionbar ["",{"text": "5","font":"space:backspace"},{"text": "\ub048","font": "ui","color": "#4E5C24"},{"text": "44","font": "space:backspace"},{"text": "懆"},{"text": "6","font": "space:backspace"},{"score": {"name": "@s","objective": "pkw2_mod_abar_low"},"font": "hud","color": "white"},{"text": "/","font": "hud","color": "white"},{"score": {"name": "@s","objective": "pkw2_mod_abar_high"},"font": "hud","color": "white"}]
execute as @a if score @s pkw2_mod_abar_low matches 10.. if score @s pkw2_mod_abar_high matches 10.. run title @s actionbar ["",{"text": "5","font":"space:backspace"},{"text": "\ub048","font": "ui","color": "#4E5C24"},{"text": "44","font": "space:backspace"},{"text": "懆"},{"text": "64","font": "space:backspace"},{"score": {"name": "@s","objective": "pkw2_mod_abar_low"},"font": "hud","color": "white"},{"text": "/","font": "hud","color": "white"},{"score": {"name": "@s","objective": "pkw2_mod_abar_high"},"font": "hud","color": "white"}]

execute as @a if score @s pkw2_mod_abar_low matches 0..9 if score @s pkw2_mod_abar_high matches 10.. run title @s actionbar ["",{"text": "5","font":"space:backspace"},{"text": "\ub048","font": "ui","color": "#4E5C24"},{"text": "44","font": "space:backspace"},{"text": "懆"},{"text": "63","font": "space:backspace"},{"score": {"name": "@s","objective": "pkw2_mod_abar_low"},"font": "hud","color": "white"},{"text": "/","font": "hud","color": "white"},{"score": {"name": "@s","objective": "pkw2_mod_abar_high"},"font": "hud","color": "white"}]

# clear actionbar if -1
execute as @a if score @s pkw2_mod_abar_low matches -1 if score @s pkw2_mod_abar_high matches -1 run title @s actionbar ""


execute if score gameflag pkw2_game matches 1 run schedule function pkw2:modifiers/parkour_rush/loop 1t