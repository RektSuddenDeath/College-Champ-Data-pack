
tp @a @e[type=armor_stand,tag=Intro,limit=1,sort=nearest]
execute as @a run spectate
execute as @a run spectate @e[type=armor_stand,tag=Intro,limit=1,sort=nearest] @s
function skybattle:intro/hold