
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
scoreboard objectives setdisplay below_name

# 复位计分板
scoreboard objectives remove gr_redsb
scoreboard objectives remove gr_bluesb
scoreboard objectives remove gr_greensb
scoreboard objectives remove gr_yellowsb
scoreboard objectives remove gr_cyansb
scoreboard objectives remove gr_purplesb
scoreboard objectives remove gr_pinksb
scoreboard objectives remove gr_orangesb
scoreboard objectives remove gr_sb

scoreboard objectives add gr_redsb dummy ["",{"text": "Grid Runners","bold": true,"color": "yellow"}]
scoreboard objectives add gr_bluesb dummy ["",{"text": "Grid Runners","bold": true,"color": "yellow"}]
scoreboard objectives add gr_greensb dummy ["",{"text": "Grid Runners","bold": true,"color": "yellow"}]
scoreboard objectives add gr_yellowsb dummy ["",{"text": "Grid Runners","bold": true,"color": "yellow"}]
scoreboard objectives add gr_orangesb dummy ["",{"text": "Grid Runners","bold": true,"color": "yellow"}]
scoreboard objectives add gr_cyansb dummy ["",{"text": "Grid Runners","bold": true,"color": "yellow"}]
scoreboard objectives add gr_pinksb dummy ["",{"text": "Grid Runners","bold": true,"color": "yellow"}]
scoreboard objectives add gr_purplesb dummy ["",{"text": "Grid Runners","bold": true,"color": "yellow"}]
scoreboard objectives add gr_sb dummy ["",{"text": "Grid Runners","bold": true,"color": "yellow"}]

scoreboard objectives setdisplay sidebar gr_sb
scoreboard objectives setdisplay sidebar.team.red gr_redsb
scoreboard objectives setdisplay sidebar.team.blue gr_bluesb
scoreboard objectives setdisplay sidebar.team.green gr_greensb
scoreboard objectives setdisplay sidebar.team.yellow gr_yellowsb
scoreboard objectives setdisplay sidebar.team.dark_aqua gr_cyansb
scoreboard objectives setdisplay sidebar.team.light_purple gr_pinksb
scoreboard objectives setdisplay sidebar.team.gold gr_orangesb
scoreboard objectives setdisplay sidebar.team.dark_purple gr_purplesb

scoreboard objectives modify gr_sb numberformat fixed " "
scoreboard objectives modify gr_redsb numberformat fixed " "
scoreboard objectives modify gr_bluesb numberformat fixed " "
scoreboard objectives modify gr_greensb numberformat fixed " "
scoreboard objectives modify gr_yellowsb numberformat fixed " "
scoreboard objectives modify gr_cyansb numberformat fixed " "
scoreboard objectives modify gr_orangesb numberformat fixed " "
scoreboard objectives modify gr_pinksb numberformat fixed " "
scoreboard objectives modify gr_purplesb numberformat fixed " "

scoreboard objectives modify gr_sb displayautoupdate true
scoreboard objectives modify gr_redsb displayautoupdate true
scoreboard objectives modify gr_bluesb displayautoupdate true
scoreboard objectives modify gr_greensb displayautoupdate true
scoreboard objectives modify gr_yellowsb displayautoupdate true
scoreboard objectives modify gr_cyansb displayautoupdate true
scoreboard objectives modify gr_orangesb displayautoupdate true
scoreboard objectives modify gr_pinksb displayautoupdate true
scoreboard objectives modify gr_purplesb displayautoupdate true

# 设计:  第一名
## 游戏?/?
## 剩余时间
## 空
## Rooms Completed
## 第1名（本队）
## 第2名
## 第3名
## 第4名
## 
## 当前房间名

# 设计:  第二名
## 游戏?/?
## 剩余时间
## 空
## Rooms Completed
## 第1名
## 第2名 （本队）
## 第3名
## 第4名
## 
## 当前房间名

# 设计:  第3-7名
## 游戏?/?
## 剩余时间
## 空
## Rooms Completed
## 第1名
## 高1名（本队）
## （本队）
## 低1名
## 
## 当前房间名

# 设计:  第8名

## 游戏?/?
## 剩余时间
## 空
## Rooms Completed
## 第1名
## 第6名
## 第7名
## （本队）
## 
## 当前房间名

# 创建8个队伍，作为占位符，默认顺序是红蓝绿黄青粉橙紫
team add gr_pos1 
team add gr_pos2
team add gr_pos3
team add gr_pos4
team add gr_pos5
team add gr_pos6
team add gr_pos7
team add gr_pos8

team modify gr_pos1 prefix ["  1. ","§c红队"]
team modify gr_pos2 prefix ["  2. ","§1蓝队"]
team modify gr_pos3 prefix ["  3. ","§2绿队"]
team modify gr_pos4 prefix ["  4. ","§e黄队"]
team modify gr_pos5 prefix ["  5. ","§3青队"]
team modify gr_pos6 prefix ["  6. ","§d粉队"]
team modify gr_pos7 prefix ["  7. ","§6橙队"]
team modify gr_pos8 prefix ["  8. ","§5紫队"]

team modify gr_pos1 suffix ["            ","0"]
team modify gr_pos2 suffix ["            ","0"]
team modify gr_pos3 suffix ["            ","0"]
team modify gr_pos4 suffix ["            ","0"]
team modify gr_pos5 suffix ["            ","0"]
team modify gr_pos6 suffix ["            ","0"]
team modify gr_pos7 suffix ["            ","0"]
team modify gr_pos8 suffix ["            ","0"]

team join gr_pos1 §1§
team join gr_pos2 §2§
team join gr_pos3 §3§
team join gr_pos4 §4§
team join gr_pos5 §5§
team join gr_pos6 §6§
team join gr_pos7 §7§
team join gr_pos8 §8§

# team modify gr_pos1 color red
# team modify gr_pos2 color blue
# team modify gr_pos3 color green
# team modify gr_pos4 color yellow
# team modify gr_pos5 color dark_aqua
# team modify gr_pos6 color light_purple
# team modify gr_pos7 color gold
# team modify gr_pos8 color dark_purple

# 使用计分板
scoreboard players set §0 gr_sb 14
scoreboard players set : gr_sb 13
scoreboard players set §1 gr_sb 12
scoreboard players set §2 gr_sb 11

scoreboard players set §0 gr_redsb 14
scoreboard players set : gr_redsb 13
scoreboard players set §1 gr_redsb 12
scoreboard players set §2 gr_redsb 11

scoreboard players set §0 gr_bluesb 14
scoreboard players set : gr_bluesb 13
scoreboard players set §1 gr_bluesb 12
scoreboard players set §2 gr_bluesb 11

scoreboard players set §0 gr_greensb 14
scoreboard players set : gr_greensb 13
scoreboard players set §1 gr_greensb 12
scoreboard players set §2 gr_greensb 11

scoreboard players set §0 gr_yellowsb 14
scoreboard players set : gr_yellowsb 13
scoreboard players set §1 gr_yellowsb 12
scoreboard players set §2 gr_yellowsb 11

scoreboard players set §0 gr_cyansb 14
scoreboard players set : gr_cyansb 13
scoreboard players set §1 gr_cyansb 12
scoreboard players set §2 gr_cyansb 11

scoreboard players set §0 gr_pinksb 14
scoreboard players set : gr_pinksb 13
scoreboard players set §1 gr_pinksb 12
scoreboard players set §2 gr_pinksb 11

scoreboard players set §0 gr_orangesb 14
scoreboard players set : gr_orangesb 13
scoreboard players set §1 gr_orangesb 12
scoreboard players set §2 gr_orangesb 11

scoreboard players set §0 gr_purplesb 14
scoreboard players set : gr_purplesb 13
scoreboard players set §1 gr_purplesb 12
scoreboard players set §2 gr_purplesb 11

## Statics

### Game Count (Line 1)
team modify placeholder_0 suffix "§8Casual"
team modify placeholder_0 prefix ""
execute if score eventmode tourney_stats matches 1 run function gr:scoreboard/macro_gameline with storage master:event_status
### Time (Line 2)
function master:timer/starting/gr
### Empty (Line 3)
team modify placeholder_1 suffix ""
team modify placeholder_1 prefix ""
### Rooms Completed (Line 4)
team modify placeholder_2 suffix ["",{"text": "完成房间数:","color": "aqua","bold":true}]
team modify placeholder_2 prefix ""
## 更新排名
function gr:scoreboard/update