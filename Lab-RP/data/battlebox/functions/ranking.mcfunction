
# execute if score gameflag bb_game matches 1 run schedule function battlebox:ranking 2s
# # 设置一定梯度，来防止重分时错误的显示

# scoreboard players set red bb_teamscore 0
# scoreboard players set blue bb_teamscore 0
# scoreboard players set green bb_teamscore 0
# scoreboard players set yellow bb_teamscore 0

# scoreboard players set redrank bb_cache 0
# scoreboard players set bluerank bb_cache 0
# scoreboard players set greenrank bb_cache 0
# scoreboard players set yellowrank bb_cache 0

# execute as @a[team=red] run scoreboard players operation red bb_teamscore += @s bb_indvscore
# execute as @a[team=blue] run scoreboard players operation blue bb_teamscore += @s bb_indvscore
# execute as @a[team=green] run scoreboard players operation green bb_teamscore += @s bb_indvscore
# execute as @a[team=yellow] run scoreboard players operation yellow bb_teamscore += @s bb_indvscore

# scoreboard players operation redcache bb_cache = red bb_teamscore
# scoreboard players operation bluecache bb_cache = blue bb_teamscore
# scoreboard players operation greencache bb_cache = green bb_teamscore
# scoreboard players operation yellowcache bb_cache = yellow bb_teamscore

# scoreboard players remove red bb_teamscore 0
# scoreboard players remove blue bb_teamscore 1
# scoreboard players remove green bb_teamscore 2
# scoreboard players remove yellow bb_teamscore 3
# #region Ranks Teams
# execute if score red bb_teamscore >= blue bb_teamscore if score red bb_teamscore >= green bb_teamscore if score red bb_teamscore >= yellow bb_teamscore run scoreboard players set redrank bb_cache 1
# execute if score blue bb_teamscore >= red bb_teamscore if score blue bb_teamscore >= green bb_teamscore if score blue bb_teamscore >= yellow bb_teamscore run scoreboard players set bluerank bb_cache 1
# execute if score green bb_teamscore >= red bb_teamscore if score green bb_teamscore >= blue bb_teamscore if score green bb_teamscore >= yellow bb_teamscore run scoreboard players set greenrank bb_cache 1
# execute if score yellow bb_teamscore >= blue bb_teamscore if score yellow bb_teamscore >= green bb_teamscore if score yellow bb_teamscore >= red bb_teamscore run scoreboard players set yellowrank bb_cache 1

# execute if score redrank bb_cache matches 1 run scoreboard players set red bb_teamscore -10
# execute if score bluerank bb_cache matches 1 run scoreboard players set blue bb_teamscore -11
# execute if score greenrank bb_cache matches 1 run scoreboard players set green bb_teamscore -12
# execute if score yellowrank bb_cache matches 1 run scoreboard players set yellow bb_teamscore -13

# execute if score red bb_teamscore >= blue bb_teamscore if score red bb_teamscore >= green bb_teamscore if score red bb_teamscore >= yellow bb_teamscore run scoreboard players set redrank bb_cache 2
# execute if score blue bb_teamscore >= red bb_teamscore if score blue bb_teamscore >= green bb_teamscore if score blue bb_teamscore >= yellow bb_teamscore run scoreboard players set bluerank bb_cache 2
# execute if score green bb_teamscore >= red bb_teamscore if score green bb_teamscore >= blue bb_teamscore if score green bb_teamscore >= yellow bb_teamscore run scoreboard players set greenrank bb_cache 2
# execute if score yellow bb_teamscore >= blue bb_teamscore if score yellow bb_teamscore >= green bb_teamscore if score yellow bb_teamscore >= red bb_teamscore run scoreboard players set yellowrank bb_cache 2

# execute if score redrank bb_cache matches 2 run scoreboard players set red bb_teamscore -10
# execute if score bluerank bb_cache matches 2 run scoreboard players set blue bb_teamscore -11
# execute if score greenrank bb_cache matches 2 run scoreboard players set green bb_teamscore -12
# execute if score yellowrank bb_cache matches 2 run scoreboard players set yellow bb_teamscore -13

# execute if score red bb_teamscore >= blue bb_teamscore if score red bb_teamscore >= green bb_teamscore if score red bb_teamscore >= yellow bb_teamscore run scoreboard players set redrank bb_cache 3
# execute if score blue bb_teamscore >= red bb_teamscore if score blue bb_teamscore >= green bb_teamscore if score blue bb_teamscore >= yellow bb_teamscore run scoreboard players set bluerank bb_cache 3
# execute if score green bb_teamscore >= red bb_teamscore if score green bb_teamscore >= blue bb_teamscore if score green bb_teamscore >= yellow bb_teamscore run scoreboard players set greenrank bb_cache 3
# execute if score yellow bb_teamscore >= blue bb_teamscore if score yellow bb_teamscore >= green bb_teamscore if score yellow bb_teamscore >= red bb_teamscore run scoreboard players set yellowrank bb_cache 3

# execute if score redrank bb_cache matches 3 run scoreboard players set red bb_teamscore -10
# execute if score bluerank bb_cache matches 3 run scoreboard players set blue bb_teamscore -11
# execute if score greenrank bb_cache matches 3 run scoreboard players set green bb_teamscore -12
# execute if score yellowrank bb_cache matches 3 run scoreboard players set yellow bb_teamscore -13

# execute if score red bb_teamscore >= blue bb_teamscore if score red bb_teamscore >= green bb_teamscore if score red bb_teamscore >= yellow bb_teamscore run scoreboard players set redrank bb_cache 4
# execute if score blue bb_teamscore >= red bb_teamscore if score blue bb_teamscore >= green bb_teamscore if score blue bb_teamscore >= yellow bb_teamscore run scoreboard players set bluerank bb_cache 4
# execute if score green bb_teamscore >= red bb_teamscore if score green bb_teamscore >= blue bb_teamscore if score green bb_teamscore >= yellow bb_teamscore run scoreboard players set greenrank bb_cache 4
# execute if score yellow bb_teamscore >= blue bb_teamscore if score yellow bb_teamscore >= green bb_teamscore if score yellow bb_teamscore >= red bb_teamscore run scoreboard players set yellowrank bb_cache 4

# execute if score redrank bb_cache matches 4 run scoreboard players set red bb_teamscore -10
# execute if score bluerank bb_cache matches 4 run scoreboard players set blue bb_teamscore -11
# execute if score greenrank bb_cache matches 4 run scoreboard players set green bb_teamscore -12
# execute if score yellowrank bb_cache matches 4 run scoreboard players set yellow bb_teamscore -13
# #endregion

# #region Adjusts scoreboard

# #region changes order

# #region red
# execute if score redrank bb_cache matches 1 run scoreboard players set §4 bb_sb 4
# execute if score redrank bb_cache matches 1 run scoreboard players set §4 bb_sb_red 5
# execute if score redrank bb_cache matches 1 run scoreboard players set §4 bb_sb_blue 5
# execute if score redrank bb_cache matches 1 run scoreboard players set §4 bb_sb_green 5
# execute if score redrank bb_cache matches 1 run scoreboard players set §4 bb_sb_yellow 5
# execute if score redrank bb_cache matches 1 run team modify placeholder_4 prefix [{"text": "  1. ","color": "white"},{"text": "红队","color": "red"},{"text": "      "}]

# execute if score redrank bb_cache matches 2 run scoreboard players set §4 bb_sb 3
# execute if score redrank bb_cache matches 2 run scoreboard players set §4 bb_sb_red 4
# execute if score redrank bb_cache matches 2 run scoreboard players set §4 bb_sb_blue 4
# execute if score redrank bb_cache matches 2 run scoreboard players set §4 bb_sb_green 4
# execute if score redrank bb_cache matches 2 run scoreboard players set §4 bb_sb_yellow 4
# execute if score redrank bb_cache matches 2 run team modify placeholder_4 prefix [{"text": "  2. ","color": "white"},{"text": "红队","color": "red"},{"text": "      "}]

# execute if score redrank bb_cache matches 3 run scoreboard players set §4 bb_sb 2
# execute if score redrank bb_cache matches 3 run scoreboard players set §4 bb_sb_red 3
# execute if score redrank bb_cache matches 3 run scoreboard players set §4 bb_sb_blue 3
# execute if score redrank bb_cache matches 3 run scoreboard players set §4 bb_sb_green 3
# execute if score redrank bb_cache matches 3 run scoreboard players set §4 bb_sb_yellow 3
# execute if score redrank bb_cache matches 3 run team modify placeholder_4 prefix [{"text": "  3. ","color": "white"},{"text": "红队","color": "red"},{"text": "      "}]

# execute if score redrank bb_cache matches 4 run scoreboard players set §4 bb_sb 1
# execute if score redrank bb_cache matches 4 run scoreboard players set §4 bb_sb_red 2
# execute if score redrank bb_cache matches 4 run scoreboard players set §4 bb_sb_blue 2
# execute if score redrank bb_cache matches 4 run scoreboard players set §4 bb_sb_green 2
# execute if score redrank bb_cache matches 4 run scoreboard players set §4 bb_sb_yellow 2
# execute if score redrank bb_cache matches 4 run team modify placeholder_4 prefix [{"text": "  4. ","color": "white"},{"text": "红队","color": "red"},{"text": "      "}]
# #endregion

# #region blue
# execute if score bluerank bb_cache matches 1 run scoreboard players set §3 bb_sb 4
# execute if score bluerank bb_cache matches 1 run scoreboard players set §3 bb_sb_red 5
# execute if score bluerank bb_cache matches 1 run scoreboard players set §3 bb_sb_blue 5
# execute if score bluerank bb_cache matches 1 run scoreboard players set §3 bb_sb_green 5
# execute if score bluerank bb_cache matches 1 run scoreboard players set §3 bb_sb_yellow 5
# execute if score bluerank bb_cache matches 1 run team modify placeholder_3 prefix [{"text": "  1. ","color": "white"},{"text": "蓝队","color": "blue"},{"text": "      "}]

# execute if score bluerank bb_cache matches 2 run scoreboard players set §3 bb_sb 3
# execute if score bluerank bb_cache matches 2 run scoreboard players set §3 bb_sb_red 4
# execute if score bluerank bb_cache matches 2 run scoreboard players set §3 bb_sb_blue 4
# execute if score bluerank bb_cache matches 2 run scoreboard players set §3 bb_sb_green 4
# execute if score bluerank bb_cache matches 2 run scoreboard players set §3 bb_sb_yellow 4
# execute if score bluerank bb_cache matches 2 run team modify placeholder_3 prefix [{"text": "  2. ","color": "white"},{"text": "蓝队","color": "blue"},{"text": "      "}]

# execute if score bluerank bb_cache matches 3 run scoreboard players set §3 bb_sb 2
# execute if score bluerank bb_cache matches 3 run scoreboard players set §3 bb_sb_red 3
# execute if score bluerank bb_cache matches 3 run scoreboard players set §3 bb_sb_blue 3
# execute if score bluerank bb_cache matches 3 run scoreboard players set §3 bb_sb_green 3
# execute if score bluerank bb_cache matches 3 run scoreboard players set §3 bb_sb_yellow 3
# execute if score bluerank bb_cache matches 3 run team modify placeholder_3 prefix [{"text": "  3. ","color": "white"},{"text": "蓝队","color": "blue"},{"text": "      "}]

# execute if score bluerank bb_cache matches 4 run scoreboard players set §3 bb_sb 1
# execute if score bluerank bb_cache matches 4 run scoreboard players set §3 bb_sb_red 2
# execute if score bluerank bb_cache matches 4 run scoreboard players set §3 bb_sb_blue 2
# execute if score bluerank bb_cache matches 4 run scoreboard players set §3 bb_sb_green 2
# execute if score bluerank bb_cache matches 4 run scoreboard players set §3 bb_sb_yellow 2
# execute if score bluerank bb_cache matches 4 run team modify placeholder_3 prefix [{"text": "  4. ","color": "white"},{"text": "蓝队","color": "blue"},{"text": "      "}]
# #endregion

# #region green
# execute if score greenrank bb_cache matches 1 run scoreboard players set §2 bb_sb 4
# execute if score greenrank bb_cache matches 1 run scoreboard players set §2 bb_sb_red 5
# execute if score greenrank bb_cache matches 1 run scoreboard players set §2 bb_sb_blue 5
# execute if score greenrank bb_cache matches 1 run scoreboard players set §2 bb_sb_green 5
# execute if score greenrank bb_cache matches 1 run scoreboard players set §2 bb_sb_yellow 5
# execute if score greenrank bb_cache matches 1 run team modify placeholder_2 prefix [{"text": "  1. ","color": "white"},{"text": "绿队","color": "green"},{"text": "      "}]

# execute if score greenrank bb_cache matches 2 run scoreboard players set §2 bb_sb 3
# execute if score greenrank bb_cache matches 2 run scoreboard players set §2 bb_sb_red 4
# execute if score greenrank bb_cache matches 2 run scoreboard players set §2 bb_sb_blue 4
# execute if score greenrank bb_cache matches 2 run scoreboard players set §2 bb_sb_green 4
# execute if score greenrank bb_cache matches 2 run scoreboard players set §2 bb_sb_yellow 4
# execute if score greenrank bb_cache matches 2 run team modify placeholder_2 prefix [{"text": "  2. ","color": "white"},{"text": "绿队","color": "green"},{"text": "      "}]

# execute if score greenrank bb_cache matches 3 run scoreboard players set §2 bb_sb 2
# execute if score greenrank bb_cache matches 3 run scoreboard players set §2 bb_sb_red 3
# execute if score greenrank bb_cache matches 3 run scoreboard players set §2 bb_sb_blue 3
# execute if score greenrank bb_cache matches 3 run scoreboard players set §2 bb_sb_green 3
# execute if score greenrank bb_cache matches 3 run scoreboard players set §2 bb_sb_yellow 3
# execute if score greenrank bb_cache matches 3 run team modify placeholder_2 prefix [{"text": "  3. ","color": "white"},{"text": "绿队","color": "green"},{"text": "      "}]

# execute if score greenrank bb_cache matches 4 run scoreboard players set §2 bb_sb 1
# execute if score greenrank bb_cache matches 4 run scoreboard players set §2 bb_sb_red 2
# execute if score greenrank bb_cache matches 4 run scoreboard players set §2 bb_sb_blue 2
# execute if score greenrank bb_cache matches 4 run scoreboard players set §2 bb_sb_green 2
# execute if score greenrank bb_cache matches 4 run scoreboard players set §2 bb_sb_yellow 2
# execute if score greenrank bb_cache matches 4 run team modify placeholder_2 prefix [{"text": "  4. ","color": "white"},{"text": "绿队","color": "green"},{"text": "      "}]
# #endregion

# #region yellow
# execute if score yellowrank bb_cache matches 1 run scoreboard players set §1 bb_sb 4
# execute if score yellowrank bb_cache matches 1 run scoreboard players set §1 bb_sb_red 5
# execute if score yellowrank bb_cache matches 1 run scoreboard players set §1 bb_sb_blue 5
# execute if score yellowrank bb_cache matches 1 run scoreboard players set §1 bb_sb_green 5
# execute if score yellowrank bb_cache matches 1 run scoreboard players set §1 bb_sb_yellow 5
# execute if score yellowrank bb_cache matches 1 run team modify placeholder_1 prefix [{"text": "  1. ","color": "white"},{"text": "黄队","color": "yellow"},{"text": "      "}]

# execute if score yellowrank bb_cache matches 2 run scoreboard players set §1 bb_sb 3
# execute if score yellowrank bb_cache matches 2 run scoreboard players set §1 bb_sb_red 4
# execute if score yellowrank bb_cache matches 2 run scoreboard players set §1 bb_sb_blue 4
# execute if score yellowrank bb_cache matches 2 run scoreboard players set §1 bb_sb_green 4
# execute if score yellowrank bb_cache matches 2 run scoreboard players set §1 bb_sb_yellow 4
# execute if score yellowrank bb_cache matches 2 run team modify placeholder_1 prefix [{"text": "  2. ","color": "white"},{"text": "黄队","color": "yellow"},{"text": "      "}]

# execute if score yellowrank bb_cache matches 3 run scoreboard players set §1 bb_sb 2
# execute if score yellowrank bb_cache matches 3 run scoreboard players set §1 bb_sb_red 3
# execute if score yellowrank bb_cache matches 3 run scoreboard players set §1 bb_sb_blue 3
# execute if score yellowrank bb_cache matches 3 run scoreboard players set §1 bb_sb_green 3
# execute if score yellowrank bb_cache matches 3 run scoreboard players set §1 bb_sb_yellow 3
# execute if score yellowrank bb_cache matches 3 run team modify placeholder_1 prefix [{"text": "  3. ","color": "white"},{"text": "黄队","color": "yellow"},{"text": "      "}]

# execute if score yellowrank bb_cache matches 4 run scoreboard players set §1 bb_sb 1
# execute if score yellowrank bb_cache matches 4 run scoreboard players set §1 bb_sb_red 2
# execute if score yellowrank bb_cache matches 4 run scoreboard players set §1 bb_sb_blue 2
# execute if score yellowrank bb_cache matches 4 run scoreboard players set §1 bb_sb_green 2
# execute if score yellowrank bb_cache matches 4 run scoreboard players set §1 bb_sb_yellow 2
# execute if score yellowrank bb_cache matches 4 run team modify placeholder_1 prefix [{"text": "  4. ","color": "white"},{"text": "黄队","color": "yellow"},{"text": "      "}]
# #endregion
# #endregion

# #region changes value

# #region red
# execute if score redcache bb_cache matches 0 run team modify placeholder_4 suffix 0
# execute if score redcache bb_cache matches 40 run team modify placeholder_4 suffix 40
# execute if score redcache bb_cache matches 80 run team modify placeholder_4 suffix 80
# execute if score redcache bb_cache matches 120 run team modify placeholder_4 suffix 120
# execute if score redcache bb_cache matches 160 run team modify placeholder_4 suffix 160
# execute if score redcache bb_cache matches 200 run team modify placeholder_4 suffix 200
# execute if score redcache bb_cache matches 240 run team modify placeholder_4 suffix 240
# execute if score redcache bb_cache matches 280 run team modify placeholder_4 suffix 280
# execute if score redcache bb_cache matches 320 run team modify placeholder_4 suffix 320
# execute if score redcache bb_cache matches 360 run team modify placeholder_4 suffix 360
# execute if score redcache bb_cache matches 400 run team modify placeholder_4 suffix 400
# execute if score redcache bb_cache matches 440 run team modify placeholder_4 suffix 440
# execute if score redcache bb_cache matches 480 run team modify placeholder_4 suffix 480
# execute if score redcache bb_cache matches 520 run team modify placeholder_4 suffix 520
# execute if score redcache bb_cache matches 560 run team modify placeholder_4 suffix 560
# execute if score redcache bb_cache matches 600 run team modify placeholder_4 suffix 600
# execute if score redcache bb_cache matches 640 run team modify placeholder_4 suffix 640
# execute if score redcache bb_cache matches 680 run team modify placeholder_4 suffix 680
# execute if score redcache bb_cache matches 720 run team modify placeholder_4 suffix 720
# execute if score redcache bb_cache matches 760 run team modify placeholder_4 suffix 760
# execute if score redcache bb_cache matches 800 run team modify placeholder_4 suffix 800
# execute if score redcache bb_cache matches 840 run team modify placeholder_4 suffix 840
# execute if score redcache bb_cache matches 880 run team modify placeholder_4 suffix 880
# execute if score redcache bb_cache matches 920 run team modify placeholder_4 suffix 920
# execute if score redcache bb_cache matches 960 run team modify placeholder_4 suffix 960
# execute if score redcache bb_cache matches 1000 run team modify placeholder_4 suffix 1000
# execute if score redcache bb_cache matches 1040 run team modify placeholder_4 suffix 1040
# execute if score redcache bb_cache matches 1080 run team modify placeholder_4 suffix 1080
# execute if score redcache bb_cache matches 1120 run team modify placeholder_4 suffix 1120
# execute if score redcache bb_cache matches 1160 run team modify placeholder_4 suffix 1160
# execute if score redcache bb_cache matches 1200 run team modify placeholder_4 suffix 1200
# execute if score redcache bb_cache matches 1240 run team modify placeholder_4 suffix 1240
# execute if score redcache bb_cache matches 1280 run team modify placeholder_4 suffix 1280
# execute if score redcache bb_cache matches 1320 run team modify placeholder_4 suffix 1320
# execute if score redcache bb_cache matches 1360 run team modify placeholder_4 suffix 1360
# execute if score redcache bb_cache matches 1400 run team modify placeholder_4 suffix 1400
# execute if score redcache bb_cache matches 1440 run team modify placeholder_4 suffix 1440
# execute if score redcache bb_cache matches 1480 run team modify placeholder_4 suffix 1480
# execute if score redcache bb_cache matches 1520 run team modify placeholder_4 suffix 1520
# execute if score redcache bb_cache matches 1560 run team modify placeholder_4 suffix 1560
# execute if score redcache bb_cache matches 1600 run team modify placeholder_4 suffix 1600
# execute if score redcache bb_cache matches 1640 run team modify placeholder_4 suffix 1640
# execute if score redcache bb_cache matches 1680 run team modify placeholder_4 suffix 1680
# execute if score redcache bb_cache matches 1720 run team modify placeholder_4 suffix 1720
# execute if score redcache bb_cache matches 1760 run team modify placeholder_4 suffix 1760
# execute if score redcache bb_cache matches 1800 run team modify placeholder_4 suffix 1800
# execute if score redcache bb_cache matches 1840 run team modify placeholder_4 suffix 1840
# execute if score redcache bb_cache matches 1880 run team modify placeholder_4 suffix 1880
# execute if score redcache bb_cache matches 1920 run team modify placeholder_4 suffix 1920
# execute if score redcache bb_cache matches 1960 run team modify placeholder_4 suffix 1960
# execute if score redcache bb_cache matches 2000 run team modify placeholder_4 suffix 2000
# execute if score redcache bb_cache matches 2040 run team modify placeholder_4 suffix 2040
# execute if score redcache bb_cache matches 2080 run team modify placeholder_4 suffix 2080
# execute if score redcache bb_cache matches 2120 run team modify placeholder_4 suffix 2120
# execute if score redcache bb_cache matches 2160 run team modify placeholder_4 suffix 2160
# execute if score redcache bb_cache matches 2200 run team modify placeholder_4 suffix 2200
# execute if score redcache bb_cache matches 2240 run team modify placeholder_4 suffix 2240
# execute if score redcache bb_cache matches 2280 run team modify placeholder_4 suffix 2280
# execute if score redcache bb_cache matches 2320 run team modify placeholder_4 suffix 2320
# execute if score redcache bb_cache matches 2360 run team modify placeholder_4 suffix 2360
# execute if score redcache bb_cache matches 2400 run team modify placeholder_4 suffix 2400
# execute if score redcache bb_cache matches 2440 run team modify placeholder_4 suffix 2440
# execute if score redcache bb_cache matches 2480 run team modify placeholder_4 suffix 2480
# execute if score redcache bb_cache matches 2520 run team modify placeholder_4 suffix 2520
# #endregion

# #region blue
# execute if score bluecache bb_cache matches 0 run team modify placeholder_3 suffix 0
# execute if score bluecache bb_cache matches 40 run team modify placeholder_3 suffix 40
# execute if score bluecache bb_cache matches 80 run team modify placeholder_3 suffix 80
# execute if score bluecache bb_cache matches 120 run team modify placeholder_3 suffix 120
# execute if score bluecache bb_cache matches 160 run team modify placeholder_3 suffix 160
# execute if score bluecache bb_cache matches 200 run team modify placeholder_3 suffix 200
# execute if score bluecache bb_cache matches 240 run team modify placeholder_3 suffix 240
# execute if score bluecache bb_cache matches 280 run team modify placeholder_3 suffix 280
# execute if score bluecache bb_cache matches 320 run team modify placeholder_3 suffix 320
# execute if score bluecache bb_cache matches 360 run team modify placeholder_3 suffix 360
# execute if score bluecache bb_cache matches 400 run team modify placeholder_3 suffix 400
# execute if score bluecache bb_cache matches 440 run team modify placeholder_3 suffix 440
# execute if score bluecache bb_cache matches 480 run team modify placeholder_3 suffix 480
# execute if score bluecache bb_cache matches 520 run team modify placeholder_3 suffix 520
# execute if score bluecache bb_cache matches 560 run team modify placeholder_3 suffix 560
# execute if score bluecache bb_cache matches 600 run team modify placeholder_3 suffix 600
# execute if score bluecache bb_cache matches 640 run team modify placeholder_3 suffix 640
# execute if score bluecache bb_cache matches 680 run team modify placeholder_3 suffix 680
# execute if score bluecache bb_cache matches 720 run team modify placeholder_3 suffix 720
# execute if score bluecache bb_cache matches 760 run team modify placeholder_3 suffix 760
# execute if score bluecache bb_cache matches 800 run team modify placeholder_3 suffix 800
# execute if score bluecache bb_cache matches 840 run team modify placeholder_3 suffix 840
# execute if score bluecache bb_cache matches 880 run team modify placeholder_3 suffix 880
# execute if score bluecache bb_cache matches 920 run team modify placeholder_3 suffix 920
# execute if score bluecache bb_cache matches 960 run team modify placeholder_3 suffix 960
# execute if score bluecache bb_cache matches 1000 run team modify placeholder_3 suffix 1000
# execute if score bluecache bb_cache matches 1040 run team modify placeholder_3 suffix 1040
# execute if score bluecache bb_cache matches 1080 run team modify placeholder_3 suffix 1080
# execute if score bluecache bb_cache matches 1120 run team modify placeholder_3 suffix 1120
# execute if score bluecache bb_cache matches 1160 run team modify placeholder_3 suffix 1160
# execute if score bluecache bb_cache matches 1200 run team modify placeholder_3 suffix 1200
# execute if score bluecache bb_cache matches 1240 run team modify placeholder_3 suffix 1240
# execute if score bluecache bb_cache matches 1280 run team modify placeholder_3 suffix 1280
# execute if score bluecache bb_cache matches 1320 run team modify placeholder_3 suffix 1320
# execute if score bluecache bb_cache matches 1360 run team modify placeholder_3 suffix 1360
# execute if score bluecache bb_cache matches 1400 run team modify placeholder_3 suffix 1400
# execute if score bluecache bb_cache matches 1440 run team modify placeholder_3 suffix 1440
# execute if score bluecache bb_cache matches 1480 run team modify placeholder_3 suffix 1480
# execute if score bluecache bb_cache matches 1520 run team modify placeholder_3 suffix 1520
# execute if score bluecache bb_cache matches 1560 run team modify placeholder_3 suffix 1560
# execute if score bluecache bb_cache matches 1600 run team modify placeholder_3 suffix 1600
# execute if score bluecache bb_cache matches 1640 run team modify placeholder_3 suffix 1640
# execute if score bluecache bb_cache matches 1680 run team modify placeholder_3 suffix 1680
# execute if score bluecache bb_cache matches 1720 run team modify placeholder_3 suffix 1720
# execute if score bluecache bb_cache matches 1760 run team modify placeholder_3 suffix 1760
# execute if score bluecache bb_cache matches 1800 run team modify placeholder_3 suffix 1800
# execute if score bluecache bb_cache matches 1840 run team modify placeholder_3 suffix 1840
# execute if score bluecache bb_cache matches 1880 run team modify placeholder_3 suffix 1880
# execute if score bluecache bb_cache matches 1920 run team modify placeholder_3 suffix 1920
# execute if score bluecache bb_cache matches 1960 run team modify placeholder_3 suffix 1960
# execute if score bluecache bb_cache matches 2000 run team modify placeholder_3 suffix 2000
# execute if score bluecache bb_cache matches 2040 run team modify placeholder_3 suffix 2040
# execute if score bluecache bb_cache matches 2080 run team modify placeholder_3 suffix 2080
# execute if score bluecache bb_cache matches 2120 run team modify placeholder_3 suffix 2120
# execute if score bluecache bb_cache matches 2160 run team modify placeholder_3 suffix 2160
# execute if score bluecache bb_cache matches 2200 run team modify placeholder_3 suffix 2200
# execute if score bluecache bb_cache matches 2240 run team modify placeholder_3 suffix 2240
# execute if score bluecache bb_cache matches 2280 run team modify placeholder_3 suffix 2280
# execute if score bluecache bb_cache matches 2320 run team modify placeholder_3 suffix 2320
# execute if score bluecache bb_cache matches 2360 run team modify placeholder_3 suffix 2360
# execute if score bluecache bb_cache matches 2400 run team modify placeholder_3 suffix 2400
# execute if score bluecache bb_cache matches 2440 run team modify placeholder_3 suffix 2440
# execute if score bluecache bb_cache matches 2480 run team modify placeholder_3 suffix 2480
# execute if score bluecache bb_cache matches 2520 run team modify placeholder_3 suffix 2520
# #endregion

# #region green
# execute if score greencache bb_cache matches 0 run team modify placeholder_2 suffix 0
# execute if score greencache bb_cache matches 40 run team modify placeholder_2 suffix 40
# execute if score greencache bb_cache matches 80 run team modify placeholder_2 suffix 80
# execute if score greencache bb_cache matches 120 run team modify placeholder_2 suffix 120
# execute if score greencache bb_cache matches 160 run team modify placeholder_2 suffix 160
# execute if score greencache bb_cache matches 200 run team modify placeholder_2 suffix 200
# execute if score greencache bb_cache matches 240 run team modify placeholder_2 suffix 240
# execute if score greencache bb_cache matches 280 run team modify placeholder_2 suffix 280
# execute if score greencache bb_cache matches 320 run team modify placeholder_2 suffix 320
# execute if score greencache bb_cache matches 360 run team modify placeholder_2 suffix 360
# execute if score greencache bb_cache matches 400 run team modify placeholder_2 suffix 400
# execute if score greencache bb_cache matches 440 run team modify placeholder_2 suffix 440
# execute if score greencache bb_cache matches 480 run team modify placeholder_2 suffix 480
# execute if score greencache bb_cache matches 520 run team modify placeholder_2 suffix 520
# execute if score greencache bb_cache matches 560 run team modify placeholder_2 suffix 560
# execute if score greencache bb_cache matches 600 run team modify placeholder_2 suffix 600
# execute if score greencache bb_cache matches 640 run team modify placeholder_2 suffix 640
# execute if score greencache bb_cache matches 680 run team modify placeholder_2 suffix 680
# execute if score greencache bb_cache matches 720 run team modify placeholder_2 suffix 720
# execute if score greencache bb_cache matches 760 run team modify placeholder_2 suffix 760
# execute if score greencache bb_cache matches 800 run team modify placeholder_2 suffix 800
# execute if score greencache bb_cache matches 840 run team modify placeholder_2 suffix 840
# execute if score greencache bb_cache matches 880 run team modify placeholder_2 suffix 880
# execute if score greencache bb_cache matches 920 run team modify placeholder_2 suffix 920
# execute if score greencache bb_cache matches 960 run team modify placeholder_2 suffix 960
# execute if score greencache bb_cache matches 1000 run team modify placeholder_2 suffix 1000
# execute if score greencache bb_cache matches 1040 run team modify placeholder_2 suffix 1040
# execute if score greencache bb_cache matches 1080 run team modify placeholder_2 suffix 1080
# execute if score greencache bb_cache matches 1120 run team modify placeholder_2 suffix 1120
# execute if score greencache bb_cache matches 1160 run team modify placeholder_2 suffix 1160
# execute if score greencache bb_cache matches 1200 run team modify placeholder_2 suffix 1200
# execute if score greencache bb_cache matches 1240 run team modify placeholder_2 suffix 1240
# execute if score greencache bb_cache matches 1280 run team modify placeholder_2 suffix 1280
# execute if score greencache bb_cache matches 1320 run team modify placeholder_2 suffix 1320
# execute if score greencache bb_cache matches 1360 run team modify placeholder_2 suffix 1360
# execute if score greencache bb_cache matches 1400 run team modify placeholder_2 suffix 1400
# execute if score greencache bb_cache matches 1440 run team modify placeholder_2 suffix 1440
# execute if score greencache bb_cache matches 1480 run team modify placeholder_2 suffix 1480
# execute if score greencache bb_cache matches 1520 run team modify placeholder_2 suffix 1520
# execute if score greencache bb_cache matches 1560 run team modify placeholder_2 suffix 1560
# execute if score greencache bb_cache matches 1600 run team modify placeholder_2 suffix 1600
# execute if score greencache bb_cache matches 1640 run team modify placeholder_2 suffix 1640
# execute if score greencache bb_cache matches 1680 run team modify placeholder_2 suffix 1680
# execute if score greencache bb_cache matches 1720 run team modify placeholder_2 suffix 1720
# execute if score greencache bb_cache matches 1760 run team modify placeholder_2 suffix 1760
# execute if score greencache bb_cache matches 1800 run team modify placeholder_2 suffix 1800
# execute if score greencache bb_cache matches 1840 run team modify placeholder_2 suffix 1840
# execute if score greencache bb_cache matches 1880 run team modify placeholder_2 suffix 1880
# execute if score greencache bb_cache matches 1920 run team modify placeholder_2 suffix 1920
# execute if score greencache bb_cache matches 1960 run team modify placeholder_2 suffix 1960
# execute if score greencache bb_cache matches 2000 run team modify placeholder_2 suffix 2000
# execute if score greencache bb_cache matches 2040 run team modify placeholder_2 suffix 2040
# execute if score greencache bb_cache matches 2080 run team modify placeholder_2 suffix 2080
# execute if score greencache bb_cache matches 2120 run team modify placeholder_2 suffix 2120
# execute if score greencache bb_cache matches 2160 run team modify placeholder_2 suffix 2160
# execute if score greencache bb_cache matches 2200 run team modify placeholder_2 suffix 2200
# execute if score greencache bb_cache matches 2240 run team modify placeholder_2 suffix 2240
# execute if score greencache bb_cache matches 2280 run team modify placeholder_2 suffix 2280
# execute if score greencache bb_cache matches 2320 run team modify placeholder_2 suffix 2320
# execute if score greencache bb_cache matches 2360 run team modify placeholder_2 suffix 2360
# execute if score greencache bb_cache matches 2400 run team modify placeholder_2 suffix 2400
# execute if score greencache bb_cache matches 2440 run team modify placeholder_2 suffix 2440
# execute if score greencache bb_cache matches 2480 run team modify placeholder_2 suffix 2480
# execute if score greencache bb_cache matches 2520 run team modify placeholder_2 suffix 2520
# #endregion

# #region yellow
# execute if score yellowcache bb_cache matches 0 run team modify placeholder_1 suffix 0
# execute if score yellowcache bb_cache matches 40 run team modify placeholder_1 suffix 40
# execute if score yellowcache bb_cache matches 80 run team modify placeholder_1 suffix 80
# execute if score yellowcache bb_cache matches 120 run team modify placeholder_1 suffix 120
# execute if score yellowcache bb_cache matches 160 run team modify placeholder_1 suffix 160
# execute if score yellowcache bb_cache matches 200 run team modify placeholder_1 suffix 200
# execute if score yellowcache bb_cache matches 240 run team modify placeholder_1 suffix 240
# execute if score yellowcache bb_cache matches 280 run team modify placeholder_1 suffix 280
# execute if score yellowcache bb_cache matches 320 run team modify placeholder_1 suffix 320
# execute if score yellowcache bb_cache matches 360 run team modify placeholder_1 suffix 360
# execute if score yellowcache bb_cache matches 400 run team modify placeholder_1 suffix 400
# execute if score yellowcache bb_cache matches 440 run team modify placeholder_1 suffix 440
# execute if score yellowcache bb_cache matches 480 run team modify placeholder_1 suffix 480
# execute if score yellowcache bb_cache matches 520 run team modify placeholder_1 suffix 520
# execute if score yellowcache bb_cache matches 560 run team modify placeholder_1 suffix 560
# execute if score yellowcache bb_cache matches 600 run team modify placeholder_1 suffix 600
# execute if score yellowcache bb_cache matches 640 run team modify placeholder_1 suffix 640
# execute if score yellowcache bb_cache matches 680 run team modify placeholder_1 suffix 680
# execute if score yellowcache bb_cache matches 720 run team modify placeholder_1 suffix 720
# execute if score yellowcache bb_cache matches 760 run team modify placeholder_1 suffix 760
# execute if score yellowcache bb_cache matches 800 run team modify placeholder_1 suffix 800
# execute if score yellowcache bb_cache matches 840 run team modify placeholder_1 suffix 840
# execute if score yellowcache bb_cache matches 880 run team modify placeholder_1 suffix 880
# execute if score yellowcache bb_cache matches 920 run team modify placeholder_1 suffix 920
# execute if score yellowcache bb_cache matches 960 run team modify placeholder_1 suffix 960
# execute if score yellowcache bb_cache matches 1000 run team modify placeholder_1 suffix 1000
# execute if score yellowcache bb_cache matches 1040 run team modify placeholder_1 suffix 1040
# execute if score yellowcache bb_cache matches 1080 run team modify placeholder_1 suffix 1080
# execute if score yellowcache bb_cache matches 1120 run team modify placeholder_1 suffix 1120
# execute if score yellowcache bb_cache matches 1160 run team modify placeholder_1 suffix 1160
# execute if score yellowcache bb_cache matches 1200 run team modify placeholder_1 suffix 1200
# execute if score yellowcache bb_cache matches 1240 run team modify placeholder_1 suffix 1240
# execute if score yellowcache bb_cache matches 1280 run team modify placeholder_1 suffix 1280
# execute if score yellowcache bb_cache matches 1320 run team modify placeholder_1 suffix 1320
# execute if score yellowcache bb_cache matches 1360 run team modify placeholder_1 suffix 1360
# execute if score yellowcache bb_cache matches 1400 run team modify placeholder_1 suffix 1400
# execute if score yellowcache bb_cache matches 1440 run team modify placeholder_1 suffix 1440
# execute if score yellowcache bb_cache matches 1480 run team modify placeholder_1 suffix 1480
# execute if score yellowcache bb_cache matches 1520 run team modify placeholder_1 suffix 1520
# execute if score yellowcache bb_cache matches 1560 run team modify placeholder_1 suffix 1560
# execute if score yellowcache bb_cache matches 1600 run team modify placeholder_1 suffix 1600
# execute if score yellowcache bb_cache matches 1640 run team modify placeholder_1 suffix 1640
# execute if score yellowcache bb_cache matches 1680 run team modify placeholder_1 suffix 1680
# execute if score yellowcache bb_cache matches 1720 run team modify placeholder_1 suffix 1720
# execute if score yellowcache bb_cache matches 1760 run team modify placeholder_1 suffix 1760
# execute if score yellowcache bb_cache matches 1800 run team modify placeholder_1 suffix 1800
# execute if score yellowcache bb_cache matches 1840 run team modify placeholder_1 suffix 1840
# execute if score yellowcache bb_cache matches 1880 run team modify placeholder_1 suffix 1880
# execute if score yellowcache bb_cache matches 1920 run team modify placeholder_1 suffix 1920
# execute if score yellowcache bb_cache matches 1960 run team modify placeholder_1 suffix 1960
# execute if score yellowcache bb_cache matches 2000 run team modify placeholder_1 suffix 2000
# execute if score yellowcache bb_cache matches 2040 run team modify placeholder_1 suffix 2040
# execute if score yellowcache bb_cache matches 2080 run team modify placeholder_1 suffix 2080
# execute if score yellowcache bb_cache matches 2120 run team modify placeholder_1 suffix 2120
# execute if score yellowcache bb_cache matches 2160 run team modify placeholder_1 suffix 2160
# execute if score yellowcache bb_cache matches 2200 run team modify placeholder_1 suffix 2200
# execute if score yellowcache bb_cache matches 2240 run team modify placeholder_1 suffix 2240
# execute if score yellowcache bb_cache matches 2280 run team modify placeholder_1 suffix 2280
# execute if score yellowcache bb_cache matches 2320 run team modify placeholder_1 suffix 2320
# execute if score yellowcache bb_cache matches 2360 run team modify placeholder_1 suffix 2360
# execute if score yellowcache bb_cache matches 2400 run team modify placeholder_1 suffix 2400
# execute if score yellowcache bb_cache matches 2440 run team modify placeholder_1 suffix 2440
# execute if score yellowcache bb_cache matches 2480 run team modify placeholder_1 suffix 2480
# execute if score yellowcache bb_cache matches 2520 run team modify placeholder_1 suffix 2520
# #endregion
# #endregion
# #endregion