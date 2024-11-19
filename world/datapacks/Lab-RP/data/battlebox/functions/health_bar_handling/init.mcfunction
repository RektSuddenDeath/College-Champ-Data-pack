
# 需要以下参数：
# own_health
# own_alives
# own_team
# own_color
# enemy_health
# enemy_alives
# enemy_team
# enemy_color

# bb:opponent 里面有各队的对手的raw name，需要获取 color name

# Bossbar显示
bossbar set bb_bossbar_red visible true
bossbar set bb_bossbar_blue visible true
bossbar set bb_bossbar_green visible true
bossbar set bb_bossbar_yellow visible true
bossbar set bb_bossbar_cyan visible true
bossbar set bb_bossbar_pink visible true
bossbar set bb_bossbar_orange visible true
bossbar set bb_bossbar_purple visible true
# 通用词 init
function battlebox:health_bar_handling/macro_init_match_data with storage bb:opponent
# 主功能 init
function utils:health_bar/init
# 循环
function battlebox:health_bar_handling/loop
