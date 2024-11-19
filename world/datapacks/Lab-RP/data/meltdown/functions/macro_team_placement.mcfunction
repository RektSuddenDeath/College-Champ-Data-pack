
$execute as @a[team=$(placement_team)] at @s run playsound sound.acquire record @s
$execute if score $(placement_team) meltdown_team_placement matches 1 run scoreboard players add @a[team=$(placement_team)] meltdown_roundscore 40
$execute if score $(placement_team) meltdown_team_placement matches 1 run tellraw @a[team=$(placement_team)] ["[§6+40分§f] ","§a§l你的队伍生存排名为第1！"]
$execute if score $(placement_team) meltdown_team_placement matches 2 run scoreboard players add @a[team=$(placement_team)] meltdown_roundscore 30
$execute if score $(placement_team) meltdown_team_placement matches 2 run tellraw @a[team=$(placement_team)] ["[§6+30分§f] ","§a§l你的队伍生存排名为第2！"]
$execute if score $(placement_team) meltdown_team_placement matches 3 run scoreboard players add @a[team=$(placement_team)] meltdown_roundscore 25
$execute if score $(placement_team) meltdown_team_placement matches 3 run tellraw @a[team=$(placement_team)] ["[§6+25分§f] ","§a§l你的队伍生存排名为第3！"]
$execute if score $(placement_team) meltdown_team_placement matches 4 run scoreboard players add @a[team=$(placement_team)] meltdown_roundscore 20
$execute if score $(placement_team) meltdown_team_placement matches 4 run tellraw @a[team=$(placement_team)] ["[§6+20分§f] ","§a§l你的队伍生存排名为第4！"]
$execute if score $(placement_team) meltdown_team_placement matches 5 run scoreboard players add @a[team=$(placement_team)] meltdown_roundscore 15
$execute if score $(placement_team) meltdown_team_placement matches 5 run tellraw @a[team=$(placement_team)] ["[§6+15分§f] ","§a§l你的队伍生存排名为第5！"]
$execute if score $(placement_team) meltdown_team_placement matches 6 run scoreboard players add @a[team=$(placement_team)] meltdown_roundscore 12
$execute if score $(placement_team) meltdown_team_placement matches 6 run tellraw @a[team=$(placement_team)] ["[§6+12分§f] ","§a§l你的队伍生存排名为第6！"]
$execute if score $(placement_team) meltdown_team_placement matches 7 run scoreboard players add @a[team=$(placement_team)] meltdown_roundscore 9
$execute if score $(placement_team) meltdown_team_placement matches 7 run tellraw @a[team=$(placement_team)] ["[§6+9分§f] ","§a§l你的队伍生存排名为第7！"]
$execute if score $(placement_team) meltdown_team_placement matches 8 run scoreboard players add @a[team=$(placement_team)] meltdown_roundscore 6
$execute if score $(placement_team) meltdown_team_placement matches 8 run tellraw @a[team=$(placement_team)] ["[§6+6分§f] ","§a§l你的队伍生存排名为第8！"]

$execute if score $(placement_team) meltdown_team_placement matches 1 run summon marker 0 50 0 {Tags:["md_teamStandings","1"],CustomName:'["1. ",{"translate":"team.$(placement_team)"}]'}
$execute if score $(placement_team) meltdown_team_placement matches 2 run summon marker 0 50 0 {Tags:["md_teamStandings","2"],CustomName:'["2. ",{"translate":"team.$(placement_team)"}]'}
$execute if score $(placement_team) meltdown_team_placement matches 3 run summon marker 0 50 0 {Tags:["md_teamStandings","3"],CustomName:'["3. ",{"translate":"team.$(placement_team)"}]'}
$execute if score $(placement_team) meltdown_team_placement matches 4 run summon marker 0 50 0 {Tags:["md_teamStandings","4"],CustomName:'["4. ",{"translate":"team.$(placement_team)"}]'}
$execute if score $(placement_team) meltdown_team_placement matches 5 run summon marker 0 50 0 {Tags:["md_teamStandings","5"],CustomName:'["5. ",{"translate":"team.$(placement_team)"}]'}
$execute if score $(placement_team) meltdown_team_placement matches 6 run summon marker 0 50 0 {Tags:["md_teamStandings","6"],CustomName:'["6. ",{"translate":"team.$(placement_team)"}]'}
$execute if score $(placement_team) meltdown_team_placement matches 7 run summon marker 0 50 0 {Tags:["md_teamStandings","7"],CustomName:'["7. ",{"translate":"team.$(placement_team)"}]'}
$execute if score $(placement_team) meltdown_team_placement matches 8 run summon marker 0 50 0 {Tags:["md_teamStandings","8"],CustomName:'["8. ",{"translate":"team.$(placement_team)"}]'}