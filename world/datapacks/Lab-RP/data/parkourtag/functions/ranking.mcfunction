
# execute if score gameflag pkt_game matches 1 run schedule function parkourtag:ranking 2s
# # 设置一定梯度，来防止重分时错误的显示

# scoreboard players set red pkt_teamscore 0
# scoreboard players set blue pkt_teamscore 0
# scoreboard players set green pkt_teamscore 0
# scoreboard players set yellow pkt_teamscore 0

# scoreboard players set redrank pkt_cache 0
# scoreboard players set bluerank pkt_cache 0
# scoreboard players set greenrank pkt_cache 0
# scoreboard players set yellowrank pkt_cache 0

# execute as @a[team=red] run scoreboard players operation red pkt_teamscore += @s pkt_indvscore
# execute as @a[team=blue] run scoreboard players operation blue pkt_teamscore += @s pkt_indvscore
# execute as @a[team=green] run scoreboard players operation green pkt_teamscore += @s pkt_indvscore
# execute as @a[team=yellow] run scoreboard players operation yellow pkt_teamscore += @s pkt_indvscore

# scoreboard players operation redcache pkt_cache = red pkt_teamscore
# scoreboard players operation bluecache pkt_cache = blue pkt_teamscore
# scoreboard players operation greencache pkt_cache = green pkt_teamscore
# scoreboard players operation yellowcache pkt_cache = yellow pkt_teamscore

# scoreboard players remove red pkt_teamscore 0
# scoreboard players remove blue pkt_teamscore 1
# scoreboard players remove green pkt_teamscore 2
# scoreboard players remove yellow pkt_teamscore 3
# #region Ranks Teams
# execute if score red pkt_teamscore >= blue pkt_teamscore if score red pkt_teamscore >= green pkt_teamscore if score red pkt_teamscore >= yellow pkt_teamscore run scoreboard players set redrank pkt_cache 1
# execute if score blue pkt_teamscore >= red pkt_teamscore if score blue pkt_teamscore >= green pkt_teamscore if score blue pkt_teamscore >= yellow pkt_teamscore run scoreboard players set bluerank pkt_cache 1
# execute if score green pkt_teamscore >= red pkt_teamscore if score green pkt_teamscore >= blue pkt_teamscore if score green pkt_teamscore >= yellow pkt_teamscore run scoreboard players set greenrank pkt_cache 1
# execute if score yellow pkt_teamscore >= blue pkt_teamscore if score yellow pkt_teamscore >= green pkt_teamscore if score yellow pkt_teamscore >= red pkt_teamscore run scoreboard players set yellowrank pkt_cache 1

# execute if score redrank pkt_cache matches 1 run scoreboard players set red pkt_teamscore -10
# execute if score bluerank pkt_cache matches 1 run scoreboard players set blue pkt_teamscore -11
# execute if score greenrank pkt_cache matches 1 run scoreboard players set green pkt_teamscore -12
# execute if score yellowrank pkt_cache matches 1 run scoreboard players set yellow pkt_teamscore -13

# execute if score red pkt_teamscore >= blue pkt_teamscore if score red pkt_teamscore >= green pkt_teamscore if score red pkt_teamscore >= yellow pkt_teamscore run scoreboard players set redrank pkt_cache 2
# execute if score blue pkt_teamscore >= red pkt_teamscore if score blue pkt_teamscore >= green pkt_teamscore if score blue pkt_teamscore >= yellow pkt_teamscore run scoreboard players set bluerank pkt_cache 2
# execute if score green pkt_teamscore >= red pkt_teamscore if score green pkt_teamscore >= blue pkt_teamscore if score green pkt_teamscore >= yellow pkt_teamscore run scoreboard players set greenrank pkt_cache 2
# execute if score yellow pkt_teamscore >= blue pkt_teamscore if score yellow pkt_teamscore >= green pkt_teamscore if score yellow pkt_teamscore >= red pkt_teamscore run scoreboard players set yellowrank pkt_cache 2

# execute if score redrank pkt_cache matches 2 run scoreboard players set red pkt_teamscore -10
# execute if score bluerank pkt_cache matches 2 run scoreboard players set blue pkt_teamscore -11
# execute if score greenrank pkt_cache matches 2 run scoreboard players set green pkt_teamscore -12
# execute if score yellowrank pkt_cache matches 2 run scoreboard players set yellow pkt_teamscore -13

# execute if score red pkt_teamscore >= blue pkt_teamscore if score red pkt_teamscore >= green pkt_teamscore if score red pkt_teamscore >= yellow pkt_teamscore run scoreboard players set redrank pkt_cache 3
# execute if score blue pkt_teamscore >= red pkt_teamscore if score blue pkt_teamscore >= green pkt_teamscore if score blue pkt_teamscore >= yellow pkt_teamscore run scoreboard players set bluerank pkt_cache 3
# execute if score green pkt_teamscore >= red pkt_teamscore if score green pkt_teamscore >= blue pkt_teamscore if score green pkt_teamscore >= yellow pkt_teamscore run scoreboard players set greenrank pkt_cache 3
# execute if score yellow pkt_teamscore >= blue pkt_teamscore if score yellow pkt_teamscore >= green pkt_teamscore if score yellow pkt_teamscore >= red pkt_teamscore run scoreboard players set yellowrank pkt_cache 3

# execute if score redrank pkt_cache matches 3 run scoreboard players set red pkt_teamscore -10
# execute if score bluerank pkt_cache matches 3 run scoreboard players set blue pkt_teamscore -11
# execute if score greenrank pkt_cache matches 3 run scoreboard players set green pkt_teamscore -12
# execute if score yellowrank pkt_cache matches 3 run scoreboard players set yellow pkt_teamscore -13

# execute if score red pkt_teamscore >= blue pkt_teamscore if score red pkt_teamscore >= green pkt_teamscore if score red pkt_teamscore >= yellow pkt_teamscore run scoreboard players set redrank pkt_cache 4
# execute if score blue pkt_teamscore >= red pkt_teamscore if score blue pkt_teamscore >= green pkt_teamscore if score blue pkt_teamscore >= yellow pkt_teamscore run scoreboard players set bluerank pkt_cache 4
# execute if score green pkt_teamscore >= red pkt_teamscore if score green pkt_teamscore >= blue pkt_teamscore if score green pkt_teamscore >= yellow pkt_teamscore run scoreboard players set greenrank pkt_cache 4
# execute if score yellow pkt_teamscore >= blue pkt_teamscore if score yellow pkt_teamscore >= green pkt_teamscore if score yellow pkt_teamscore >= red pkt_teamscore run scoreboard players set yellowrank pkt_cache 4

# execute if score redrank pkt_cache matches 4 run scoreboard players set red pkt_teamscore -10
# execute if score bluerank pkt_cache matches 4 run scoreboard players set blue pkt_teamscore -11
# execute if score greenrank pkt_cache matches 4 run scoreboard players set green pkt_teamscore -12
# execute if score yellowrank pkt_cache matches 4 run scoreboard players set yellow pkt_teamscore -13
# #endregion

# #region Adjusts scoreboard

# #region changes order

# #region red
# execute if score redrank pkt_cache matches 1 run scoreboard players set §4 pkt_sb 4
# execute if score redrank pkt_cache matches 1 run scoreboard players set §4 pkt_sb_red 5
# execute if score redrank pkt_cache matches 1 run scoreboard players set §4 pkt_sb_blue 5
# execute if score redrank pkt_cache matches 1 run scoreboard players set §4 pkt_sb_green 5
# execute if score redrank pkt_cache matches 1 run scoreboard players set §4 pkt_sb_yellow 5
# execute if score redrank pkt_cache matches 1 run team modify placeholder_4 prefix [{"text": "  1. ","color": "white"},{"text": "红队","color": "red"},{"text": "      "}]

# execute if score redrank pkt_cache matches 2 run scoreboard players set §4 pkt_sb 3
# execute if score redrank pkt_cache matches 2 run scoreboard players set §4 pkt_sb_red 4
# execute if score redrank pkt_cache matches 2 run scoreboard players set §4 pkt_sb_blue 4
# execute if score redrank pkt_cache matches 2 run scoreboard players set §4 pkt_sb_green 4
# execute if score redrank pkt_cache matches 2 run scoreboard players set §4 pkt_sb_yellow 4
# execute if score redrank pkt_cache matches 2 run team modify placeholder_4 prefix [{"text": "  2. ","color": "white"},{"text": "红队","color": "red"},{"text": "      "}]

# execute if score redrank pkt_cache matches 3 run scoreboard players set §4 pkt_sb 2
# execute if score redrank pkt_cache matches 3 run scoreboard players set §4 pkt_sb_red 3
# execute if score redrank pkt_cache matches 3 run scoreboard players set §4 pkt_sb_blue 3
# execute if score redrank pkt_cache matches 3 run scoreboard players set §4 pkt_sb_green 3
# execute if score redrank pkt_cache matches 3 run scoreboard players set §4 pkt_sb_yellow 3
# execute if score redrank pkt_cache matches 3 run team modify placeholder_4 prefix [{"text": "  3. ","color": "white"},{"text": "红队","color": "red"},{"text": "      "}]

# execute if score redrank pkt_cache matches 4 run scoreboard players set §4 pkt_sb 1
# execute if score redrank pkt_cache matches 4 run scoreboard players set §4 pkt_sb_red 2
# execute if score redrank pkt_cache matches 4 run scoreboard players set §4 pkt_sb_blue 2
# execute if score redrank pkt_cache matches 4 run scoreboard players set §4 pkt_sb_green 2
# execute if score redrank pkt_cache matches 4 run scoreboard players set §4 pkt_sb_yellow 2
# execute if score redrank pkt_cache matches 4 run team modify placeholder_4 prefix [{"text": "  4. ","color": "white"},{"text": "红队","color": "red"},{"text": "      "}]
# #endregion

# #region blue
# execute if score bluerank pkt_cache matches 1 run scoreboard players set §3 pkt_sb 4
# execute if score bluerank pkt_cache matches 1 run scoreboard players set §3 pkt_sb_red 5
# execute if score bluerank pkt_cache matches 1 run scoreboard players set §3 pkt_sb_blue 5
# execute if score bluerank pkt_cache matches 1 run scoreboard players set §3 pkt_sb_green 5
# execute if score bluerank pkt_cache matches 1 run scoreboard players set §3 pkt_sb_yellow 5
# execute if score bluerank pkt_cache matches 1 run team modify placeholder_3 prefix [{"text": "  1. ","color": "white"},{"text": "蓝队","color": "blue"},{"text": "      "}]

# execute if score bluerank pkt_cache matches 2 run scoreboard players set §3 pkt_sb 3
# execute if score bluerank pkt_cache matches 2 run scoreboard players set §3 pkt_sb_red 4
# execute if score bluerank pkt_cache matches 2 run scoreboard players set §3 pkt_sb_blue 4
# execute if score bluerank pkt_cache matches 2 run scoreboard players set §3 pkt_sb_green 4
# execute if score bluerank pkt_cache matches 2 run scoreboard players set §3 pkt_sb_yellow 4
# execute if score bluerank pkt_cache matches 2 run team modify placeholder_3 prefix [{"text": "  2. ","color": "white"},{"text": "蓝队","color": "blue"},{"text": "      "}]

# execute if score bluerank pkt_cache matches 3 run scoreboard players set §3 pkt_sb 2
# execute if score bluerank pkt_cache matches 3 run scoreboard players set §3 pkt_sb_red 3
# execute if score bluerank pkt_cache matches 3 run scoreboard players set §3 pkt_sb_blue 3
# execute if score bluerank pkt_cache matches 3 run scoreboard players set §3 pkt_sb_green 3
# execute if score bluerank pkt_cache matches 3 run scoreboard players set §3 pkt_sb_yellow 3
# execute if score bluerank pkt_cache matches 3 run team modify placeholder_3 prefix [{"text": "  3. ","color": "white"},{"text": "蓝队","color": "blue"},{"text": "      "}]

# execute if score bluerank pkt_cache matches 4 run scoreboard players set §3 pkt_sb 1
# execute if score bluerank pkt_cache matches 4 run scoreboard players set §3 pkt_sb_red 2
# execute if score bluerank pkt_cache matches 4 run scoreboard players set §3 pkt_sb_blue 2
# execute if score bluerank pkt_cache matches 4 run scoreboard players set §3 pkt_sb_green 2
# execute if score bluerank pkt_cache matches 4 run scoreboard players set §3 pkt_sb_yellow 2
# execute if score bluerank pkt_cache matches 4 run team modify placeholder_3 prefix [{"text": "  4. ","color": "white"},{"text": "蓝队","color": "blue"},{"text": "      "}]
# #endregion

# #region green
# execute if score greenrank pkt_cache matches 1 run scoreboard players set §2 pkt_sb 4
# execute if score greenrank pkt_cache matches 1 run scoreboard players set §2 pkt_sb_red 5
# execute if score greenrank pkt_cache matches 1 run scoreboard players set §2 pkt_sb_blue 5
# execute if score greenrank pkt_cache matches 1 run scoreboard players set §2 pkt_sb_green 5
# execute if score greenrank pkt_cache matches 1 run scoreboard players set §2 pkt_sb_yellow 5
# execute if score greenrank pkt_cache matches 1 run team modify placeholder_2 prefix [{"text": "  1. ","color": "white"},{"text": "绿队","color": "green"},{"text": "      "}]

# execute if score greenrank pkt_cache matches 2 run scoreboard players set §2 pkt_sb 3
# execute if score greenrank pkt_cache matches 2 run scoreboard players set §2 pkt_sb_red 4
# execute if score greenrank pkt_cache matches 2 run scoreboard players set §2 pkt_sb_blue 4
# execute if score greenrank pkt_cache matches 2 run scoreboard players set §2 pkt_sb_green 4
# execute if score greenrank pkt_cache matches 2 run scoreboard players set §2 pkt_sb_yellow 4
# execute if score greenrank pkt_cache matches 2 run team modify placeholder_2 prefix [{"text": "  2. ","color": "white"},{"text": "绿队","color": "green"},{"text": "      "}]

# execute if score greenrank pkt_cache matches 3 run scoreboard players set §2 pkt_sb 2
# execute if score greenrank pkt_cache matches 3 run scoreboard players set §2 pkt_sb_red 3
# execute if score greenrank pkt_cache matches 3 run scoreboard players set §2 pkt_sb_blue 3
# execute if score greenrank pkt_cache matches 3 run scoreboard players set §2 pkt_sb_green 3
# execute if score greenrank pkt_cache matches 3 run scoreboard players set §2 pkt_sb_yellow 3
# execute if score greenrank pkt_cache matches 3 run team modify placeholder_2 prefix [{"text": "  3. ","color": "white"},{"text": "绿队","color": "green"},{"text": "      "}]

# execute if score greenrank pkt_cache matches 4 run scoreboard players set §2 pkt_sb 1
# execute if score greenrank pkt_cache matches 4 run scoreboard players set §2 pkt_sb_red 2
# execute if score greenrank pkt_cache matches 4 run scoreboard players set §2 pkt_sb_blue 2
# execute if score greenrank pkt_cache matches 4 run scoreboard players set §2 pkt_sb_green 2
# execute if score greenrank pkt_cache matches 4 run scoreboard players set §2 pkt_sb_yellow 2
# execute if score greenrank pkt_cache matches 4 run team modify placeholder_2 prefix [{"text": "  4. ","color": "white"},{"text": "绿队","color": "green"},{"text": "      "}]
# #endregion

# #region yellow
# execute if score yellowrank pkt_cache matches 1 run scoreboard players set §1 pkt_sb 4
# execute if score yellowrank pkt_cache matches 1 run scoreboard players set §1 pkt_sb_red 5
# execute if score yellowrank pkt_cache matches 1 run scoreboard players set §1 pkt_sb_blue 5
# execute if score yellowrank pkt_cache matches 1 run scoreboard players set §1 pkt_sb_green 5
# execute if score yellowrank pkt_cache matches 1 run scoreboard players set §1 pkt_sb_yellow 5
# execute if score yellowrank pkt_cache matches 1 run team modify placeholder_1 prefix [{"text": "  1. ","color": "white"},{"text": "黄队","color": "yellow"},{"text": "      "}]

# execute if score yellowrank pkt_cache matches 2 run scoreboard players set §1 pkt_sb 3
# execute if score yellowrank pkt_cache matches 2 run scoreboard players set §1 pkt_sb_red 4
# execute if score yellowrank pkt_cache matches 2 run scoreboard players set §1 pkt_sb_blue 4
# execute if score yellowrank pkt_cache matches 2 run scoreboard players set §1 pkt_sb_green 4
# execute if score yellowrank pkt_cache matches 2 run scoreboard players set §1 pkt_sb_yellow 4
# execute if score yellowrank pkt_cache matches 2 run team modify placeholder_1 prefix [{"text": "  2. ","color": "white"},{"text": "黄队","color": "yellow"},{"text": "      "}]

# execute if score yellowrank pkt_cache matches 3 run scoreboard players set §1 pkt_sb 2
# execute if score yellowrank pkt_cache matches 3 run scoreboard players set §1 pkt_sb_red 3
# execute if score yellowrank pkt_cache matches 3 run scoreboard players set §1 pkt_sb_blue 3
# execute if score yellowrank pkt_cache matches 3 run scoreboard players set §1 pkt_sb_green 3
# execute if score yellowrank pkt_cache matches 3 run scoreboard players set §1 pkt_sb_yellow 3
# execute if score yellowrank pkt_cache matches 3 run team modify placeholder_1 prefix [{"text": "  3. ","color": "white"},{"text": "黄队","color": "yellow"},{"text": "      "}]

# execute if score yellowrank pkt_cache matches 4 run scoreboard players set §1 pkt_sb 1
# execute if score yellowrank pkt_cache matches 4 run scoreboard players set §1 pkt_sb_red 2
# execute if score yellowrank pkt_cache matches 4 run scoreboard players set §1 pkt_sb_blue 2
# execute if score yellowrank pkt_cache matches 4 run scoreboard players set §1 pkt_sb_green 2
# execute if score yellowrank pkt_cache matches 4 run scoreboard players set §1 pkt_sb_yellow 2
# execute if score yellowrank pkt_cache matches 4 run team modify placeholder_1 prefix [{"text": "  4. ","color": "white"},{"text": "黄队","color": "yellow"},{"text": "      "}]
# #endregion
# #endregion

# #region changes value

# #region red
# execute if score redcache pkt_cache matches 0 run team modify placeholder_4 suffix 0
# execute if score redcache pkt_cache matches 8 run team modify placeholder_4 suffix 8
# execute if score redcache pkt_cache matches 16 run team modify placeholder_4 suffix 16
# execute if score redcache pkt_cache matches 24 run team modify placeholder_4 suffix 24
# execute if score redcache pkt_cache matches 32 run team modify placeholder_4 suffix 32
# execute if score redcache pkt_cache matches 40 run team modify placeholder_4 suffix 40
# execute if score redcache pkt_cache matches 48 run team modify placeholder_4 suffix 48
# execute if score redcache pkt_cache matches 56 run team modify placeholder_4 suffix 56
# execute if score redcache pkt_cache matches 64 run team modify placeholder_4 suffix 64
# execute if score redcache pkt_cache matches 72 run team modify placeholder_4 suffix 72
# execute if score redcache pkt_cache matches 80 run team modify placeholder_4 suffix 80
# execute if score redcache pkt_cache matches 88 run team modify placeholder_4 suffix 88
# execute if score redcache pkt_cache matches 96 run team modify placeholder_4 suffix 96
# execute if score redcache pkt_cache matches 104 run team modify placeholder_4 suffix 104
# execute if score redcache pkt_cache matches 112 run team modify placeholder_4 suffix 112
# execute if score redcache pkt_cache matches 120 run team modify placeholder_4 suffix 120
# execute if score redcache pkt_cache matches 128 run team modify placeholder_4 suffix 128
# execute if score redcache pkt_cache matches 136 run team modify placeholder_4 suffix 136
# execute if score redcache pkt_cache matches 144 run team modify placeholder_4 suffix 144
# execute if score redcache pkt_cache matches 152 run team modify placeholder_4 suffix 152
# execute if score redcache pkt_cache matches 160 run team modify placeholder_4 suffix 160
# execute if score redcache pkt_cache matches 168 run team modify placeholder_4 suffix 168
# execute if score redcache pkt_cache matches 176 run team modify placeholder_4 suffix 176
# execute if score redcache pkt_cache matches 184 run team modify placeholder_4 suffix 184
# execute if score redcache pkt_cache matches 192 run team modify placeholder_4 suffix 192
# execute if score redcache pkt_cache matches 200 run team modify placeholder_4 suffix 200
# execute if score redcache pkt_cache matches 208 run team modify placeholder_4 suffix 208
# execute if score redcache pkt_cache matches 216 run team modify placeholder_4 suffix 216
# execute if score redcache pkt_cache matches 224 run team modify placeholder_4 suffix 224
# execute if score redcache pkt_cache matches 232 run team modify placeholder_4 suffix 232
# execute if score redcache pkt_cache matches 240 run team modify placeholder_4 suffix 240
# execute if score redcache pkt_cache matches 248 run team modify placeholder_4 suffix 248
# execute if score redcache pkt_cache matches 256 run team modify placeholder_4 suffix 256
# execute if score redcache pkt_cache matches 264 run team modify placeholder_4 suffix 264
# execute if score redcache pkt_cache matches 272 run team modify placeholder_4 suffix 272
# execute if score redcache pkt_cache matches 280 run team modify placeholder_4 suffix 280
# execute if score redcache pkt_cache matches 288 run team modify placeholder_4 suffix 288
# execute if score redcache pkt_cache matches 296 run team modify placeholder_4 suffix 296
# execute if score redcache pkt_cache matches 304 run team modify placeholder_4 suffix 304
# execute if score redcache pkt_cache matches 312 run team modify placeholder_4 suffix 312
# execute if score redcache pkt_cache matches 320 run team modify placeholder_4 suffix 320
# execute if score redcache pkt_cache matches 328 run team modify placeholder_4 suffix 328
# execute if score redcache pkt_cache matches 336 run team modify placeholder_4 suffix 336
# execute if score redcache pkt_cache matches 344 run team modify placeholder_4 suffix 344
# execute if score redcache pkt_cache matches 352 run team modify placeholder_4 suffix 352
# execute if score redcache pkt_cache matches 360 run team modify placeholder_4 suffix 360
# execute if score redcache pkt_cache matches 368 run team modify placeholder_4 suffix 368
# execute if score redcache pkt_cache matches 376 run team modify placeholder_4 suffix 376
# execute if score redcache pkt_cache matches 384 run team modify placeholder_4 suffix 384
# execute if score redcache pkt_cache matches 392 run team modify placeholder_4 suffix 392
# execute if score redcache pkt_cache matches 400 run team modify placeholder_4 suffix 400
# execute if score redcache pkt_cache matches 408 run team modify placeholder_4 suffix 408
# execute if score redcache pkt_cache matches 416 run team modify placeholder_4 suffix 416
# execute if score redcache pkt_cache matches 424 run team modify placeholder_4 suffix 424
# execute if score redcache pkt_cache matches 432 run team modify placeholder_4 suffix 432
# execute if score redcache pkt_cache matches 440 run team modify placeholder_4 suffix 440
# execute if score redcache pkt_cache matches 448 run team modify placeholder_4 suffix 448
# execute if score redcache pkt_cache matches 456 run team modify placeholder_4 suffix 456
# execute if score redcache pkt_cache matches 464 run team modify placeholder_4 suffix 464
# execute if score redcache pkt_cache matches 472 run team modify placeholder_4 suffix 472
# execute if score redcache pkt_cache matches 480 run team modify placeholder_4 suffix 480
# execute if score redcache pkt_cache matches 488 run team modify placeholder_4 suffix 488
# execute if score redcache pkt_cache matches 496 run team modify placeholder_4 suffix 496
# execute if score redcache pkt_cache matches 504 run team modify placeholder_4 suffix 504
# execute if score redcache pkt_cache matches 512 run team modify placeholder_4 suffix 512
# execute if score redcache pkt_cache matches 520 run team modify placeholder_4 suffix 520
# execute if score redcache pkt_cache matches 528 run team modify placeholder_4 suffix 528
# execute if score redcache pkt_cache matches 536 run team modify placeholder_4 suffix 536
# execute if score redcache pkt_cache matches 544 run team modify placeholder_4 suffix 544
# execute if score redcache pkt_cache matches 552 run team modify placeholder_4 suffix 552
# execute if score redcache pkt_cache matches 560 run team modify placeholder_4 suffix 560
# execute if score redcache pkt_cache matches 568 run team modify placeholder_4 suffix 568
# execute if score redcache pkt_cache matches 576 run team modify placeholder_4 suffix 576
# execute if score redcache pkt_cache matches 584 run team modify placeholder_4 suffix 584
# execute if score redcache pkt_cache matches 592 run team modify placeholder_4 suffix 592
# execute if score redcache pkt_cache matches 600 run team modify placeholder_4 suffix 600
# execute if score redcache pkt_cache matches 608 run team modify placeholder_4 suffix 608
# execute if score redcache pkt_cache matches 616 run team modify placeholder_4 suffix 616
# execute if score redcache pkt_cache matches 624 run team modify placeholder_4 suffix 624
# execute if score redcache pkt_cache matches 632 run team modify placeholder_4 suffix 632
# execute if score redcache pkt_cache matches 640 run team modify placeholder_4 suffix 640
# execute if score redcache pkt_cache matches 648 run team modify placeholder_4 suffix 648
# execute if score redcache pkt_cache matches 656 run team modify placeholder_4 suffix 656
# execute if score redcache pkt_cache matches 664 run team modify placeholder_4 suffix 664
# execute if score redcache pkt_cache matches 672 run team modify placeholder_4 suffix 672
# execute if score redcache pkt_cache matches 680 run team modify placeholder_4 suffix 680
# execute if score redcache pkt_cache matches 688 run team modify placeholder_4 suffix 688
# execute if score redcache pkt_cache matches 696 run team modify placeholder_4 suffix 696
# execute if score redcache pkt_cache matches 704 run team modify placeholder_4 suffix 704
# execute if score redcache pkt_cache matches 712 run team modify placeholder_4 suffix 712
# execute if score redcache pkt_cache matches 720 run team modify placeholder_4 suffix 720
# execute if score redcache pkt_cache matches 728 run team modify placeholder_4 suffix 728
# execute if score redcache pkt_cache matches 736 run team modify placeholder_4 suffix 736
# execute if score redcache pkt_cache matches 744 run team modify placeholder_4 suffix 744
# execute if score redcache pkt_cache matches 752 run team modify placeholder_4 suffix 752
# execute if score redcache pkt_cache matches 760 run team modify placeholder_4 suffix 760
# execute if score redcache pkt_cache matches 768 run team modify placeholder_4 suffix 768
# execute if score redcache pkt_cache matches 776 run team modify placeholder_4 suffix 776
# execute if score redcache pkt_cache matches 784 run team modify placeholder_4 suffix 784
# execute if score redcache pkt_cache matches 792 run team modify placeholder_4 suffix 792
# execute if score redcache pkt_cache matches 800 run team modify placeholder_4 suffix 800
# execute if score redcache pkt_cache matches 808 run team modify placeholder_4 suffix 808
# execute if score redcache pkt_cache matches 816 run team modify placeholder_4 suffix 816
# execute if score redcache pkt_cache matches 824 run team modify placeholder_4 suffix 824
# execute if score redcache pkt_cache matches 832 run team modify placeholder_4 suffix 832
# execute if score redcache pkt_cache matches 840 run team modify placeholder_4 suffix 840
# execute if score redcache pkt_cache matches 848 run team modify placeholder_4 suffix 848
# execute if score redcache pkt_cache matches 856 run team modify placeholder_4 suffix 856
# execute if score redcache pkt_cache matches 864 run team modify placeholder_4 suffix 864
# execute if score redcache pkt_cache matches 872 run team modify placeholder_4 suffix 872
# execute if score redcache pkt_cache matches 880 run team modify placeholder_4 suffix 880
# execute if score redcache pkt_cache matches 888 run team modify placeholder_4 suffix 888
# execute if score redcache pkt_cache matches 896 run team modify placeholder_4 suffix 896
# execute if score redcache pkt_cache matches 904 run team modify placeholder_4 suffix 904
# execute if score redcache pkt_cache matches 912 run team modify placeholder_4 suffix 912
# execute if score redcache pkt_cache matches 920 run team modify placeholder_4 suffix 920
# execute if score redcache pkt_cache matches 928 run team modify placeholder_4 suffix 928
# execute if score redcache pkt_cache matches 936 run team modify placeholder_4 suffix 936
# execute if score redcache pkt_cache matches 944 run team modify placeholder_4 suffix 944
# execute if score redcache pkt_cache matches 952 run team modify placeholder_4 suffix 952
# execute if score redcache pkt_cache matches 960 run team modify placeholder_4 suffix 960
# execute if score redcache pkt_cache matches 968 run team modify placeholder_4 suffix 968
# execute if score redcache pkt_cache matches 976 run team modify placeholder_4 suffix 976
# execute if score redcache pkt_cache matches 984 run team modify placeholder_4 suffix 984
# execute if score redcache pkt_cache matches 992 run team modify placeholder_4 suffix 992
# execute if score redcache pkt_cache matches 1000 run team modify placeholder_4 suffix 1000
# execute if score redcache pkt_cache matches 1008 run team modify placeholder_4 suffix 1008
# execute if score redcache pkt_cache matches 1016 run team modify placeholder_4 suffix 1016
# execute if score redcache pkt_cache matches 1024 run team modify placeholder_4 suffix 1024
# execute if score redcache pkt_cache matches 1032 run team modify placeholder_4 suffix 1032
# execute if score redcache pkt_cache matches 1040 run team modify placeholder_4 suffix 1040
# execute if score redcache pkt_cache matches 1048 run team modify placeholder_4 suffix 1048
# execute if score redcache pkt_cache matches 1056 run team modify placeholder_4 suffix 1056
# execute if score redcache pkt_cache matches 1064 run team modify placeholder_4 suffix 1064
# execute if score redcache pkt_cache matches 1072 run team modify placeholder_4 suffix 1072
# execute if score redcache pkt_cache matches 1080 run team modify placeholder_4 suffix 1080
# execute if score redcache pkt_cache matches 1088 run team modify placeholder_4 suffix 1088
# execute if score redcache pkt_cache matches 1096 run team modify placeholder_4 suffix 1096
# execute if score redcache pkt_cache matches 1104 run team modify placeholder_4 suffix 1104
# execute if score redcache pkt_cache matches 1112 run team modify placeholder_4 suffix 1112
# execute if score redcache pkt_cache matches 1120 run team modify placeholder_4 suffix 1120
# execute if score redcache pkt_cache matches 1128 run team modify placeholder_4 suffix 1128
# execute if score redcache pkt_cache matches 1136 run team modify placeholder_4 suffix 1136
# execute if score redcache pkt_cache matches 1144 run team modify placeholder_4 suffix 1144
# execute if score redcache pkt_cache matches 1152 run team modify placeholder_4 suffix 1152
# execute if score redcache pkt_cache matches 1160 run team modify placeholder_4 suffix 1160
# execute if score redcache pkt_cache matches 1168 run team modify placeholder_4 suffix 1168
# execute if score redcache pkt_cache matches 1176 run team modify placeholder_4 suffix 1176
# execute if score redcache pkt_cache matches 1184 run team modify placeholder_4 suffix 1184
# execute if score redcache pkt_cache matches 1192 run team modify placeholder_4 suffix 1192
# execute if score redcache pkt_cache matches 1200 run team modify placeholder_4 suffix 1200
# execute if score redcache pkt_cache matches 1208 run team modify placeholder_4 suffix 1208
# execute if score redcache pkt_cache matches 1216 run team modify placeholder_4 suffix 1216
# execute if score redcache pkt_cache matches 1224 run team modify placeholder_4 suffix 1224
# execute if score redcache pkt_cache matches 1232 run team modify placeholder_4 suffix 1232
# execute if score redcache pkt_cache matches 1240 run team modify placeholder_4 suffix 1240
# execute if score redcache pkt_cache matches 1248 run team modify placeholder_4 suffix 1248
# execute if score redcache pkt_cache matches 1256 run team modify placeholder_4 suffix 1256
# execute if score redcache pkt_cache matches 1264 run team modify placeholder_4 suffix 1264
# execute if score redcache pkt_cache matches 1272 run team modify placeholder_4 suffix 1272
# execute if score redcache pkt_cache matches 1280 run team modify placeholder_4 suffix 1280
# execute if score redcache pkt_cache matches 1288 run team modify placeholder_4 suffix 1288
# execute if score redcache pkt_cache matches 1296 run team modify placeholder_4 suffix 1296
# execute if score redcache pkt_cache matches 1304 run team modify placeholder_4 suffix 1304
# execute if score redcache pkt_cache matches 1312 run team modify placeholder_4 suffix 1312
# execute if score redcache pkt_cache matches 1320 run team modify placeholder_4 suffix 1320
# execute if score redcache pkt_cache matches 1328 run team modify placeholder_4 suffix 1328
# execute if score redcache pkt_cache matches 1336 run team modify placeholder_4 suffix 1336
# execute if score redcache pkt_cache matches 1344 run team modify placeholder_4 suffix 1344
# execute if score redcache pkt_cache matches 1352 run team modify placeholder_4 suffix 1352
# execute if score redcache pkt_cache matches 1360 run team modify placeholder_4 suffix 1360
# execute if score redcache pkt_cache matches 1368 run team modify placeholder_4 suffix 1368
# execute if score redcache pkt_cache matches 1376 run team modify placeholder_4 suffix 1376
# execute if score redcache pkt_cache matches 1384 run team modify placeholder_4 suffix 1384
# execute if score redcache pkt_cache matches 1392 run team modify placeholder_4 suffix 1392
# execute if score redcache pkt_cache matches 1400 run team modify placeholder_4 suffix 1400
# execute if score redcache pkt_cache matches 1408 run team modify placeholder_4 suffix 1408
# execute if score redcache pkt_cache matches 1416 run team modify placeholder_4 suffix 1416
# execute if score redcache pkt_cache matches 1424 run team modify placeholder_4 suffix 1424
# execute if score redcache pkt_cache matches 1432 run team modify placeholder_4 suffix 1432
# execute if score redcache pkt_cache matches 1440 run team modify placeholder_4 suffix 1440
# execute if score redcache pkt_cache matches 1448 run team modify placeholder_4 suffix 1448
# execute if score redcache pkt_cache matches 1456 run team modify placeholder_4 suffix 1456
# execute if score redcache pkt_cache matches 1464 run team modify placeholder_4 suffix 1464
# execute if score redcache pkt_cache matches 1472 run team modify placeholder_4 suffix 1472
# execute if score redcache pkt_cache matches 1480 run team modify placeholder_4 suffix 1480
# execute if score redcache pkt_cache matches 1488 run team modify placeholder_4 suffix 1488
# execute if score redcache pkt_cache matches 1496 run team modify placeholder_4 suffix 1496
# execute if score redcache pkt_cache matches 1504 run team modify placeholder_4 suffix 1504
# execute if score redcache pkt_cache matches 1512 run team modify placeholder_4 suffix 1512
# execute if score redcache pkt_cache matches 1520 run team modify placeholder_4 suffix 1520
# execute if score redcache pkt_cache matches 1528 run team modify placeholder_4 suffix 1528
# execute if score redcache pkt_cache matches 1536 run team modify placeholder_4 suffix 1536
# execute if score redcache pkt_cache matches 1544 run team modify placeholder_4 suffix 1544
# execute if score redcache pkt_cache matches 1552 run team modify placeholder_4 suffix 1552
# execute if score redcache pkt_cache matches 1560 run team modify placeholder_4 suffix 1560
# execute if score redcache pkt_cache matches 1568 run team modify placeholder_4 suffix 1568
# execute if score redcache pkt_cache matches 1576 run team modify placeholder_4 suffix 1576
# execute if score redcache pkt_cache matches 1584 run team modify placeholder_4 suffix 1584
# execute if score redcache pkt_cache matches 1592 run team modify placeholder_4 suffix 1592
# execute if score redcache pkt_cache matches 1600 run team modify placeholder_4 suffix 1600
# execute if score redcache pkt_cache matches 1608 run team modify placeholder_4 suffix 1608
# execute if score redcache pkt_cache matches 1616 run team modify placeholder_4 suffix 1616
# execute if score redcache pkt_cache matches 1624 run team modify placeholder_4 suffix 1624
# execute if score redcache pkt_cache matches 1632 run team modify placeholder_4 suffix 1632
# execute if score redcache pkt_cache matches 1640 run team modify placeholder_4 suffix 1640
# execute if score redcache pkt_cache matches 1648 run team modify placeholder_4 suffix 1648
# execute if score redcache pkt_cache matches 1656 run team modify placeholder_4 suffix 1656
# execute if score redcache pkt_cache matches 1664 run team modify placeholder_4 suffix 1664
# execute if score redcache pkt_cache matches 1672 run team modify placeholder_4 suffix 1672
# execute if score redcache pkt_cache matches 1680 run team modify placeholder_4 suffix 1680
# execute if score redcache pkt_cache matches 1688 run team modify placeholder_4 suffix 1688
# execute if score redcache pkt_cache matches 1696 run team modify placeholder_4 suffix 1696
# execute if score redcache pkt_cache matches 1704 run team modify placeholder_4 suffix 1704
# execute if score redcache pkt_cache matches 1712 run team modify placeholder_4 suffix 1712
# execute if score redcache pkt_cache matches 1720 run team modify placeholder_4 suffix 1720
# execute if score redcache pkt_cache matches 1728 run team modify placeholder_4 suffix 1728
# execute if score redcache pkt_cache matches 1736 run team modify placeholder_4 suffix 1736
# execute if score redcache pkt_cache matches 1744 run team modify placeholder_4 suffix 1744
# execute if score redcache pkt_cache matches 1752 run team modify placeholder_4 suffix 1752
# execute if score redcache pkt_cache matches 1760 run team modify placeholder_4 suffix 1760
# execute if score redcache pkt_cache matches 1768 run team modify placeholder_4 suffix 1768
# execute if score redcache pkt_cache matches 1776 run team modify placeholder_4 suffix 1776
# execute if score redcache pkt_cache matches 1784 run team modify placeholder_4 suffix 1784
# execute if score redcache pkt_cache matches 1792 run team modify placeholder_4 suffix 1792
# execute if score redcache pkt_cache matches 1800 run team modify placeholder_4 suffix 1800
# execute if score redcache pkt_cache matches 1808 run team modify placeholder_4 suffix 1808
# execute if score redcache pkt_cache matches 1816 run team modify placeholder_4 suffix 1816
# execute if score redcache pkt_cache matches 1824 run team modify placeholder_4 suffix 1824
# execute if score redcache pkt_cache matches 1832 run team modify placeholder_4 suffix 1832
# execute if score redcache pkt_cache matches 1840 run team modify placeholder_4 suffix 1840
# execute if score redcache pkt_cache matches 1848 run team modify placeholder_4 suffix 1848
# execute if score redcache pkt_cache matches 1856 run team modify placeholder_4 suffix 1856
# execute if score redcache pkt_cache matches 1864 run team modify placeholder_4 suffix 1864
# execute if score redcache pkt_cache matches 1872 run team modify placeholder_4 suffix 1872
# execute if score redcache pkt_cache matches 1880 run team modify placeholder_4 suffix 1880
# execute if score redcache pkt_cache matches 1888 run team modify placeholder_4 suffix 1888
# execute if score redcache pkt_cache matches 1896 run team modify placeholder_4 suffix 1896
# execute if score redcache pkt_cache matches 1904 run team modify placeholder_4 suffix 1904
# execute if score redcache pkt_cache matches 1912 run team modify placeholder_4 suffix 1912
# execute if score redcache pkt_cache matches 1920 run team modify placeholder_4 suffix 1920
# execute if score redcache pkt_cache matches 1928 run team modify placeholder_4 suffix 1928
# execute if score redcache pkt_cache matches 1936 run team modify placeholder_4 suffix 1936
# execute if score redcache pkt_cache matches 1944 run team modify placeholder_4 suffix 1944
# execute if score redcache pkt_cache matches 1952 run team modify placeholder_4 suffix 1952
# execute if score redcache pkt_cache matches 1960 run team modify placeholder_4 suffix 1960
# execute if score redcache pkt_cache matches 1968 run team modify placeholder_4 suffix 1968
# execute if score redcache pkt_cache matches 1976 run team modify placeholder_4 suffix 1976
# execute if score redcache pkt_cache matches 1984 run team modify placeholder_4 suffix 1984
# execute if score redcache pkt_cache matches 1992 run team modify placeholder_4 suffix 1992
# execute if score redcache pkt_cache matches 2000 run team modify placeholder_4 suffix 2000
# execute if score redcache pkt_cache matches 2008 run team modify placeholder_4 suffix 2008
# execute if score redcache pkt_cache matches 2016 run team modify placeholder_4 suffix 2016
# execute if score redcache pkt_cache matches 2024 run team modify placeholder_4 suffix 2024
# execute if score redcache pkt_cache matches 2032 run team modify placeholder_4 suffix 2032
# execute if score redcache pkt_cache matches 2040 run team modify placeholder_4 suffix 2040
# execute if score redcache pkt_cache matches 2048 run team modify placeholder_4 suffix 2048
# execute if score redcache pkt_cache matches 2056 run team modify placeholder_4 suffix 2056
# execute if score redcache pkt_cache matches 2064 run team modify placeholder_4 suffix 2064
# execute if score redcache pkt_cache matches 2072 run team modify placeholder_4 suffix 2072
# execute if score redcache pkt_cache matches 2080 run team modify placeholder_4 suffix 2080
# execute if score redcache pkt_cache matches 2088 run team modify placeholder_4 suffix 2088
# execute if score redcache pkt_cache matches 2096 run team modify placeholder_4 suffix 2096
# execute if score redcache pkt_cache matches 2104 run team modify placeholder_4 suffix 2104
# execute if score redcache pkt_cache matches 2112 run team modify placeholder_4 suffix 2112
# execute if score redcache pkt_cache matches 2120 run team modify placeholder_4 suffix 2120
# execute if score redcache pkt_cache matches 2128 run team modify placeholder_4 suffix 2128
# execute if score redcache pkt_cache matches 2136 run team modify placeholder_4 suffix 2136
# execute if score redcache pkt_cache matches 2144 run team modify placeholder_4 suffix 2144
# execute if score redcache pkt_cache matches 2152 run team modify placeholder_4 suffix 2152
# execute if score redcache pkt_cache matches 2160 run team modify placeholder_4 suffix 2160
# execute if score redcache pkt_cache matches 2168 run team modify placeholder_4 suffix 2168
# execute if score redcache pkt_cache matches 2176 run team modify placeholder_4 suffix 2176
# execute if score redcache pkt_cache matches 2184 run team modify placeholder_4 suffix 2184
# execute if score redcache pkt_cache matches 2192 run team modify placeholder_4 suffix 2192
# execute if score redcache pkt_cache matches 2200 run team modify placeholder_4 suffix 2200
# execute if score redcache pkt_cache matches 2208 run team modify placeholder_4 suffix 2208
# execute if score redcache pkt_cache matches 2216 run team modify placeholder_4 suffix 2216
# execute if score redcache pkt_cache matches 2224 run team modify placeholder_4 suffix 2224
# execute if score redcache pkt_cache matches 2232 run team modify placeholder_4 suffix 2232
# execute if score redcache pkt_cache matches 2240 run team modify placeholder_4 suffix 2240
# execute if score redcache pkt_cache matches 2248 run team modify placeholder_4 suffix 2248
# execute if score redcache pkt_cache matches 2256 run team modify placeholder_4 suffix 2256
# execute if score redcache pkt_cache matches 2264 run team modify placeholder_4 suffix 2264
# execute if score redcache pkt_cache matches 2272 run team modify placeholder_4 suffix 2272
# execute if score redcache pkt_cache matches 2280 run team modify placeholder_4 suffix 2280
# execute if score redcache pkt_cache matches 2288 run team modify placeholder_4 suffix 2288
# execute if score redcache pkt_cache matches 2296 run team modify placeholder_4 suffix 2296
# execute if score redcache pkt_cache matches 2304 run team modify placeholder_4 suffix 2304
# execute if score redcache pkt_cache matches 2312 run team modify placeholder_4 suffix 2312
# execute if score redcache pkt_cache matches 2320 run team modify placeholder_4 suffix 2320
# execute if score redcache pkt_cache matches 2328 run team modify placeholder_4 suffix 2328
# execute if score redcache pkt_cache matches 2336 run team modify placeholder_4 suffix 2336
# execute if score redcache pkt_cache matches 2344 run team modify placeholder_4 suffix 2344
# execute if score redcache pkt_cache matches 2352 run team modify placeholder_4 suffix 2352
# execute if score redcache pkt_cache matches 2360 run team modify placeholder_4 suffix 2360
# execute if score redcache pkt_cache matches 2368 run team modify placeholder_4 suffix 2368
# execute if score redcache pkt_cache matches 2376 run team modify placeholder_4 suffix 2376
# execute if score redcache pkt_cache matches 2384 run team modify placeholder_4 suffix 2384
# execute if score redcache pkt_cache matches 2392 run team modify placeholder_4 suffix 2392
# execute if score redcache pkt_cache matches 2400 run team modify placeholder_4 suffix 2400
# execute if score redcache pkt_cache matches 2408 run team modify placeholder_4 suffix 2408
# execute if score redcache pkt_cache matches 2416 run team modify placeholder_4 suffix 2416
# execute if score redcache pkt_cache matches 2424 run team modify placeholder_4 suffix 2424
# execute if score redcache pkt_cache matches 2432 run team modify placeholder_4 suffix 2432
# execute if score redcache pkt_cache matches 2440 run team modify placeholder_4 suffix 2440
# execute if score redcache pkt_cache matches 2448 run team modify placeholder_4 suffix 2448
# execute if score redcache pkt_cache matches 2456 run team modify placeholder_4 suffix 2456
# execute if score redcache pkt_cache matches 2464 run team modify placeholder_4 suffix 2464
# execute if score redcache pkt_cache matches 2472 run team modify placeholder_4 suffix 2472
# execute if score redcache pkt_cache matches 2480 run team modify placeholder_4 suffix 2480
# execute if score redcache pkt_cache matches 2488 run team modify placeholder_4 suffix 2488
# execute if score redcache pkt_cache matches 2496 run team modify placeholder_4 suffix 2496
# execute if score redcache pkt_cache matches 2504 run team modify placeholder_4 suffix 2504
# execute if score redcache pkt_cache matches 2512 run team modify placeholder_4 suffix 2512
# execute if score redcache pkt_cache matches 2520 run team modify placeholder_4 suffix 2520
# execute if score redcache pkt_cache matches 2528 run team modify placeholder_4 suffix 2528
# execute if score redcache pkt_cache matches 2536 run team modify placeholder_4 suffix 2536
# execute if score redcache pkt_cache matches 2544 run team modify placeholder_4 suffix 2544
# execute if score redcache pkt_cache matches 2552 run team modify placeholder_4 suffix 2552
# execute if score redcache pkt_cache matches 2560 run team modify placeholder_4 suffix 2560
# execute if score redcache pkt_cache matches 2568 run team modify placeholder_4 suffix 2568
# execute if score redcache pkt_cache matches 2576 run team modify placeholder_4 suffix 2576
# execute if score redcache pkt_cache matches 2584 run team modify placeholder_4 suffix 2584
# execute if score redcache pkt_cache matches 2592 run team modify placeholder_4 suffix 2592
# execute if score redcache pkt_cache matches 2600 run team modify placeholder_4 suffix 2600
# execute if score redcache pkt_cache matches 2608 run team modify placeholder_4 suffix 2608
# execute if score redcache pkt_cache matches 2616 run team modify placeholder_4 suffix 2616
# execute if score redcache pkt_cache matches 2624 run team modify placeholder_4 suffix 2624
# execute if score redcache pkt_cache matches 2632 run team modify placeholder_4 suffix 2632
# execute if score redcache pkt_cache matches 2640 run team modify placeholder_4 suffix 2640
# execute if score redcache pkt_cache matches 2648 run team modify placeholder_4 suffix 2648
# execute if score redcache pkt_cache matches 2656 run team modify placeholder_4 suffix 2656
# execute if score redcache pkt_cache matches 2664 run team modify placeholder_4 suffix 2664
# execute if score redcache pkt_cache matches 2672 run team modify placeholder_4 suffix 2672
# execute if score redcache pkt_cache matches 2680 run team modify placeholder_4 suffix 2680
# execute if score redcache pkt_cache matches 2688 run team modify placeholder_4 suffix 2688
# execute if score redcache pkt_cache matches 2696 run team modify placeholder_4 suffix 2696
# execute if score redcache pkt_cache matches 2704 run team modify placeholder_4 suffix 2704
# execute if score redcache pkt_cache matches 2712 run team modify placeholder_4 suffix 2712
# execute if score redcache pkt_cache matches 2720 run team modify placeholder_4 suffix 2720
# execute if score redcache pkt_cache matches 2728 run team modify placeholder_4 suffix 2728
# execute if score redcache pkt_cache matches 2736 run team modify placeholder_4 suffix 2736
# execute if score redcache pkt_cache matches 2744 run team modify placeholder_4 suffix 2744
# execute if score redcache pkt_cache matches 2752 run team modify placeholder_4 suffix 2752
# execute if score redcache pkt_cache matches 2760 run team modify placeholder_4 suffix 2760
# execute if score redcache pkt_cache matches 2768 run team modify placeholder_4 suffix 2768
# execute if score redcache pkt_cache matches 2776 run team modify placeholder_4 suffix 2776
# execute if score redcache pkt_cache matches 2784 run team modify placeholder_4 suffix 2784
# execute if score redcache pkt_cache matches 2792 run team modify placeholder_4 suffix 2792
# execute if score redcache pkt_cache matches 2800 run team modify placeholder_4 suffix 2800
# execute if score redcache pkt_cache matches 2808 run team modify placeholder_4 suffix 2808
# execute if score redcache pkt_cache matches 2816 run team modify placeholder_4 suffix 2816
# execute if score redcache pkt_cache matches 2824 run team modify placeholder_4 suffix 2824
# execute if score redcache pkt_cache matches 2832 run team modify placeholder_4 suffix 2832
# execute if score redcache pkt_cache matches 2840 run team modify placeholder_4 suffix 2840
# execute if score redcache pkt_cache matches 2848 run team modify placeholder_4 suffix 2848
# execute if score redcache pkt_cache matches 2856 run team modify placeholder_4 suffix 2856
# execute if score redcache pkt_cache matches 2864 run team modify placeholder_4 suffix 2864
# execute if score redcache pkt_cache matches 2872 run team modify placeholder_4 suffix 2872
# execute if score redcache pkt_cache matches 2880 run team modify placeholder_4 suffix 2880
# execute if score redcache pkt_cache matches 2888 run team modify placeholder_4 suffix 2888
# execute if score redcache pkt_cache matches 2896 run team modify placeholder_4 suffix 2896
# execute if score redcache pkt_cache matches 2904 run team modify placeholder_4 suffix 2904
# execute if score redcache pkt_cache matches 2912 run team modify placeholder_4 suffix 2912
# execute if score redcache pkt_cache matches 2920 run team modify placeholder_4 suffix 2920
# execute if score redcache pkt_cache matches 2928 run team modify placeholder_4 suffix 2928
# execute if score redcache pkt_cache matches 2936 run team modify placeholder_4 suffix 2936
# execute if score redcache pkt_cache matches 2944 run team modify placeholder_4 suffix 2944
# execute if score redcache pkt_cache matches 2952 run team modify placeholder_4 suffix 2952
# execute if score redcache pkt_cache matches 2960 run team modify placeholder_4 suffix 2960
# execute if score redcache pkt_cache matches 2968 run team modify placeholder_4 suffix 2968
# execute if score redcache pkt_cache matches 2976 run team modify placeholder_4 suffix 2976
# execute if score redcache pkt_cache matches 2984 run team modify placeholder_4 suffix 2984
# execute if score redcache pkt_cache matches 2992 run team modify placeholder_4 suffix 2992
# #endregion

# #region blue
# execute if score bluecache pkt_cache matches 0 run team modify placeholder_3 suffix 0
# execute if score bluecache pkt_cache matches 8 run team modify placeholder_3 suffix 8
# execute if score bluecache pkt_cache matches 16 run team modify placeholder_3 suffix 16
# execute if score bluecache pkt_cache matches 24 run team modify placeholder_3 suffix 24
# execute if score bluecache pkt_cache matches 32 run team modify placeholder_3 suffix 32
# execute if score bluecache pkt_cache matches 40 run team modify placeholder_3 suffix 40
# execute if score bluecache pkt_cache matches 48 run team modify placeholder_3 suffix 48
# execute if score bluecache pkt_cache matches 56 run team modify placeholder_3 suffix 56
# execute if score bluecache pkt_cache matches 64 run team modify placeholder_3 suffix 64
# execute if score bluecache pkt_cache matches 72 run team modify placeholder_3 suffix 72
# execute if score bluecache pkt_cache matches 80 run team modify placeholder_3 suffix 80
# execute if score bluecache pkt_cache matches 88 run team modify placeholder_3 suffix 88
# execute if score bluecache pkt_cache matches 96 run team modify placeholder_3 suffix 96
# execute if score bluecache pkt_cache matches 104 run team modify placeholder_3 suffix 104
# execute if score bluecache pkt_cache matches 112 run team modify placeholder_3 suffix 112
# execute if score bluecache pkt_cache matches 120 run team modify placeholder_3 suffix 120
# execute if score bluecache pkt_cache matches 128 run team modify placeholder_3 suffix 128
# execute if score bluecache pkt_cache matches 136 run team modify placeholder_3 suffix 136
# execute if score bluecache pkt_cache matches 144 run team modify placeholder_3 suffix 144
# execute if score bluecache pkt_cache matches 152 run team modify placeholder_3 suffix 152
# execute if score bluecache pkt_cache matches 160 run team modify placeholder_3 suffix 160
# execute if score bluecache pkt_cache matches 168 run team modify placeholder_3 suffix 168
# execute if score bluecache pkt_cache matches 176 run team modify placeholder_3 suffix 176
# execute if score bluecache pkt_cache matches 184 run team modify placeholder_3 suffix 184
# execute if score bluecache pkt_cache matches 192 run team modify placeholder_3 suffix 192
# execute if score bluecache pkt_cache matches 200 run team modify placeholder_3 suffix 200
# execute if score bluecache pkt_cache matches 208 run team modify placeholder_3 suffix 208
# execute if score bluecache pkt_cache matches 216 run team modify placeholder_3 suffix 216
# execute if score bluecache pkt_cache matches 224 run team modify placeholder_3 suffix 224
# execute if score bluecache pkt_cache matches 232 run team modify placeholder_3 suffix 232
# execute if score bluecache pkt_cache matches 240 run team modify placeholder_3 suffix 240
# execute if score bluecache pkt_cache matches 248 run team modify placeholder_3 suffix 248
# execute if score bluecache pkt_cache matches 256 run team modify placeholder_3 suffix 256
# execute if score bluecache pkt_cache matches 264 run team modify placeholder_3 suffix 264
# execute if score bluecache pkt_cache matches 272 run team modify placeholder_3 suffix 272
# execute if score bluecache pkt_cache matches 280 run team modify placeholder_3 suffix 280
# execute if score bluecache pkt_cache matches 288 run team modify placeholder_3 suffix 288
# execute if score bluecache pkt_cache matches 296 run team modify placeholder_3 suffix 296
# execute if score bluecache pkt_cache matches 304 run team modify placeholder_3 suffix 304
# execute if score bluecache pkt_cache matches 312 run team modify placeholder_3 suffix 312
# execute if score bluecache pkt_cache matches 320 run team modify placeholder_3 suffix 320
# execute if score bluecache pkt_cache matches 328 run team modify placeholder_3 suffix 328
# execute if score bluecache pkt_cache matches 336 run team modify placeholder_3 suffix 336
# execute if score bluecache pkt_cache matches 344 run team modify placeholder_3 suffix 344
# execute if score bluecache pkt_cache matches 352 run team modify placeholder_3 suffix 352
# execute if score bluecache pkt_cache matches 360 run team modify placeholder_3 suffix 360
# execute if score bluecache pkt_cache matches 368 run team modify placeholder_3 suffix 368
# execute if score bluecache pkt_cache matches 376 run team modify placeholder_3 suffix 376
# execute if score bluecache pkt_cache matches 384 run team modify placeholder_3 suffix 384
# execute if score bluecache pkt_cache matches 392 run team modify placeholder_3 suffix 392
# execute if score bluecache pkt_cache matches 400 run team modify placeholder_3 suffix 400
# execute if score bluecache pkt_cache matches 408 run team modify placeholder_3 suffix 408
# execute if score bluecache pkt_cache matches 416 run team modify placeholder_3 suffix 416
# execute if score bluecache pkt_cache matches 424 run team modify placeholder_3 suffix 424
# execute if score bluecache pkt_cache matches 432 run team modify placeholder_3 suffix 432
# execute if score bluecache pkt_cache matches 440 run team modify placeholder_3 suffix 440
# execute if score bluecache pkt_cache matches 448 run team modify placeholder_3 suffix 448
# execute if score bluecache pkt_cache matches 456 run team modify placeholder_3 suffix 456
# execute if score bluecache pkt_cache matches 464 run team modify placeholder_3 suffix 464
# execute if score bluecache pkt_cache matches 472 run team modify placeholder_3 suffix 472
# execute if score bluecache pkt_cache matches 480 run team modify placeholder_3 suffix 480
# execute if score bluecache pkt_cache matches 488 run team modify placeholder_3 suffix 488
# execute if score bluecache pkt_cache matches 496 run team modify placeholder_3 suffix 496
# execute if score bluecache pkt_cache matches 504 run team modify placeholder_3 suffix 504
# execute if score bluecache pkt_cache matches 512 run team modify placeholder_3 suffix 512
# execute if score bluecache pkt_cache matches 520 run team modify placeholder_3 suffix 520
# execute if score bluecache pkt_cache matches 528 run team modify placeholder_3 suffix 528
# execute if score bluecache pkt_cache matches 536 run team modify placeholder_3 suffix 536
# execute if score bluecache pkt_cache matches 544 run team modify placeholder_3 suffix 544
# execute if score bluecache pkt_cache matches 552 run team modify placeholder_3 suffix 552
# execute if score bluecache pkt_cache matches 560 run team modify placeholder_3 suffix 560
# execute if score bluecache pkt_cache matches 568 run team modify placeholder_3 suffix 568
# execute if score bluecache pkt_cache matches 576 run team modify placeholder_3 suffix 576
# execute if score bluecache pkt_cache matches 584 run team modify placeholder_3 suffix 584
# execute if score bluecache pkt_cache matches 592 run team modify placeholder_3 suffix 592
# execute if score bluecache pkt_cache matches 600 run team modify placeholder_3 suffix 600
# execute if score bluecache pkt_cache matches 608 run team modify placeholder_3 suffix 608
# execute if score bluecache pkt_cache matches 616 run team modify placeholder_3 suffix 616
# execute if score bluecache pkt_cache matches 624 run team modify placeholder_3 suffix 624
# execute if score bluecache pkt_cache matches 632 run team modify placeholder_3 suffix 632
# execute if score bluecache pkt_cache matches 640 run team modify placeholder_3 suffix 640
# execute if score bluecache pkt_cache matches 648 run team modify placeholder_3 suffix 648
# execute if score bluecache pkt_cache matches 656 run team modify placeholder_3 suffix 656
# execute if score bluecache pkt_cache matches 664 run team modify placeholder_3 suffix 664
# execute if score bluecache pkt_cache matches 672 run team modify placeholder_3 suffix 672
# execute if score bluecache pkt_cache matches 680 run team modify placeholder_3 suffix 680
# execute if score bluecache pkt_cache matches 688 run team modify placeholder_3 suffix 688
# execute if score bluecache pkt_cache matches 696 run team modify placeholder_3 suffix 696
# execute if score bluecache pkt_cache matches 704 run team modify placeholder_3 suffix 704
# execute if score bluecache pkt_cache matches 712 run team modify placeholder_3 suffix 712
# execute if score bluecache pkt_cache matches 720 run team modify placeholder_3 suffix 720
# execute if score bluecache pkt_cache matches 728 run team modify placeholder_3 suffix 728
# execute if score bluecache pkt_cache matches 736 run team modify placeholder_3 suffix 736
# execute if score bluecache pkt_cache matches 744 run team modify placeholder_3 suffix 744
# execute if score bluecache pkt_cache matches 752 run team modify placeholder_3 suffix 752
# execute if score bluecache pkt_cache matches 760 run team modify placeholder_3 suffix 760
# execute if score bluecache pkt_cache matches 768 run team modify placeholder_3 suffix 768
# execute if score bluecache pkt_cache matches 776 run team modify placeholder_3 suffix 776
# execute if score bluecache pkt_cache matches 784 run team modify placeholder_3 suffix 784
# execute if score bluecache pkt_cache matches 792 run team modify placeholder_3 suffix 792
# execute if score bluecache pkt_cache matches 800 run team modify placeholder_3 suffix 800
# execute if score bluecache pkt_cache matches 808 run team modify placeholder_3 suffix 808
# execute if score bluecache pkt_cache matches 816 run team modify placeholder_3 suffix 816
# execute if score bluecache pkt_cache matches 824 run team modify placeholder_3 suffix 824
# execute if score bluecache pkt_cache matches 832 run team modify placeholder_3 suffix 832
# execute if score bluecache pkt_cache matches 840 run team modify placeholder_3 suffix 840
# execute if score bluecache pkt_cache matches 848 run team modify placeholder_3 suffix 848
# execute if score bluecache pkt_cache matches 856 run team modify placeholder_3 suffix 856
# execute if score bluecache pkt_cache matches 864 run team modify placeholder_3 suffix 864
# execute if score bluecache pkt_cache matches 872 run team modify placeholder_3 suffix 872
# execute if score bluecache pkt_cache matches 880 run team modify placeholder_3 suffix 880
# execute if score bluecache pkt_cache matches 888 run team modify placeholder_3 suffix 888
# execute if score bluecache pkt_cache matches 896 run team modify placeholder_3 suffix 896
# execute if score bluecache pkt_cache matches 904 run team modify placeholder_3 suffix 904
# execute if score bluecache pkt_cache matches 912 run team modify placeholder_3 suffix 912
# execute if score bluecache pkt_cache matches 920 run team modify placeholder_3 suffix 920
# execute if score bluecache pkt_cache matches 928 run team modify placeholder_3 suffix 928
# execute if score bluecache pkt_cache matches 936 run team modify placeholder_3 suffix 936
# execute if score bluecache pkt_cache matches 944 run team modify placeholder_3 suffix 944
# execute if score bluecache pkt_cache matches 952 run team modify placeholder_3 suffix 952
# execute if score bluecache pkt_cache matches 960 run team modify placeholder_3 suffix 960
# execute if score bluecache pkt_cache matches 968 run team modify placeholder_3 suffix 968
# execute if score bluecache pkt_cache matches 976 run team modify placeholder_3 suffix 976
# execute if score bluecache pkt_cache matches 984 run team modify placeholder_3 suffix 984
# execute if score bluecache pkt_cache matches 992 run team modify placeholder_3 suffix 992
# execute if score bluecache pkt_cache matches 1000 run team modify placeholder_3 suffix 1000
# execute if score bluecache pkt_cache matches 1008 run team modify placeholder_3 suffix 1008
# execute if score bluecache pkt_cache matches 1016 run team modify placeholder_3 suffix 1016
# execute if score bluecache pkt_cache matches 1024 run team modify placeholder_3 suffix 1024
# execute if score bluecache pkt_cache matches 1032 run team modify placeholder_3 suffix 1032
# execute if score bluecache pkt_cache matches 1040 run team modify placeholder_3 suffix 1040
# execute if score bluecache pkt_cache matches 1048 run team modify placeholder_3 suffix 1048
# execute if score bluecache pkt_cache matches 1056 run team modify placeholder_3 suffix 1056
# execute if score bluecache pkt_cache matches 1064 run team modify placeholder_3 suffix 1064
# execute if score bluecache pkt_cache matches 1072 run team modify placeholder_3 suffix 1072
# execute if score bluecache pkt_cache matches 1080 run team modify placeholder_3 suffix 1080
# execute if score bluecache pkt_cache matches 1088 run team modify placeholder_3 suffix 1088
# execute if score bluecache pkt_cache matches 1096 run team modify placeholder_3 suffix 1096
# execute if score bluecache pkt_cache matches 1104 run team modify placeholder_3 suffix 1104
# execute if score bluecache pkt_cache matches 1112 run team modify placeholder_3 suffix 1112
# execute if score bluecache pkt_cache matches 1120 run team modify placeholder_3 suffix 1120
# execute if score bluecache pkt_cache matches 1128 run team modify placeholder_3 suffix 1128
# execute if score bluecache pkt_cache matches 1136 run team modify placeholder_3 suffix 1136
# execute if score bluecache pkt_cache matches 1144 run team modify placeholder_3 suffix 1144
# execute if score bluecache pkt_cache matches 1152 run team modify placeholder_3 suffix 1152
# execute if score bluecache pkt_cache matches 1160 run team modify placeholder_3 suffix 1160
# execute if score bluecache pkt_cache matches 1168 run team modify placeholder_3 suffix 1168
# execute if score bluecache pkt_cache matches 1176 run team modify placeholder_3 suffix 1176
# execute if score bluecache pkt_cache matches 1184 run team modify placeholder_3 suffix 1184
# execute if score bluecache pkt_cache matches 1192 run team modify placeholder_3 suffix 1192
# execute if score bluecache pkt_cache matches 1200 run team modify placeholder_3 suffix 1200
# execute if score bluecache pkt_cache matches 1208 run team modify placeholder_3 suffix 1208
# execute if score bluecache pkt_cache matches 1216 run team modify placeholder_3 suffix 1216
# execute if score bluecache pkt_cache matches 1224 run team modify placeholder_3 suffix 1224
# execute if score bluecache pkt_cache matches 1232 run team modify placeholder_3 suffix 1232
# execute if score bluecache pkt_cache matches 1240 run team modify placeholder_3 suffix 1240
# execute if score bluecache pkt_cache matches 1248 run team modify placeholder_3 suffix 1248
# execute if score bluecache pkt_cache matches 1256 run team modify placeholder_3 suffix 1256
# execute if score bluecache pkt_cache matches 1264 run team modify placeholder_3 suffix 1264
# execute if score bluecache pkt_cache matches 1272 run team modify placeholder_3 suffix 1272
# execute if score bluecache pkt_cache matches 1280 run team modify placeholder_3 suffix 1280
# execute if score bluecache pkt_cache matches 1288 run team modify placeholder_3 suffix 1288
# execute if score bluecache pkt_cache matches 1296 run team modify placeholder_3 suffix 1296
# execute if score bluecache pkt_cache matches 1304 run team modify placeholder_3 suffix 1304
# execute if score bluecache pkt_cache matches 1312 run team modify placeholder_3 suffix 1312
# execute if score bluecache pkt_cache matches 1320 run team modify placeholder_3 suffix 1320
# execute if score bluecache pkt_cache matches 1328 run team modify placeholder_3 suffix 1328
# execute if score bluecache pkt_cache matches 1336 run team modify placeholder_3 suffix 1336
# execute if score bluecache pkt_cache matches 1344 run team modify placeholder_3 suffix 1344
# execute if score bluecache pkt_cache matches 1352 run team modify placeholder_3 suffix 1352
# execute if score bluecache pkt_cache matches 1360 run team modify placeholder_3 suffix 1360
# execute if score bluecache pkt_cache matches 1368 run team modify placeholder_3 suffix 1368
# execute if score bluecache pkt_cache matches 1376 run team modify placeholder_3 suffix 1376
# execute if score bluecache pkt_cache matches 1384 run team modify placeholder_3 suffix 1384
# execute if score bluecache pkt_cache matches 1392 run team modify placeholder_3 suffix 1392
# execute if score bluecache pkt_cache matches 1400 run team modify placeholder_3 suffix 1400
# execute if score bluecache pkt_cache matches 1408 run team modify placeholder_3 suffix 1408
# execute if score bluecache pkt_cache matches 1416 run team modify placeholder_3 suffix 1416
# execute if score bluecache pkt_cache matches 1424 run team modify placeholder_3 suffix 1424
# execute if score bluecache pkt_cache matches 1432 run team modify placeholder_3 suffix 1432
# execute if score bluecache pkt_cache matches 1440 run team modify placeholder_3 suffix 1440
# execute if score bluecache pkt_cache matches 1448 run team modify placeholder_3 suffix 1448
# execute if score bluecache pkt_cache matches 1456 run team modify placeholder_3 suffix 1456
# execute if score bluecache pkt_cache matches 1464 run team modify placeholder_3 suffix 1464
# execute if score bluecache pkt_cache matches 1472 run team modify placeholder_3 suffix 1472
# execute if score bluecache pkt_cache matches 1480 run team modify placeholder_3 suffix 1480
# execute if score bluecache pkt_cache matches 1488 run team modify placeholder_3 suffix 1488
# execute if score bluecache pkt_cache matches 1496 run team modify placeholder_3 suffix 1496
# execute if score bluecache pkt_cache matches 1504 run team modify placeholder_3 suffix 1504
# execute if score bluecache pkt_cache matches 1512 run team modify placeholder_3 suffix 1512
# execute if score bluecache pkt_cache matches 1520 run team modify placeholder_3 suffix 1520
# execute if score bluecache pkt_cache matches 1528 run team modify placeholder_3 suffix 1528
# execute if score bluecache pkt_cache matches 1536 run team modify placeholder_3 suffix 1536
# execute if score bluecache pkt_cache matches 1544 run team modify placeholder_3 suffix 1544
# execute if score bluecache pkt_cache matches 1552 run team modify placeholder_3 suffix 1552
# execute if score bluecache pkt_cache matches 1560 run team modify placeholder_3 suffix 1560
# execute if score bluecache pkt_cache matches 1568 run team modify placeholder_3 suffix 1568
# execute if score bluecache pkt_cache matches 1576 run team modify placeholder_3 suffix 1576
# execute if score bluecache pkt_cache matches 1584 run team modify placeholder_3 suffix 1584
# execute if score bluecache pkt_cache matches 1592 run team modify placeholder_3 suffix 1592
# execute if score bluecache pkt_cache matches 1600 run team modify placeholder_3 suffix 1600
# execute if score bluecache pkt_cache matches 1608 run team modify placeholder_3 suffix 1608
# execute if score bluecache pkt_cache matches 1616 run team modify placeholder_3 suffix 1616
# execute if score bluecache pkt_cache matches 1624 run team modify placeholder_3 suffix 1624
# execute if score bluecache pkt_cache matches 1632 run team modify placeholder_3 suffix 1632
# execute if score bluecache pkt_cache matches 1640 run team modify placeholder_3 suffix 1640
# execute if score bluecache pkt_cache matches 1648 run team modify placeholder_3 suffix 1648
# execute if score bluecache pkt_cache matches 1656 run team modify placeholder_3 suffix 1656
# execute if score bluecache pkt_cache matches 1664 run team modify placeholder_3 suffix 1664
# execute if score bluecache pkt_cache matches 1672 run team modify placeholder_3 suffix 1672
# execute if score bluecache pkt_cache matches 1680 run team modify placeholder_3 suffix 1680
# execute if score bluecache pkt_cache matches 1688 run team modify placeholder_3 suffix 1688
# execute if score bluecache pkt_cache matches 1696 run team modify placeholder_3 suffix 1696
# execute if score bluecache pkt_cache matches 1704 run team modify placeholder_3 suffix 1704
# execute if score bluecache pkt_cache matches 1712 run team modify placeholder_3 suffix 1712
# execute if score bluecache pkt_cache matches 1720 run team modify placeholder_3 suffix 1720
# execute if score bluecache pkt_cache matches 1728 run team modify placeholder_3 suffix 1728
# execute if score bluecache pkt_cache matches 1736 run team modify placeholder_3 suffix 1736
# execute if score bluecache pkt_cache matches 1744 run team modify placeholder_3 suffix 1744
# execute if score bluecache pkt_cache matches 1752 run team modify placeholder_3 suffix 1752
# execute if score bluecache pkt_cache matches 1760 run team modify placeholder_3 suffix 1760
# execute if score bluecache pkt_cache matches 1768 run team modify placeholder_3 suffix 1768
# execute if score bluecache pkt_cache matches 1776 run team modify placeholder_3 suffix 1776
# execute if score bluecache pkt_cache matches 1784 run team modify placeholder_3 suffix 1784
# execute if score bluecache pkt_cache matches 1792 run team modify placeholder_3 suffix 1792
# execute if score bluecache pkt_cache matches 1800 run team modify placeholder_3 suffix 1800
# execute if score bluecache pkt_cache matches 1808 run team modify placeholder_3 suffix 1808
# execute if score bluecache pkt_cache matches 1816 run team modify placeholder_3 suffix 1816
# execute if score bluecache pkt_cache matches 1824 run team modify placeholder_3 suffix 1824
# execute if score bluecache pkt_cache matches 1832 run team modify placeholder_3 suffix 1832
# execute if score bluecache pkt_cache matches 1840 run team modify placeholder_3 suffix 1840
# execute if score bluecache pkt_cache matches 1848 run team modify placeholder_3 suffix 1848
# execute if score bluecache pkt_cache matches 1856 run team modify placeholder_3 suffix 1856
# execute if score bluecache pkt_cache matches 1864 run team modify placeholder_3 suffix 1864
# execute if score bluecache pkt_cache matches 1872 run team modify placeholder_3 suffix 1872
# execute if score bluecache pkt_cache matches 1880 run team modify placeholder_3 suffix 1880
# execute if score bluecache pkt_cache matches 1888 run team modify placeholder_3 suffix 1888
# execute if score bluecache pkt_cache matches 1896 run team modify placeholder_3 suffix 1896
# execute if score bluecache pkt_cache matches 1904 run team modify placeholder_3 suffix 1904
# execute if score bluecache pkt_cache matches 1912 run team modify placeholder_3 suffix 1912
# execute if score bluecache pkt_cache matches 1920 run team modify placeholder_3 suffix 1920
# execute if score bluecache pkt_cache matches 1928 run team modify placeholder_3 suffix 1928
# execute if score bluecache pkt_cache matches 1936 run team modify placeholder_3 suffix 1936
# execute if score bluecache pkt_cache matches 1944 run team modify placeholder_3 suffix 1944
# execute if score bluecache pkt_cache matches 1952 run team modify placeholder_3 suffix 1952
# execute if score bluecache pkt_cache matches 1960 run team modify placeholder_3 suffix 1960
# execute if score bluecache pkt_cache matches 1968 run team modify placeholder_3 suffix 1968
# execute if score bluecache pkt_cache matches 1976 run team modify placeholder_3 suffix 1976
# execute if score bluecache pkt_cache matches 1984 run team modify placeholder_3 suffix 1984
# execute if score bluecache pkt_cache matches 1992 run team modify placeholder_3 suffix 1992
# execute if score bluecache pkt_cache matches 2000 run team modify placeholder_3 suffix 2000
# execute if score bluecache pkt_cache matches 2008 run team modify placeholder_3 suffix 2008
# execute if score bluecache pkt_cache matches 2016 run team modify placeholder_3 suffix 2016
# execute if score bluecache pkt_cache matches 2024 run team modify placeholder_3 suffix 2024
# execute if score bluecache pkt_cache matches 2032 run team modify placeholder_3 suffix 2032
# execute if score bluecache pkt_cache matches 2040 run team modify placeholder_3 suffix 2040
# execute if score bluecache pkt_cache matches 2048 run team modify placeholder_3 suffix 2048
# execute if score bluecache pkt_cache matches 2056 run team modify placeholder_3 suffix 2056
# execute if score bluecache pkt_cache matches 2064 run team modify placeholder_3 suffix 2064
# execute if score bluecache pkt_cache matches 2072 run team modify placeholder_3 suffix 2072
# execute if score bluecache pkt_cache matches 2080 run team modify placeholder_3 suffix 2080
# execute if score bluecache pkt_cache matches 2088 run team modify placeholder_3 suffix 2088
# execute if score bluecache pkt_cache matches 2096 run team modify placeholder_3 suffix 2096
# execute if score bluecache pkt_cache matches 2104 run team modify placeholder_3 suffix 2104
# execute if score bluecache pkt_cache matches 2112 run team modify placeholder_3 suffix 2112
# execute if score bluecache pkt_cache matches 2120 run team modify placeholder_3 suffix 2120
# execute if score bluecache pkt_cache matches 2128 run team modify placeholder_3 suffix 2128
# execute if score bluecache pkt_cache matches 2136 run team modify placeholder_3 suffix 2136
# execute if score bluecache pkt_cache matches 2144 run team modify placeholder_3 suffix 2144
# execute if score bluecache pkt_cache matches 2152 run team modify placeholder_3 suffix 2152
# execute if score bluecache pkt_cache matches 2160 run team modify placeholder_3 suffix 2160
# execute if score bluecache pkt_cache matches 2168 run team modify placeholder_3 suffix 2168
# execute if score bluecache pkt_cache matches 2176 run team modify placeholder_3 suffix 2176
# execute if score bluecache pkt_cache matches 2184 run team modify placeholder_3 suffix 2184
# execute if score bluecache pkt_cache matches 2192 run team modify placeholder_3 suffix 2192
# execute if score bluecache pkt_cache matches 2200 run team modify placeholder_3 suffix 2200
# execute if score bluecache pkt_cache matches 2208 run team modify placeholder_3 suffix 2208
# execute if score bluecache pkt_cache matches 2216 run team modify placeholder_3 suffix 2216
# execute if score bluecache pkt_cache matches 2224 run team modify placeholder_3 suffix 2224
# execute if score bluecache pkt_cache matches 2232 run team modify placeholder_3 suffix 2232
# execute if score bluecache pkt_cache matches 2240 run team modify placeholder_3 suffix 2240
# execute if score bluecache pkt_cache matches 2248 run team modify placeholder_3 suffix 2248
# execute if score bluecache pkt_cache matches 2256 run team modify placeholder_3 suffix 2256
# execute if score bluecache pkt_cache matches 2264 run team modify placeholder_3 suffix 2264
# execute if score bluecache pkt_cache matches 2272 run team modify placeholder_3 suffix 2272
# execute if score bluecache pkt_cache matches 2280 run team modify placeholder_3 suffix 2280
# execute if score bluecache pkt_cache matches 2288 run team modify placeholder_3 suffix 2288
# execute if score bluecache pkt_cache matches 2296 run team modify placeholder_3 suffix 2296
# execute if score bluecache pkt_cache matches 2304 run team modify placeholder_3 suffix 2304
# execute if score bluecache pkt_cache matches 2312 run team modify placeholder_3 suffix 2312
# execute if score bluecache pkt_cache matches 2320 run team modify placeholder_3 suffix 2320
# execute if score bluecache pkt_cache matches 2328 run team modify placeholder_3 suffix 2328
# execute if score bluecache pkt_cache matches 2336 run team modify placeholder_3 suffix 2336
# execute if score bluecache pkt_cache matches 2344 run team modify placeholder_3 suffix 2344
# execute if score bluecache pkt_cache matches 2352 run team modify placeholder_3 suffix 2352
# execute if score bluecache pkt_cache matches 2360 run team modify placeholder_3 suffix 2360
# execute if score bluecache pkt_cache matches 2368 run team modify placeholder_3 suffix 2368
# execute if score bluecache pkt_cache matches 2376 run team modify placeholder_3 suffix 2376
# execute if score bluecache pkt_cache matches 2384 run team modify placeholder_3 suffix 2384
# execute if score bluecache pkt_cache matches 2392 run team modify placeholder_3 suffix 2392
# execute if score bluecache pkt_cache matches 2400 run team modify placeholder_3 suffix 2400
# execute if score bluecache pkt_cache matches 2408 run team modify placeholder_3 suffix 2408
# execute if score bluecache pkt_cache matches 2416 run team modify placeholder_3 suffix 2416
# execute if score bluecache pkt_cache matches 2424 run team modify placeholder_3 suffix 2424
# execute if score bluecache pkt_cache matches 2432 run team modify placeholder_3 suffix 2432
# execute if score bluecache pkt_cache matches 2440 run team modify placeholder_3 suffix 2440
# execute if score bluecache pkt_cache matches 2448 run team modify placeholder_3 suffix 2448
# execute if score bluecache pkt_cache matches 2456 run team modify placeholder_3 suffix 2456
# execute if score bluecache pkt_cache matches 2464 run team modify placeholder_3 suffix 2464
# execute if score bluecache pkt_cache matches 2472 run team modify placeholder_3 suffix 2472
# execute if score bluecache pkt_cache matches 2480 run team modify placeholder_3 suffix 2480
# execute if score bluecache pkt_cache matches 2488 run team modify placeholder_3 suffix 2488
# execute if score bluecache pkt_cache matches 2496 run team modify placeholder_3 suffix 2496
# execute if score bluecache pkt_cache matches 2504 run team modify placeholder_3 suffix 2504
# execute if score bluecache pkt_cache matches 2512 run team modify placeholder_3 suffix 2512
# execute if score bluecache pkt_cache matches 2520 run team modify placeholder_3 suffix 2520
# execute if score bluecache pkt_cache matches 2528 run team modify placeholder_3 suffix 2528
# execute if score bluecache pkt_cache matches 2536 run team modify placeholder_3 suffix 2536
# execute if score bluecache pkt_cache matches 2544 run team modify placeholder_3 suffix 2544
# execute if score bluecache pkt_cache matches 2552 run team modify placeholder_3 suffix 2552
# execute if score bluecache pkt_cache matches 2560 run team modify placeholder_3 suffix 2560
# execute if score bluecache pkt_cache matches 2568 run team modify placeholder_3 suffix 2568
# execute if score bluecache pkt_cache matches 2576 run team modify placeholder_3 suffix 2576
# execute if score bluecache pkt_cache matches 2584 run team modify placeholder_3 suffix 2584
# execute if score bluecache pkt_cache matches 2592 run team modify placeholder_3 suffix 2592
# execute if score bluecache pkt_cache matches 2600 run team modify placeholder_3 suffix 2600
# execute if score bluecache pkt_cache matches 2608 run team modify placeholder_3 suffix 2608
# execute if score bluecache pkt_cache matches 2616 run team modify placeholder_3 suffix 2616
# execute if score bluecache pkt_cache matches 2624 run team modify placeholder_3 suffix 2624
# execute if score bluecache pkt_cache matches 2632 run team modify placeholder_3 suffix 2632
# execute if score bluecache pkt_cache matches 2640 run team modify placeholder_3 suffix 2640
# execute if score bluecache pkt_cache matches 2648 run team modify placeholder_3 suffix 2648
# execute if score bluecache pkt_cache matches 2656 run team modify placeholder_3 suffix 2656
# execute if score bluecache pkt_cache matches 2664 run team modify placeholder_3 suffix 2664
# execute if score bluecache pkt_cache matches 2672 run team modify placeholder_3 suffix 2672
# execute if score bluecache pkt_cache matches 2680 run team modify placeholder_3 suffix 2680
# execute if score bluecache pkt_cache matches 2688 run team modify placeholder_3 suffix 2688
# execute if score bluecache pkt_cache matches 2696 run team modify placeholder_3 suffix 2696
# execute if score bluecache pkt_cache matches 2704 run team modify placeholder_3 suffix 2704
# execute if score bluecache pkt_cache matches 2712 run team modify placeholder_3 suffix 2712
# execute if score bluecache pkt_cache matches 2720 run team modify placeholder_3 suffix 2720
# execute if score bluecache pkt_cache matches 2728 run team modify placeholder_3 suffix 2728
# execute if score bluecache pkt_cache matches 2736 run team modify placeholder_3 suffix 2736
# execute if score bluecache pkt_cache matches 2744 run team modify placeholder_3 suffix 2744
# execute if score bluecache pkt_cache matches 2752 run team modify placeholder_3 suffix 2752
# execute if score bluecache pkt_cache matches 2760 run team modify placeholder_3 suffix 2760
# execute if score bluecache pkt_cache matches 2768 run team modify placeholder_3 suffix 2768
# execute if score bluecache pkt_cache matches 2776 run team modify placeholder_3 suffix 2776
# execute if score bluecache pkt_cache matches 2784 run team modify placeholder_3 suffix 2784
# execute if score bluecache pkt_cache matches 2792 run team modify placeholder_3 suffix 2792
# execute if score bluecache pkt_cache matches 2800 run team modify placeholder_3 suffix 2800
# execute if score bluecache pkt_cache matches 2808 run team modify placeholder_3 suffix 2808
# execute if score bluecache pkt_cache matches 2816 run team modify placeholder_3 suffix 2816
# execute if score bluecache pkt_cache matches 2824 run team modify placeholder_3 suffix 2824
# execute if score bluecache pkt_cache matches 2832 run team modify placeholder_3 suffix 2832
# execute if score bluecache pkt_cache matches 2840 run team modify placeholder_3 suffix 2840
# execute if score bluecache pkt_cache matches 2848 run team modify placeholder_3 suffix 2848
# execute if score bluecache pkt_cache matches 2856 run team modify placeholder_3 suffix 2856
# execute if score bluecache pkt_cache matches 2864 run team modify placeholder_3 suffix 2864
# execute if score bluecache pkt_cache matches 2872 run team modify placeholder_3 suffix 2872
# execute if score bluecache pkt_cache matches 2880 run team modify placeholder_3 suffix 2880
# execute if score bluecache pkt_cache matches 2888 run team modify placeholder_3 suffix 2888
# execute if score bluecache pkt_cache matches 2896 run team modify placeholder_3 suffix 2896
# execute if score bluecache pkt_cache matches 2904 run team modify placeholder_3 suffix 2904
# execute if score bluecache pkt_cache matches 2912 run team modify placeholder_3 suffix 2912
# execute if score bluecache pkt_cache matches 2920 run team modify placeholder_3 suffix 2920
# execute if score bluecache pkt_cache matches 2928 run team modify placeholder_3 suffix 2928
# execute if score bluecache pkt_cache matches 2936 run team modify placeholder_3 suffix 2936
# execute if score bluecache pkt_cache matches 2944 run team modify placeholder_3 suffix 2944
# execute if score bluecache pkt_cache matches 2952 run team modify placeholder_3 suffix 2952
# execute if score bluecache pkt_cache matches 2960 run team modify placeholder_3 suffix 2960
# execute if score bluecache pkt_cache matches 2968 run team modify placeholder_3 suffix 2968
# execute if score bluecache pkt_cache matches 2976 run team modify placeholder_3 suffix 2976
# execute if score bluecache pkt_cache matches 2984 run team modify placeholder_3 suffix 2984
# execute if score bluecache pkt_cache matches 2992 run team modify placeholder_3 suffix 2992
# #endregion

# #region green
# execute if score greencache pkt_cache matches 0 run team modify placeholder_2 suffix 0
# execute if score greencache pkt_cache matches 8 run team modify placeholder_2 suffix 8
# execute if score greencache pkt_cache matches 16 run team modify placeholder_2 suffix 16
# execute if score greencache pkt_cache matches 24 run team modify placeholder_2 suffix 24
# execute if score greencache pkt_cache matches 32 run team modify placeholder_2 suffix 32
# execute if score greencache pkt_cache matches 40 run team modify placeholder_2 suffix 40
# execute if score greencache pkt_cache matches 48 run team modify placeholder_2 suffix 48
# execute if score greencache pkt_cache matches 56 run team modify placeholder_2 suffix 56
# execute if score greencache pkt_cache matches 64 run team modify placeholder_2 suffix 64
# execute if score greencache pkt_cache matches 72 run team modify placeholder_2 suffix 72
# execute if score greencache pkt_cache matches 80 run team modify placeholder_2 suffix 80
# execute if score greencache pkt_cache matches 88 run team modify placeholder_2 suffix 88
# execute if score greencache pkt_cache matches 96 run team modify placeholder_2 suffix 96
# execute if score greencache pkt_cache matches 104 run team modify placeholder_2 suffix 104
# execute if score greencache pkt_cache matches 112 run team modify placeholder_2 suffix 112
# execute if score greencache pkt_cache matches 120 run team modify placeholder_2 suffix 120
# execute if score greencache pkt_cache matches 128 run team modify placeholder_2 suffix 128
# execute if score greencache pkt_cache matches 136 run team modify placeholder_2 suffix 136
# execute if score greencache pkt_cache matches 144 run team modify placeholder_2 suffix 144
# execute if score greencache pkt_cache matches 152 run team modify placeholder_2 suffix 152
# execute if score greencache pkt_cache matches 160 run team modify placeholder_2 suffix 160
# execute if score greencache pkt_cache matches 168 run team modify placeholder_2 suffix 168
# execute if score greencache pkt_cache matches 176 run team modify placeholder_2 suffix 176
# execute if score greencache pkt_cache matches 184 run team modify placeholder_2 suffix 184
# execute if score greencache pkt_cache matches 192 run team modify placeholder_2 suffix 192
# execute if score greencache pkt_cache matches 200 run team modify placeholder_2 suffix 200
# execute if score greencache pkt_cache matches 208 run team modify placeholder_2 suffix 208
# execute if score greencache pkt_cache matches 216 run team modify placeholder_2 suffix 216
# execute if score greencache pkt_cache matches 224 run team modify placeholder_2 suffix 224
# execute if score greencache pkt_cache matches 232 run team modify placeholder_2 suffix 232
# execute if score greencache pkt_cache matches 240 run team modify placeholder_2 suffix 240
# execute if score greencache pkt_cache matches 248 run team modify placeholder_2 suffix 248
# execute if score greencache pkt_cache matches 256 run team modify placeholder_2 suffix 256
# execute if score greencache pkt_cache matches 264 run team modify placeholder_2 suffix 264
# execute if score greencache pkt_cache matches 272 run team modify placeholder_2 suffix 272
# execute if score greencache pkt_cache matches 280 run team modify placeholder_2 suffix 280
# execute if score greencache pkt_cache matches 288 run team modify placeholder_2 suffix 288
# execute if score greencache pkt_cache matches 296 run team modify placeholder_2 suffix 296
# execute if score greencache pkt_cache matches 304 run team modify placeholder_2 suffix 304
# execute if score greencache pkt_cache matches 312 run team modify placeholder_2 suffix 312
# execute if score greencache pkt_cache matches 320 run team modify placeholder_2 suffix 320
# execute if score greencache pkt_cache matches 328 run team modify placeholder_2 suffix 328
# execute if score greencache pkt_cache matches 336 run team modify placeholder_2 suffix 336
# execute if score greencache pkt_cache matches 344 run team modify placeholder_2 suffix 344
# execute if score greencache pkt_cache matches 352 run team modify placeholder_2 suffix 352
# execute if score greencache pkt_cache matches 360 run team modify placeholder_2 suffix 360
# execute if score greencache pkt_cache matches 368 run team modify placeholder_2 suffix 368
# execute if score greencache pkt_cache matches 376 run team modify placeholder_2 suffix 376
# execute if score greencache pkt_cache matches 384 run team modify placeholder_2 suffix 384
# execute if score greencache pkt_cache matches 392 run team modify placeholder_2 suffix 392
# execute if score greencache pkt_cache matches 400 run team modify placeholder_2 suffix 400
# execute if score greencache pkt_cache matches 408 run team modify placeholder_2 suffix 408
# execute if score greencache pkt_cache matches 416 run team modify placeholder_2 suffix 416
# execute if score greencache pkt_cache matches 424 run team modify placeholder_2 suffix 424
# execute if score greencache pkt_cache matches 432 run team modify placeholder_2 suffix 432
# execute if score greencache pkt_cache matches 440 run team modify placeholder_2 suffix 440
# execute if score greencache pkt_cache matches 448 run team modify placeholder_2 suffix 448
# execute if score greencache pkt_cache matches 456 run team modify placeholder_2 suffix 456
# execute if score greencache pkt_cache matches 464 run team modify placeholder_2 suffix 464
# execute if score greencache pkt_cache matches 472 run team modify placeholder_2 suffix 472
# execute if score greencache pkt_cache matches 480 run team modify placeholder_2 suffix 480
# execute if score greencache pkt_cache matches 488 run team modify placeholder_2 suffix 488
# execute if score greencache pkt_cache matches 496 run team modify placeholder_2 suffix 496
# execute if score greencache pkt_cache matches 504 run team modify placeholder_2 suffix 504
# execute if score greencache pkt_cache matches 512 run team modify placeholder_2 suffix 512
# execute if score greencache pkt_cache matches 520 run team modify placeholder_2 suffix 520
# execute if score greencache pkt_cache matches 528 run team modify placeholder_2 suffix 528
# execute if score greencache pkt_cache matches 536 run team modify placeholder_2 suffix 536
# execute if score greencache pkt_cache matches 544 run team modify placeholder_2 suffix 544
# execute if score greencache pkt_cache matches 552 run team modify placeholder_2 suffix 552
# execute if score greencache pkt_cache matches 560 run team modify placeholder_2 suffix 560
# execute if score greencache pkt_cache matches 568 run team modify placeholder_2 suffix 568
# execute if score greencache pkt_cache matches 576 run team modify placeholder_2 suffix 576
# execute if score greencache pkt_cache matches 584 run team modify placeholder_2 suffix 584
# execute if score greencache pkt_cache matches 592 run team modify placeholder_2 suffix 592
# execute if score greencache pkt_cache matches 600 run team modify placeholder_2 suffix 600
# execute if score greencache pkt_cache matches 608 run team modify placeholder_2 suffix 608
# execute if score greencache pkt_cache matches 616 run team modify placeholder_2 suffix 616
# execute if score greencache pkt_cache matches 624 run team modify placeholder_2 suffix 624
# execute if score greencache pkt_cache matches 632 run team modify placeholder_2 suffix 632
# execute if score greencache pkt_cache matches 640 run team modify placeholder_2 suffix 640
# execute if score greencache pkt_cache matches 648 run team modify placeholder_2 suffix 648
# execute if score greencache pkt_cache matches 656 run team modify placeholder_2 suffix 656
# execute if score greencache pkt_cache matches 664 run team modify placeholder_2 suffix 664
# execute if score greencache pkt_cache matches 672 run team modify placeholder_2 suffix 672
# execute if score greencache pkt_cache matches 680 run team modify placeholder_2 suffix 680
# execute if score greencache pkt_cache matches 688 run team modify placeholder_2 suffix 688
# execute if score greencache pkt_cache matches 696 run team modify placeholder_2 suffix 696
# execute if score greencache pkt_cache matches 704 run team modify placeholder_2 suffix 704
# execute if score greencache pkt_cache matches 712 run team modify placeholder_2 suffix 712
# execute if score greencache pkt_cache matches 720 run team modify placeholder_2 suffix 720
# execute if score greencache pkt_cache matches 728 run team modify placeholder_2 suffix 728
# execute if score greencache pkt_cache matches 736 run team modify placeholder_2 suffix 736
# execute if score greencache pkt_cache matches 744 run team modify placeholder_2 suffix 744
# execute if score greencache pkt_cache matches 752 run team modify placeholder_2 suffix 752
# execute if score greencache pkt_cache matches 760 run team modify placeholder_2 suffix 760
# execute if score greencache pkt_cache matches 768 run team modify placeholder_2 suffix 768
# execute if score greencache pkt_cache matches 776 run team modify placeholder_2 suffix 776
# execute if score greencache pkt_cache matches 784 run team modify placeholder_2 suffix 784
# execute if score greencache pkt_cache matches 792 run team modify placeholder_2 suffix 792
# execute if score greencache pkt_cache matches 800 run team modify placeholder_2 suffix 800
# execute if score greencache pkt_cache matches 808 run team modify placeholder_2 suffix 808
# execute if score greencache pkt_cache matches 816 run team modify placeholder_2 suffix 816
# execute if score greencache pkt_cache matches 824 run team modify placeholder_2 suffix 824
# execute if score greencache pkt_cache matches 832 run team modify placeholder_2 suffix 832
# execute if score greencache pkt_cache matches 840 run team modify placeholder_2 suffix 840
# execute if score greencache pkt_cache matches 848 run team modify placeholder_2 suffix 848
# execute if score greencache pkt_cache matches 856 run team modify placeholder_2 suffix 856
# execute if score greencache pkt_cache matches 864 run team modify placeholder_2 suffix 864
# execute if score greencache pkt_cache matches 872 run team modify placeholder_2 suffix 872
# execute if score greencache pkt_cache matches 880 run team modify placeholder_2 suffix 880
# execute if score greencache pkt_cache matches 888 run team modify placeholder_2 suffix 888
# execute if score greencache pkt_cache matches 896 run team modify placeholder_2 suffix 896
# execute if score greencache pkt_cache matches 904 run team modify placeholder_2 suffix 904
# execute if score greencache pkt_cache matches 912 run team modify placeholder_2 suffix 912
# execute if score greencache pkt_cache matches 920 run team modify placeholder_2 suffix 920
# execute if score greencache pkt_cache matches 928 run team modify placeholder_2 suffix 928
# execute if score greencache pkt_cache matches 936 run team modify placeholder_2 suffix 936
# execute if score greencache pkt_cache matches 944 run team modify placeholder_2 suffix 944
# execute if score greencache pkt_cache matches 952 run team modify placeholder_2 suffix 952
# execute if score greencache pkt_cache matches 960 run team modify placeholder_2 suffix 960
# execute if score greencache pkt_cache matches 968 run team modify placeholder_2 suffix 968
# execute if score greencache pkt_cache matches 976 run team modify placeholder_2 suffix 976
# execute if score greencache pkt_cache matches 984 run team modify placeholder_2 suffix 984
# execute if score greencache pkt_cache matches 992 run team modify placeholder_2 suffix 992
# execute if score greencache pkt_cache matches 1000 run team modify placeholder_2 suffix 1000
# execute if score greencache pkt_cache matches 1008 run team modify placeholder_2 suffix 1008
# execute if score greencache pkt_cache matches 1016 run team modify placeholder_2 suffix 1016
# execute if score greencache pkt_cache matches 1024 run team modify placeholder_2 suffix 1024
# execute if score greencache pkt_cache matches 1032 run team modify placeholder_2 suffix 1032
# execute if score greencache pkt_cache matches 1040 run team modify placeholder_2 suffix 1040
# execute if score greencache pkt_cache matches 1048 run team modify placeholder_2 suffix 1048
# execute if score greencache pkt_cache matches 1056 run team modify placeholder_2 suffix 1056
# execute if score greencache pkt_cache matches 1064 run team modify placeholder_2 suffix 1064
# execute if score greencache pkt_cache matches 1072 run team modify placeholder_2 suffix 1072
# execute if score greencache pkt_cache matches 1080 run team modify placeholder_2 suffix 1080
# execute if score greencache pkt_cache matches 1088 run team modify placeholder_2 suffix 1088
# execute if score greencache pkt_cache matches 1096 run team modify placeholder_2 suffix 1096
# execute if score greencache pkt_cache matches 1104 run team modify placeholder_2 suffix 1104
# execute if score greencache pkt_cache matches 1112 run team modify placeholder_2 suffix 1112
# execute if score greencache pkt_cache matches 1120 run team modify placeholder_2 suffix 1120
# execute if score greencache pkt_cache matches 1128 run team modify placeholder_2 suffix 1128
# execute if score greencache pkt_cache matches 1136 run team modify placeholder_2 suffix 1136
# execute if score greencache pkt_cache matches 1144 run team modify placeholder_2 suffix 1144
# execute if score greencache pkt_cache matches 1152 run team modify placeholder_2 suffix 1152
# execute if score greencache pkt_cache matches 1160 run team modify placeholder_2 suffix 1160
# execute if score greencache pkt_cache matches 1168 run team modify placeholder_2 suffix 1168
# execute if score greencache pkt_cache matches 1176 run team modify placeholder_2 suffix 1176
# execute if score greencache pkt_cache matches 1184 run team modify placeholder_2 suffix 1184
# execute if score greencache pkt_cache matches 1192 run team modify placeholder_2 suffix 1192
# execute if score greencache pkt_cache matches 1200 run team modify placeholder_2 suffix 1200
# execute if score greencache pkt_cache matches 1208 run team modify placeholder_2 suffix 1208
# execute if score greencache pkt_cache matches 1216 run team modify placeholder_2 suffix 1216
# execute if score greencache pkt_cache matches 1224 run team modify placeholder_2 suffix 1224
# execute if score greencache pkt_cache matches 1232 run team modify placeholder_2 suffix 1232
# execute if score greencache pkt_cache matches 1240 run team modify placeholder_2 suffix 1240
# execute if score greencache pkt_cache matches 1248 run team modify placeholder_2 suffix 1248
# execute if score greencache pkt_cache matches 1256 run team modify placeholder_2 suffix 1256
# execute if score greencache pkt_cache matches 1264 run team modify placeholder_2 suffix 1264
# execute if score greencache pkt_cache matches 1272 run team modify placeholder_2 suffix 1272
# execute if score greencache pkt_cache matches 1280 run team modify placeholder_2 suffix 1280
# execute if score greencache pkt_cache matches 1288 run team modify placeholder_2 suffix 1288
# execute if score greencache pkt_cache matches 1296 run team modify placeholder_2 suffix 1296
# execute if score greencache pkt_cache matches 1304 run team modify placeholder_2 suffix 1304
# execute if score greencache pkt_cache matches 1312 run team modify placeholder_2 suffix 1312
# execute if score greencache pkt_cache matches 1320 run team modify placeholder_2 suffix 1320
# execute if score greencache pkt_cache matches 1328 run team modify placeholder_2 suffix 1328
# execute if score greencache pkt_cache matches 1336 run team modify placeholder_2 suffix 1336
# execute if score greencache pkt_cache matches 1344 run team modify placeholder_2 suffix 1344
# execute if score greencache pkt_cache matches 1352 run team modify placeholder_2 suffix 1352
# execute if score greencache pkt_cache matches 1360 run team modify placeholder_2 suffix 1360
# execute if score greencache pkt_cache matches 1368 run team modify placeholder_2 suffix 1368
# execute if score greencache pkt_cache matches 1376 run team modify placeholder_2 suffix 1376
# execute if score greencache pkt_cache matches 1384 run team modify placeholder_2 suffix 1384
# execute if score greencache pkt_cache matches 1392 run team modify placeholder_2 suffix 1392
# execute if score greencache pkt_cache matches 1400 run team modify placeholder_2 suffix 1400
# execute if score greencache pkt_cache matches 1408 run team modify placeholder_2 suffix 1408
# execute if score greencache pkt_cache matches 1416 run team modify placeholder_2 suffix 1416
# execute if score greencache pkt_cache matches 1424 run team modify placeholder_2 suffix 1424
# execute if score greencache pkt_cache matches 1432 run team modify placeholder_2 suffix 1432
# execute if score greencache pkt_cache matches 1440 run team modify placeholder_2 suffix 1440
# execute if score greencache pkt_cache matches 1448 run team modify placeholder_2 suffix 1448
# execute if score greencache pkt_cache matches 1456 run team modify placeholder_2 suffix 1456
# execute if score greencache pkt_cache matches 1464 run team modify placeholder_2 suffix 1464
# execute if score greencache pkt_cache matches 1472 run team modify placeholder_2 suffix 1472
# execute if score greencache pkt_cache matches 1480 run team modify placeholder_2 suffix 1480
# execute if score greencache pkt_cache matches 1488 run team modify placeholder_2 suffix 1488
# execute if score greencache pkt_cache matches 1496 run team modify placeholder_2 suffix 1496
# execute if score greencache pkt_cache matches 1504 run team modify placeholder_2 suffix 1504
# execute if score greencache pkt_cache matches 1512 run team modify placeholder_2 suffix 1512
# execute if score greencache pkt_cache matches 1520 run team modify placeholder_2 suffix 1520
# execute if score greencache pkt_cache matches 1528 run team modify placeholder_2 suffix 1528
# execute if score greencache pkt_cache matches 1536 run team modify placeholder_2 suffix 1536
# execute if score greencache pkt_cache matches 1544 run team modify placeholder_2 suffix 1544
# execute if score greencache pkt_cache matches 1552 run team modify placeholder_2 suffix 1552
# execute if score greencache pkt_cache matches 1560 run team modify placeholder_2 suffix 1560
# execute if score greencache pkt_cache matches 1568 run team modify placeholder_2 suffix 1568
# execute if score greencache pkt_cache matches 1576 run team modify placeholder_2 suffix 1576
# execute if score greencache pkt_cache matches 1584 run team modify placeholder_2 suffix 1584
# execute if score greencache pkt_cache matches 1592 run team modify placeholder_2 suffix 1592
# execute if score greencache pkt_cache matches 1600 run team modify placeholder_2 suffix 1600
# execute if score greencache pkt_cache matches 1608 run team modify placeholder_2 suffix 1608
# execute if score greencache pkt_cache matches 1616 run team modify placeholder_2 suffix 1616
# execute if score greencache pkt_cache matches 1624 run team modify placeholder_2 suffix 1624
# execute if score greencache pkt_cache matches 1632 run team modify placeholder_2 suffix 1632
# execute if score greencache pkt_cache matches 1640 run team modify placeholder_2 suffix 1640
# execute if score greencache pkt_cache matches 1648 run team modify placeholder_2 suffix 1648
# execute if score greencache pkt_cache matches 1656 run team modify placeholder_2 suffix 1656
# execute if score greencache pkt_cache matches 1664 run team modify placeholder_2 suffix 1664
# execute if score greencache pkt_cache matches 1672 run team modify placeholder_2 suffix 1672
# execute if score greencache pkt_cache matches 1680 run team modify placeholder_2 suffix 1680
# execute if score greencache pkt_cache matches 1688 run team modify placeholder_2 suffix 1688
# execute if score greencache pkt_cache matches 1696 run team modify placeholder_2 suffix 1696
# execute if score greencache pkt_cache matches 1704 run team modify placeholder_2 suffix 1704
# execute if score greencache pkt_cache matches 1712 run team modify placeholder_2 suffix 1712
# execute if score greencache pkt_cache matches 1720 run team modify placeholder_2 suffix 1720
# execute if score greencache pkt_cache matches 1728 run team modify placeholder_2 suffix 1728
# execute if score greencache pkt_cache matches 1736 run team modify placeholder_2 suffix 1736
# execute if score greencache pkt_cache matches 1744 run team modify placeholder_2 suffix 1744
# execute if score greencache pkt_cache matches 1752 run team modify placeholder_2 suffix 1752
# execute if score greencache pkt_cache matches 1760 run team modify placeholder_2 suffix 1760
# execute if score greencache pkt_cache matches 1768 run team modify placeholder_2 suffix 1768
# execute if score greencache pkt_cache matches 1776 run team modify placeholder_2 suffix 1776
# execute if score greencache pkt_cache matches 1784 run team modify placeholder_2 suffix 1784
# execute if score greencache pkt_cache matches 1792 run team modify placeholder_2 suffix 1792
# execute if score greencache pkt_cache matches 1800 run team modify placeholder_2 suffix 1800
# execute if score greencache pkt_cache matches 1808 run team modify placeholder_2 suffix 1808
# execute if score greencache pkt_cache matches 1816 run team modify placeholder_2 suffix 1816
# execute if score greencache pkt_cache matches 1824 run team modify placeholder_2 suffix 1824
# execute if score greencache pkt_cache matches 1832 run team modify placeholder_2 suffix 1832
# execute if score greencache pkt_cache matches 1840 run team modify placeholder_2 suffix 1840
# execute if score greencache pkt_cache matches 1848 run team modify placeholder_2 suffix 1848
# execute if score greencache pkt_cache matches 1856 run team modify placeholder_2 suffix 1856
# execute if score greencache pkt_cache matches 1864 run team modify placeholder_2 suffix 1864
# execute if score greencache pkt_cache matches 1872 run team modify placeholder_2 suffix 1872
# execute if score greencache pkt_cache matches 1880 run team modify placeholder_2 suffix 1880
# execute if score greencache pkt_cache matches 1888 run team modify placeholder_2 suffix 1888
# execute if score greencache pkt_cache matches 1896 run team modify placeholder_2 suffix 1896
# execute if score greencache pkt_cache matches 1904 run team modify placeholder_2 suffix 1904
# execute if score greencache pkt_cache matches 1912 run team modify placeholder_2 suffix 1912
# execute if score greencache pkt_cache matches 1920 run team modify placeholder_2 suffix 1920
# execute if score greencache pkt_cache matches 1928 run team modify placeholder_2 suffix 1928
# execute if score greencache pkt_cache matches 1936 run team modify placeholder_2 suffix 1936
# execute if score greencache pkt_cache matches 1944 run team modify placeholder_2 suffix 1944
# execute if score greencache pkt_cache matches 1952 run team modify placeholder_2 suffix 1952
# execute if score greencache pkt_cache matches 1960 run team modify placeholder_2 suffix 1960
# execute if score greencache pkt_cache matches 1968 run team modify placeholder_2 suffix 1968
# execute if score greencache pkt_cache matches 1976 run team modify placeholder_2 suffix 1976
# execute if score greencache pkt_cache matches 1984 run team modify placeholder_2 suffix 1984
# execute if score greencache pkt_cache matches 1992 run team modify placeholder_2 suffix 1992
# execute if score greencache pkt_cache matches 2000 run team modify placeholder_2 suffix 2000
# execute if score greencache pkt_cache matches 2008 run team modify placeholder_2 suffix 2008
# execute if score greencache pkt_cache matches 2016 run team modify placeholder_2 suffix 2016
# execute if score greencache pkt_cache matches 2024 run team modify placeholder_2 suffix 2024
# execute if score greencache pkt_cache matches 2032 run team modify placeholder_2 suffix 2032
# execute if score greencache pkt_cache matches 2040 run team modify placeholder_2 suffix 2040
# execute if score greencache pkt_cache matches 2048 run team modify placeholder_2 suffix 2048
# execute if score greencache pkt_cache matches 2056 run team modify placeholder_2 suffix 2056
# execute if score greencache pkt_cache matches 2064 run team modify placeholder_2 suffix 2064
# execute if score greencache pkt_cache matches 2072 run team modify placeholder_2 suffix 2072
# execute if score greencache pkt_cache matches 2080 run team modify placeholder_2 suffix 2080
# execute if score greencache pkt_cache matches 2088 run team modify placeholder_2 suffix 2088
# execute if score greencache pkt_cache matches 2096 run team modify placeholder_2 suffix 2096
# execute if score greencache pkt_cache matches 2104 run team modify placeholder_2 suffix 2104
# execute if score greencache pkt_cache matches 2112 run team modify placeholder_2 suffix 2112
# execute if score greencache pkt_cache matches 2120 run team modify placeholder_2 suffix 2120
# execute if score greencache pkt_cache matches 2128 run team modify placeholder_2 suffix 2128
# execute if score greencache pkt_cache matches 2136 run team modify placeholder_2 suffix 2136
# execute if score greencache pkt_cache matches 2144 run team modify placeholder_2 suffix 2144
# execute if score greencache pkt_cache matches 2152 run team modify placeholder_2 suffix 2152
# execute if score greencache pkt_cache matches 2160 run team modify placeholder_2 suffix 2160
# execute if score greencache pkt_cache matches 2168 run team modify placeholder_2 suffix 2168
# execute if score greencache pkt_cache matches 2176 run team modify placeholder_2 suffix 2176
# execute if score greencache pkt_cache matches 2184 run team modify placeholder_2 suffix 2184
# execute if score greencache pkt_cache matches 2192 run team modify placeholder_2 suffix 2192
# execute if score greencache pkt_cache matches 2200 run team modify placeholder_2 suffix 2200
# execute if score greencache pkt_cache matches 2208 run team modify placeholder_2 suffix 2208
# execute if score greencache pkt_cache matches 2216 run team modify placeholder_2 suffix 2216
# execute if score greencache pkt_cache matches 2224 run team modify placeholder_2 suffix 2224
# execute if score greencache pkt_cache matches 2232 run team modify placeholder_2 suffix 2232
# execute if score greencache pkt_cache matches 2240 run team modify placeholder_2 suffix 2240
# execute if score greencache pkt_cache matches 2248 run team modify placeholder_2 suffix 2248
# execute if score greencache pkt_cache matches 2256 run team modify placeholder_2 suffix 2256
# execute if score greencache pkt_cache matches 2264 run team modify placeholder_2 suffix 2264
# execute if score greencache pkt_cache matches 2272 run team modify placeholder_2 suffix 2272
# execute if score greencache pkt_cache matches 2280 run team modify placeholder_2 suffix 2280
# execute if score greencache pkt_cache matches 2288 run team modify placeholder_2 suffix 2288
# execute if score greencache pkt_cache matches 2296 run team modify placeholder_2 suffix 2296
# execute if score greencache pkt_cache matches 2304 run team modify placeholder_2 suffix 2304
# execute if score greencache pkt_cache matches 2312 run team modify placeholder_2 suffix 2312
# execute if score greencache pkt_cache matches 2320 run team modify placeholder_2 suffix 2320
# execute if score greencache pkt_cache matches 2328 run team modify placeholder_2 suffix 2328
# execute if score greencache pkt_cache matches 2336 run team modify placeholder_2 suffix 2336
# execute if score greencache pkt_cache matches 2344 run team modify placeholder_2 suffix 2344
# execute if score greencache pkt_cache matches 2352 run team modify placeholder_2 suffix 2352
# execute if score greencache pkt_cache matches 2360 run team modify placeholder_2 suffix 2360
# execute if score greencache pkt_cache matches 2368 run team modify placeholder_2 suffix 2368
# execute if score greencache pkt_cache matches 2376 run team modify placeholder_2 suffix 2376
# execute if score greencache pkt_cache matches 2384 run team modify placeholder_2 suffix 2384
# execute if score greencache pkt_cache matches 2392 run team modify placeholder_2 suffix 2392
# execute if score greencache pkt_cache matches 2400 run team modify placeholder_2 suffix 2400
# execute if score greencache pkt_cache matches 2408 run team modify placeholder_2 suffix 2408
# execute if score greencache pkt_cache matches 2416 run team modify placeholder_2 suffix 2416
# execute if score greencache pkt_cache matches 2424 run team modify placeholder_2 suffix 2424
# execute if score greencache pkt_cache matches 2432 run team modify placeholder_2 suffix 2432
# execute if score greencache pkt_cache matches 2440 run team modify placeholder_2 suffix 2440
# execute if score greencache pkt_cache matches 2448 run team modify placeholder_2 suffix 2448
# execute if score greencache pkt_cache matches 2456 run team modify placeholder_2 suffix 2456
# execute if score greencache pkt_cache matches 2464 run team modify placeholder_2 suffix 2464
# execute if score greencache pkt_cache matches 2472 run team modify placeholder_2 suffix 2472
# execute if score greencache pkt_cache matches 2480 run team modify placeholder_2 suffix 2480
# execute if score greencache pkt_cache matches 2488 run team modify placeholder_2 suffix 2488
# execute if score greencache pkt_cache matches 2496 run team modify placeholder_2 suffix 2496
# execute if score greencache pkt_cache matches 2504 run team modify placeholder_2 suffix 2504
# execute if score greencache pkt_cache matches 2512 run team modify placeholder_2 suffix 2512
# execute if score greencache pkt_cache matches 2520 run team modify placeholder_2 suffix 2520
# execute if score greencache pkt_cache matches 2528 run team modify placeholder_2 suffix 2528
# execute if score greencache pkt_cache matches 2536 run team modify placeholder_2 suffix 2536
# execute if score greencache pkt_cache matches 2544 run team modify placeholder_2 suffix 2544
# execute if score greencache pkt_cache matches 2552 run team modify placeholder_2 suffix 2552
# execute if score greencache pkt_cache matches 2560 run team modify placeholder_2 suffix 2560
# execute if score greencache pkt_cache matches 2568 run team modify placeholder_2 suffix 2568
# execute if score greencache pkt_cache matches 2576 run team modify placeholder_2 suffix 2576
# execute if score greencache pkt_cache matches 2584 run team modify placeholder_2 suffix 2584
# execute if score greencache pkt_cache matches 2592 run team modify placeholder_2 suffix 2592
# execute if score greencache pkt_cache matches 2600 run team modify placeholder_2 suffix 2600
# execute if score greencache pkt_cache matches 2608 run team modify placeholder_2 suffix 2608
# execute if score greencache pkt_cache matches 2616 run team modify placeholder_2 suffix 2616
# execute if score greencache pkt_cache matches 2624 run team modify placeholder_2 suffix 2624
# execute if score greencache pkt_cache matches 2632 run team modify placeholder_2 suffix 2632
# execute if score greencache pkt_cache matches 2640 run team modify placeholder_2 suffix 2640
# execute if score greencache pkt_cache matches 2648 run team modify placeholder_2 suffix 2648
# execute if score greencache pkt_cache matches 2656 run team modify placeholder_2 suffix 2656
# execute if score greencache pkt_cache matches 2664 run team modify placeholder_2 suffix 2664
# execute if score greencache pkt_cache matches 2672 run team modify placeholder_2 suffix 2672
# execute if score greencache pkt_cache matches 2680 run team modify placeholder_2 suffix 2680
# execute if score greencache pkt_cache matches 2688 run team modify placeholder_2 suffix 2688
# execute if score greencache pkt_cache matches 2696 run team modify placeholder_2 suffix 2696
# execute if score greencache pkt_cache matches 2704 run team modify placeholder_2 suffix 2704
# execute if score greencache pkt_cache matches 2712 run team modify placeholder_2 suffix 2712
# execute if score greencache pkt_cache matches 2720 run team modify placeholder_2 suffix 2720
# execute if score greencache pkt_cache matches 2728 run team modify placeholder_2 suffix 2728
# execute if score greencache pkt_cache matches 2736 run team modify placeholder_2 suffix 2736
# execute if score greencache pkt_cache matches 2744 run team modify placeholder_2 suffix 2744
# execute if score greencache pkt_cache matches 2752 run team modify placeholder_2 suffix 2752
# execute if score greencache pkt_cache matches 2760 run team modify placeholder_2 suffix 2760
# execute if score greencache pkt_cache matches 2768 run team modify placeholder_2 suffix 2768
# execute if score greencache pkt_cache matches 2776 run team modify placeholder_2 suffix 2776
# execute if score greencache pkt_cache matches 2784 run team modify placeholder_2 suffix 2784
# execute if score greencache pkt_cache matches 2792 run team modify placeholder_2 suffix 2792
# execute if score greencache pkt_cache matches 2800 run team modify placeholder_2 suffix 2800
# execute if score greencache pkt_cache matches 2808 run team modify placeholder_2 suffix 2808
# execute if score greencache pkt_cache matches 2816 run team modify placeholder_2 suffix 2816
# execute if score greencache pkt_cache matches 2824 run team modify placeholder_2 suffix 2824
# execute if score greencache pkt_cache matches 2832 run team modify placeholder_2 suffix 2832
# execute if score greencache pkt_cache matches 2840 run team modify placeholder_2 suffix 2840
# execute if score greencache pkt_cache matches 2848 run team modify placeholder_2 suffix 2848
# execute if score greencache pkt_cache matches 2856 run team modify placeholder_2 suffix 2856
# execute if score greencache pkt_cache matches 2864 run team modify placeholder_2 suffix 2864
# execute if score greencache pkt_cache matches 2872 run team modify placeholder_2 suffix 2872
# execute if score greencache pkt_cache matches 2880 run team modify placeholder_2 suffix 2880
# execute if score greencache pkt_cache matches 2888 run team modify placeholder_2 suffix 2888
# execute if score greencache pkt_cache matches 2896 run team modify placeholder_2 suffix 2896
# execute if score greencache pkt_cache matches 2904 run team modify placeholder_2 suffix 2904
# execute if score greencache pkt_cache matches 2912 run team modify placeholder_2 suffix 2912
# execute if score greencache pkt_cache matches 2920 run team modify placeholder_2 suffix 2920
# execute if score greencache pkt_cache matches 2928 run team modify placeholder_2 suffix 2928
# execute if score greencache pkt_cache matches 2936 run team modify placeholder_2 suffix 2936
# execute if score greencache pkt_cache matches 2944 run team modify placeholder_2 suffix 2944
# execute if score greencache pkt_cache matches 2952 run team modify placeholder_2 suffix 2952
# execute if score greencache pkt_cache matches 2960 run team modify placeholder_2 suffix 2960
# execute if score greencache pkt_cache matches 2968 run team modify placeholder_2 suffix 2968
# execute if score greencache pkt_cache matches 2976 run team modify placeholder_2 suffix 2976
# execute if score greencache pkt_cache matches 2984 run team modify placeholder_2 suffix 2984
# execute if score greencache pkt_cache matches 2992 run team modify placeholder_2 suffix 2992
# #endregion

# #region yellow
# execute if score yellowcache pkt_cache matches 0 run team modify placeholder_1 suffix 0
# execute if score yellowcache pkt_cache matches 8 run team modify placeholder_1 suffix 8
# execute if score yellowcache pkt_cache matches 16 run team modify placeholder_1 suffix 16
# execute if score yellowcache pkt_cache matches 24 run team modify placeholder_1 suffix 24
# execute if score yellowcache pkt_cache matches 32 run team modify placeholder_1 suffix 32
# execute if score yellowcache pkt_cache matches 40 run team modify placeholder_1 suffix 40
# execute if score yellowcache pkt_cache matches 48 run team modify placeholder_1 suffix 48
# execute if score yellowcache pkt_cache matches 56 run team modify placeholder_1 suffix 56
# execute if score yellowcache pkt_cache matches 64 run team modify placeholder_1 suffix 64
# execute if score yellowcache pkt_cache matches 72 run team modify placeholder_1 suffix 72
# execute if score yellowcache pkt_cache matches 80 run team modify placeholder_1 suffix 80
# execute if score yellowcache pkt_cache matches 88 run team modify placeholder_1 suffix 88
# execute if score yellowcache pkt_cache matches 96 run team modify placeholder_1 suffix 96
# execute if score yellowcache pkt_cache matches 104 run team modify placeholder_1 suffix 104
# execute if score yellowcache pkt_cache matches 112 run team modify placeholder_1 suffix 112
# execute if score yellowcache pkt_cache matches 120 run team modify placeholder_1 suffix 120
# execute if score yellowcache pkt_cache matches 128 run team modify placeholder_1 suffix 128
# execute if score yellowcache pkt_cache matches 136 run team modify placeholder_1 suffix 136
# execute if score yellowcache pkt_cache matches 144 run team modify placeholder_1 suffix 144
# execute if score yellowcache pkt_cache matches 152 run team modify placeholder_1 suffix 152
# execute if score yellowcache pkt_cache matches 160 run team modify placeholder_1 suffix 160
# execute if score yellowcache pkt_cache matches 168 run team modify placeholder_1 suffix 168
# execute if score yellowcache pkt_cache matches 176 run team modify placeholder_1 suffix 176
# execute if score yellowcache pkt_cache matches 184 run team modify placeholder_1 suffix 184
# execute if score yellowcache pkt_cache matches 192 run team modify placeholder_1 suffix 192
# execute if score yellowcache pkt_cache matches 200 run team modify placeholder_1 suffix 200
# execute if score yellowcache pkt_cache matches 208 run team modify placeholder_1 suffix 208
# execute if score yellowcache pkt_cache matches 216 run team modify placeholder_1 suffix 216
# execute if score yellowcache pkt_cache matches 224 run team modify placeholder_1 suffix 224
# execute if score yellowcache pkt_cache matches 232 run team modify placeholder_1 suffix 232
# execute if score yellowcache pkt_cache matches 240 run team modify placeholder_1 suffix 240
# execute if score yellowcache pkt_cache matches 248 run team modify placeholder_1 suffix 248
# execute if score yellowcache pkt_cache matches 256 run team modify placeholder_1 suffix 256
# execute if score yellowcache pkt_cache matches 264 run team modify placeholder_1 suffix 264
# execute if score yellowcache pkt_cache matches 272 run team modify placeholder_1 suffix 272
# execute if score yellowcache pkt_cache matches 280 run team modify placeholder_1 suffix 280
# execute if score yellowcache pkt_cache matches 288 run team modify placeholder_1 suffix 288
# execute if score yellowcache pkt_cache matches 296 run team modify placeholder_1 suffix 296
# execute if score yellowcache pkt_cache matches 304 run team modify placeholder_1 suffix 304
# execute if score yellowcache pkt_cache matches 312 run team modify placeholder_1 suffix 312
# execute if score yellowcache pkt_cache matches 320 run team modify placeholder_1 suffix 320
# execute if score yellowcache pkt_cache matches 328 run team modify placeholder_1 suffix 328
# execute if score yellowcache pkt_cache matches 336 run team modify placeholder_1 suffix 336
# execute if score yellowcache pkt_cache matches 344 run team modify placeholder_1 suffix 344
# execute if score yellowcache pkt_cache matches 352 run team modify placeholder_1 suffix 352
# execute if score yellowcache pkt_cache matches 360 run team modify placeholder_1 suffix 360
# execute if score yellowcache pkt_cache matches 368 run team modify placeholder_1 suffix 368
# execute if score yellowcache pkt_cache matches 376 run team modify placeholder_1 suffix 376
# execute if score yellowcache pkt_cache matches 384 run team modify placeholder_1 suffix 384
# execute if score yellowcache pkt_cache matches 392 run team modify placeholder_1 suffix 392
# execute if score yellowcache pkt_cache matches 400 run team modify placeholder_1 suffix 400
# execute if score yellowcache pkt_cache matches 408 run team modify placeholder_1 suffix 408
# execute if score yellowcache pkt_cache matches 416 run team modify placeholder_1 suffix 416
# execute if score yellowcache pkt_cache matches 424 run team modify placeholder_1 suffix 424
# execute if score yellowcache pkt_cache matches 432 run team modify placeholder_1 suffix 432
# execute if score yellowcache pkt_cache matches 440 run team modify placeholder_1 suffix 440
# execute if score yellowcache pkt_cache matches 448 run team modify placeholder_1 suffix 448
# execute if score yellowcache pkt_cache matches 456 run team modify placeholder_1 suffix 456
# execute if score yellowcache pkt_cache matches 464 run team modify placeholder_1 suffix 464
# execute if score yellowcache pkt_cache matches 472 run team modify placeholder_1 suffix 472
# execute if score yellowcache pkt_cache matches 480 run team modify placeholder_1 suffix 480
# execute if score yellowcache pkt_cache matches 488 run team modify placeholder_1 suffix 488
# execute if score yellowcache pkt_cache matches 496 run team modify placeholder_1 suffix 496
# execute if score yellowcache pkt_cache matches 504 run team modify placeholder_1 suffix 504
# execute if score yellowcache pkt_cache matches 512 run team modify placeholder_1 suffix 512
# execute if score yellowcache pkt_cache matches 520 run team modify placeholder_1 suffix 520
# execute if score yellowcache pkt_cache matches 528 run team modify placeholder_1 suffix 528
# execute if score yellowcache pkt_cache matches 536 run team modify placeholder_1 suffix 536
# execute if score yellowcache pkt_cache matches 544 run team modify placeholder_1 suffix 544
# execute if score yellowcache pkt_cache matches 552 run team modify placeholder_1 suffix 552
# execute if score yellowcache pkt_cache matches 560 run team modify placeholder_1 suffix 560
# execute if score yellowcache pkt_cache matches 568 run team modify placeholder_1 suffix 568
# execute if score yellowcache pkt_cache matches 576 run team modify placeholder_1 suffix 576
# execute if score yellowcache pkt_cache matches 584 run team modify placeholder_1 suffix 584
# execute if score yellowcache pkt_cache matches 592 run team modify placeholder_1 suffix 592
# execute if score yellowcache pkt_cache matches 600 run team modify placeholder_1 suffix 600
# execute if score yellowcache pkt_cache matches 608 run team modify placeholder_1 suffix 608
# execute if score yellowcache pkt_cache matches 616 run team modify placeholder_1 suffix 616
# execute if score yellowcache pkt_cache matches 624 run team modify placeholder_1 suffix 624
# execute if score yellowcache pkt_cache matches 632 run team modify placeholder_1 suffix 632
# execute if score yellowcache pkt_cache matches 640 run team modify placeholder_1 suffix 640
# execute if score yellowcache pkt_cache matches 648 run team modify placeholder_1 suffix 648
# execute if score yellowcache pkt_cache matches 656 run team modify placeholder_1 suffix 656
# execute if score yellowcache pkt_cache matches 664 run team modify placeholder_1 suffix 664
# execute if score yellowcache pkt_cache matches 672 run team modify placeholder_1 suffix 672
# execute if score yellowcache pkt_cache matches 680 run team modify placeholder_1 suffix 680
# execute if score yellowcache pkt_cache matches 688 run team modify placeholder_1 suffix 688
# execute if score yellowcache pkt_cache matches 696 run team modify placeholder_1 suffix 696
# execute if score yellowcache pkt_cache matches 704 run team modify placeholder_1 suffix 704
# execute if score yellowcache pkt_cache matches 712 run team modify placeholder_1 suffix 712
# execute if score yellowcache pkt_cache matches 720 run team modify placeholder_1 suffix 720
# execute if score yellowcache pkt_cache matches 728 run team modify placeholder_1 suffix 728
# execute if score yellowcache pkt_cache matches 736 run team modify placeholder_1 suffix 736
# execute if score yellowcache pkt_cache matches 744 run team modify placeholder_1 suffix 744
# execute if score yellowcache pkt_cache matches 752 run team modify placeholder_1 suffix 752
# execute if score yellowcache pkt_cache matches 760 run team modify placeholder_1 suffix 760
# execute if score yellowcache pkt_cache matches 768 run team modify placeholder_1 suffix 768
# execute if score yellowcache pkt_cache matches 776 run team modify placeholder_1 suffix 776
# execute if score yellowcache pkt_cache matches 784 run team modify placeholder_1 suffix 784
# execute if score yellowcache pkt_cache matches 792 run team modify placeholder_1 suffix 792
# execute if score yellowcache pkt_cache matches 800 run team modify placeholder_1 suffix 800
# execute if score yellowcache pkt_cache matches 808 run team modify placeholder_1 suffix 808
# execute if score yellowcache pkt_cache matches 816 run team modify placeholder_1 suffix 816
# execute if score yellowcache pkt_cache matches 824 run team modify placeholder_1 suffix 824
# execute if score yellowcache pkt_cache matches 832 run team modify placeholder_1 suffix 832
# execute if score yellowcache pkt_cache matches 840 run team modify placeholder_1 suffix 840
# execute if score yellowcache pkt_cache matches 848 run team modify placeholder_1 suffix 848
# execute if score yellowcache pkt_cache matches 856 run team modify placeholder_1 suffix 856
# execute if score yellowcache pkt_cache matches 864 run team modify placeholder_1 suffix 864
# execute if score yellowcache pkt_cache matches 872 run team modify placeholder_1 suffix 872
# execute if score yellowcache pkt_cache matches 880 run team modify placeholder_1 suffix 880
# execute if score yellowcache pkt_cache matches 888 run team modify placeholder_1 suffix 888
# execute if score yellowcache pkt_cache matches 896 run team modify placeholder_1 suffix 896
# execute if score yellowcache pkt_cache matches 904 run team modify placeholder_1 suffix 904
# execute if score yellowcache pkt_cache matches 912 run team modify placeholder_1 suffix 912
# execute if score yellowcache pkt_cache matches 920 run team modify placeholder_1 suffix 920
# execute if score yellowcache pkt_cache matches 928 run team modify placeholder_1 suffix 928
# execute if score yellowcache pkt_cache matches 936 run team modify placeholder_1 suffix 936
# execute if score yellowcache pkt_cache matches 944 run team modify placeholder_1 suffix 944
# execute if score yellowcache pkt_cache matches 952 run team modify placeholder_1 suffix 952
# execute if score yellowcache pkt_cache matches 960 run team modify placeholder_1 suffix 960
# execute if score yellowcache pkt_cache matches 968 run team modify placeholder_1 suffix 968
# execute if score yellowcache pkt_cache matches 976 run team modify placeholder_1 suffix 976
# execute if score yellowcache pkt_cache matches 984 run team modify placeholder_1 suffix 984
# execute if score yellowcache pkt_cache matches 992 run team modify placeholder_1 suffix 992
# execute if score yellowcache pkt_cache matches 1000 run team modify placeholder_1 suffix 1000
# execute if score yellowcache pkt_cache matches 1008 run team modify placeholder_1 suffix 1008
# execute if score yellowcache pkt_cache matches 1016 run team modify placeholder_1 suffix 1016
# execute if score yellowcache pkt_cache matches 1024 run team modify placeholder_1 suffix 1024
# execute if score yellowcache pkt_cache matches 1032 run team modify placeholder_1 suffix 1032
# execute if score yellowcache pkt_cache matches 1040 run team modify placeholder_1 suffix 1040
# execute if score yellowcache pkt_cache matches 1048 run team modify placeholder_1 suffix 1048
# execute if score yellowcache pkt_cache matches 1056 run team modify placeholder_1 suffix 1056
# execute if score yellowcache pkt_cache matches 1064 run team modify placeholder_1 suffix 1064
# execute if score yellowcache pkt_cache matches 1072 run team modify placeholder_1 suffix 1072
# execute if score yellowcache pkt_cache matches 1080 run team modify placeholder_1 suffix 1080
# execute if score yellowcache pkt_cache matches 1088 run team modify placeholder_1 suffix 1088
# execute if score yellowcache pkt_cache matches 1096 run team modify placeholder_1 suffix 1096
# execute if score yellowcache pkt_cache matches 1104 run team modify placeholder_1 suffix 1104
# execute if score yellowcache pkt_cache matches 1112 run team modify placeholder_1 suffix 1112
# execute if score yellowcache pkt_cache matches 1120 run team modify placeholder_1 suffix 1120
# execute if score yellowcache pkt_cache matches 1128 run team modify placeholder_1 suffix 1128
# execute if score yellowcache pkt_cache matches 1136 run team modify placeholder_1 suffix 1136
# execute if score yellowcache pkt_cache matches 1144 run team modify placeholder_1 suffix 1144
# execute if score yellowcache pkt_cache matches 1152 run team modify placeholder_1 suffix 1152
# execute if score yellowcache pkt_cache matches 1160 run team modify placeholder_1 suffix 1160
# execute if score yellowcache pkt_cache matches 1168 run team modify placeholder_1 suffix 1168
# execute if score yellowcache pkt_cache matches 1176 run team modify placeholder_1 suffix 1176
# execute if score yellowcache pkt_cache matches 1184 run team modify placeholder_1 suffix 1184
# execute if score yellowcache pkt_cache matches 1192 run team modify placeholder_1 suffix 1192
# execute if score yellowcache pkt_cache matches 1200 run team modify placeholder_1 suffix 1200
# execute if score yellowcache pkt_cache matches 1208 run team modify placeholder_1 suffix 1208
# execute if score yellowcache pkt_cache matches 1216 run team modify placeholder_1 suffix 1216
# execute if score yellowcache pkt_cache matches 1224 run team modify placeholder_1 suffix 1224
# execute if score yellowcache pkt_cache matches 1232 run team modify placeholder_1 suffix 1232
# execute if score yellowcache pkt_cache matches 1240 run team modify placeholder_1 suffix 1240
# execute if score yellowcache pkt_cache matches 1248 run team modify placeholder_1 suffix 1248
# execute if score yellowcache pkt_cache matches 1256 run team modify placeholder_1 suffix 1256
# execute if score yellowcache pkt_cache matches 1264 run team modify placeholder_1 suffix 1264
# execute if score yellowcache pkt_cache matches 1272 run team modify placeholder_1 suffix 1272
# execute if score yellowcache pkt_cache matches 1280 run team modify placeholder_1 suffix 1280
# execute if score yellowcache pkt_cache matches 1288 run team modify placeholder_1 suffix 1288
# execute if score yellowcache pkt_cache matches 1296 run team modify placeholder_1 suffix 1296
# execute if score yellowcache pkt_cache matches 1304 run team modify placeholder_1 suffix 1304
# execute if score yellowcache pkt_cache matches 1312 run team modify placeholder_1 suffix 1312
# execute if score yellowcache pkt_cache matches 1320 run team modify placeholder_1 suffix 1320
# execute if score yellowcache pkt_cache matches 1328 run team modify placeholder_1 suffix 1328
# execute if score yellowcache pkt_cache matches 1336 run team modify placeholder_1 suffix 1336
# execute if score yellowcache pkt_cache matches 1344 run team modify placeholder_1 suffix 1344
# execute if score yellowcache pkt_cache matches 1352 run team modify placeholder_1 suffix 1352
# execute if score yellowcache pkt_cache matches 1360 run team modify placeholder_1 suffix 1360
# execute if score yellowcache pkt_cache matches 1368 run team modify placeholder_1 suffix 1368
# execute if score yellowcache pkt_cache matches 1376 run team modify placeholder_1 suffix 1376
# execute if score yellowcache pkt_cache matches 1384 run team modify placeholder_1 suffix 1384
# execute if score yellowcache pkt_cache matches 1392 run team modify placeholder_1 suffix 1392
# execute if score yellowcache pkt_cache matches 1400 run team modify placeholder_1 suffix 1400
# execute if score yellowcache pkt_cache matches 1408 run team modify placeholder_1 suffix 1408
# execute if score yellowcache pkt_cache matches 1416 run team modify placeholder_1 suffix 1416
# execute if score yellowcache pkt_cache matches 1424 run team modify placeholder_1 suffix 1424
# execute if score yellowcache pkt_cache matches 1432 run team modify placeholder_1 suffix 1432
# execute if score yellowcache pkt_cache matches 1440 run team modify placeholder_1 suffix 1440
# execute if score yellowcache pkt_cache matches 1448 run team modify placeholder_1 suffix 1448
# execute if score yellowcache pkt_cache matches 1456 run team modify placeholder_1 suffix 1456
# execute if score yellowcache pkt_cache matches 1464 run team modify placeholder_1 suffix 1464
# execute if score yellowcache pkt_cache matches 1472 run team modify placeholder_1 suffix 1472
# execute if score yellowcache pkt_cache matches 1480 run team modify placeholder_1 suffix 1480
# execute if score yellowcache pkt_cache matches 1488 run team modify placeholder_1 suffix 1488
# execute if score yellowcache pkt_cache matches 1496 run team modify placeholder_1 suffix 1496
# execute if score yellowcache pkt_cache matches 1504 run team modify placeholder_1 suffix 1504
# execute if score yellowcache pkt_cache matches 1512 run team modify placeholder_1 suffix 1512
# execute if score yellowcache pkt_cache matches 1520 run team modify placeholder_1 suffix 1520
# execute if score yellowcache pkt_cache matches 1528 run team modify placeholder_1 suffix 1528
# execute if score yellowcache pkt_cache matches 1536 run team modify placeholder_1 suffix 1536
# execute if score yellowcache pkt_cache matches 1544 run team modify placeholder_1 suffix 1544
# execute if score yellowcache pkt_cache matches 1552 run team modify placeholder_1 suffix 1552
# execute if score yellowcache pkt_cache matches 1560 run team modify placeholder_1 suffix 1560
# execute if score yellowcache pkt_cache matches 1568 run team modify placeholder_1 suffix 1568
# execute if score yellowcache pkt_cache matches 1576 run team modify placeholder_1 suffix 1576
# execute if score yellowcache pkt_cache matches 1584 run team modify placeholder_1 suffix 1584
# execute if score yellowcache pkt_cache matches 1592 run team modify placeholder_1 suffix 1592
# execute if score yellowcache pkt_cache matches 1600 run team modify placeholder_1 suffix 1600
# execute if score yellowcache pkt_cache matches 1608 run team modify placeholder_1 suffix 1608
# execute if score yellowcache pkt_cache matches 1616 run team modify placeholder_1 suffix 1616
# execute if score yellowcache pkt_cache matches 1624 run team modify placeholder_1 suffix 1624
# execute if score yellowcache pkt_cache matches 1632 run team modify placeholder_1 suffix 1632
# execute if score yellowcache pkt_cache matches 1640 run team modify placeholder_1 suffix 1640
# execute if score yellowcache pkt_cache matches 1648 run team modify placeholder_1 suffix 1648
# execute if score yellowcache pkt_cache matches 1656 run team modify placeholder_1 suffix 1656
# execute if score yellowcache pkt_cache matches 1664 run team modify placeholder_1 suffix 1664
# execute if score yellowcache pkt_cache matches 1672 run team modify placeholder_1 suffix 1672
# execute if score yellowcache pkt_cache matches 1680 run team modify placeholder_1 suffix 1680
# execute if score yellowcache pkt_cache matches 1688 run team modify placeholder_1 suffix 1688
# execute if score yellowcache pkt_cache matches 1696 run team modify placeholder_1 suffix 1696
# execute if score yellowcache pkt_cache matches 1704 run team modify placeholder_1 suffix 1704
# execute if score yellowcache pkt_cache matches 1712 run team modify placeholder_1 suffix 1712
# execute if score yellowcache pkt_cache matches 1720 run team modify placeholder_1 suffix 1720
# execute if score yellowcache pkt_cache matches 1728 run team modify placeholder_1 suffix 1728
# execute if score yellowcache pkt_cache matches 1736 run team modify placeholder_1 suffix 1736
# execute if score yellowcache pkt_cache matches 1744 run team modify placeholder_1 suffix 1744
# execute if score yellowcache pkt_cache matches 1752 run team modify placeholder_1 suffix 1752
# execute if score yellowcache pkt_cache matches 1760 run team modify placeholder_1 suffix 1760
# execute if score yellowcache pkt_cache matches 1768 run team modify placeholder_1 suffix 1768
# execute if score yellowcache pkt_cache matches 1776 run team modify placeholder_1 suffix 1776
# execute if score yellowcache pkt_cache matches 1784 run team modify placeholder_1 suffix 1784
# execute if score yellowcache pkt_cache matches 1792 run team modify placeholder_1 suffix 1792
# execute if score yellowcache pkt_cache matches 1800 run team modify placeholder_1 suffix 1800
# execute if score yellowcache pkt_cache matches 1808 run team modify placeholder_1 suffix 1808
# execute if score yellowcache pkt_cache matches 1816 run team modify placeholder_1 suffix 1816
# execute if score yellowcache pkt_cache matches 1824 run team modify placeholder_1 suffix 1824
# execute if score yellowcache pkt_cache matches 1832 run team modify placeholder_1 suffix 1832
# execute if score yellowcache pkt_cache matches 1840 run team modify placeholder_1 suffix 1840
# execute if score yellowcache pkt_cache matches 1848 run team modify placeholder_1 suffix 1848
# execute if score yellowcache pkt_cache matches 1856 run team modify placeholder_1 suffix 1856
# execute if score yellowcache pkt_cache matches 1864 run team modify placeholder_1 suffix 1864
# execute if score yellowcache pkt_cache matches 1872 run team modify placeholder_1 suffix 1872
# execute if score yellowcache pkt_cache matches 1880 run team modify placeholder_1 suffix 1880
# execute if score yellowcache pkt_cache matches 1888 run team modify placeholder_1 suffix 1888
# execute if score yellowcache pkt_cache matches 1896 run team modify placeholder_1 suffix 1896
# execute if score yellowcache pkt_cache matches 1904 run team modify placeholder_1 suffix 1904
# execute if score yellowcache pkt_cache matches 1912 run team modify placeholder_1 suffix 1912
# execute if score yellowcache pkt_cache matches 1920 run team modify placeholder_1 suffix 1920
# execute if score yellowcache pkt_cache matches 1928 run team modify placeholder_1 suffix 1928
# execute if score yellowcache pkt_cache matches 1936 run team modify placeholder_1 suffix 1936
# execute if score yellowcache pkt_cache matches 1944 run team modify placeholder_1 suffix 1944
# execute if score yellowcache pkt_cache matches 1952 run team modify placeholder_1 suffix 1952
# execute if score yellowcache pkt_cache matches 1960 run team modify placeholder_1 suffix 1960
# execute if score yellowcache pkt_cache matches 1968 run team modify placeholder_1 suffix 1968
# execute if score yellowcache pkt_cache matches 1976 run team modify placeholder_1 suffix 1976
# execute if score yellowcache pkt_cache matches 1984 run team modify placeholder_1 suffix 1984
# execute if score yellowcache pkt_cache matches 1992 run team modify placeholder_1 suffix 1992
# execute if score yellowcache pkt_cache matches 2000 run team modify placeholder_1 suffix 2000
# execute if score yellowcache pkt_cache matches 2008 run team modify placeholder_1 suffix 2008
# execute if score yellowcache pkt_cache matches 2016 run team modify placeholder_1 suffix 2016
# execute if score yellowcache pkt_cache matches 2024 run team modify placeholder_1 suffix 2024
# execute if score yellowcache pkt_cache matches 2032 run team modify placeholder_1 suffix 2032
# execute if score yellowcache pkt_cache matches 2040 run team modify placeholder_1 suffix 2040
# execute if score yellowcache pkt_cache matches 2048 run team modify placeholder_1 suffix 2048
# execute if score yellowcache pkt_cache matches 2056 run team modify placeholder_1 suffix 2056
# execute if score yellowcache pkt_cache matches 2064 run team modify placeholder_1 suffix 2064
# execute if score yellowcache pkt_cache matches 2072 run team modify placeholder_1 suffix 2072
# execute if score yellowcache pkt_cache matches 2080 run team modify placeholder_1 suffix 2080
# execute if score yellowcache pkt_cache matches 2088 run team modify placeholder_1 suffix 2088
# execute if score yellowcache pkt_cache matches 2096 run team modify placeholder_1 suffix 2096
# execute if score yellowcache pkt_cache matches 2104 run team modify placeholder_1 suffix 2104
# execute if score yellowcache pkt_cache matches 2112 run team modify placeholder_1 suffix 2112
# execute if score yellowcache pkt_cache matches 2120 run team modify placeholder_1 suffix 2120
# execute if score yellowcache pkt_cache matches 2128 run team modify placeholder_1 suffix 2128
# execute if score yellowcache pkt_cache matches 2136 run team modify placeholder_1 suffix 2136
# execute if score yellowcache pkt_cache matches 2144 run team modify placeholder_1 suffix 2144
# execute if score yellowcache pkt_cache matches 2152 run team modify placeholder_1 suffix 2152
# execute if score yellowcache pkt_cache matches 2160 run team modify placeholder_1 suffix 2160
# execute if score yellowcache pkt_cache matches 2168 run team modify placeholder_1 suffix 2168
# execute if score yellowcache pkt_cache matches 2176 run team modify placeholder_1 suffix 2176
# execute if score yellowcache pkt_cache matches 2184 run team modify placeholder_1 suffix 2184
# execute if score yellowcache pkt_cache matches 2192 run team modify placeholder_1 suffix 2192
# execute if score yellowcache pkt_cache matches 2200 run team modify placeholder_1 suffix 2200
# execute if score yellowcache pkt_cache matches 2208 run team modify placeholder_1 suffix 2208
# execute if score yellowcache pkt_cache matches 2216 run team modify placeholder_1 suffix 2216
# execute if score yellowcache pkt_cache matches 2224 run team modify placeholder_1 suffix 2224
# execute if score yellowcache pkt_cache matches 2232 run team modify placeholder_1 suffix 2232
# execute if score yellowcache pkt_cache matches 2240 run team modify placeholder_1 suffix 2240
# execute if score yellowcache pkt_cache matches 2248 run team modify placeholder_1 suffix 2248
# execute if score yellowcache pkt_cache matches 2256 run team modify placeholder_1 suffix 2256
# execute if score yellowcache pkt_cache matches 2264 run team modify placeholder_1 suffix 2264
# execute if score yellowcache pkt_cache matches 2272 run team modify placeholder_1 suffix 2272
# execute if score yellowcache pkt_cache matches 2280 run team modify placeholder_1 suffix 2280
# execute if score yellowcache pkt_cache matches 2288 run team modify placeholder_1 suffix 2288
# execute if score yellowcache pkt_cache matches 2296 run team modify placeholder_1 suffix 2296
# execute if score yellowcache pkt_cache matches 2304 run team modify placeholder_1 suffix 2304
# execute if score yellowcache pkt_cache matches 2312 run team modify placeholder_1 suffix 2312
# execute if score yellowcache pkt_cache matches 2320 run team modify placeholder_1 suffix 2320
# execute if score yellowcache pkt_cache matches 2328 run team modify placeholder_1 suffix 2328
# execute if score yellowcache pkt_cache matches 2336 run team modify placeholder_1 suffix 2336
# execute if score yellowcache pkt_cache matches 2344 run team modify placeholder_1 suffix 2344
# execute if score yellowcache pkt_cache matches 2352 run team modify placeholder_1 suffix 2352
# execute if score yellowcache pkt_cache matches 2360 run team modify placeholder_1 suffix 2360
# execute if score yellowcache pkt_cache matches 2368 run team modify placeholder_1 suffix 2368
# execute if score yellowcache pkt_cache matches 2376 run team modify placeholder_1 suffix 2376
# execute if score yellowcache pkt_cache matches 2384 run team modify placeholder_1 suffix 2384
# execute if score yellowcache pkt_cache matches 2392 run team modify placeholder_1 suffix 2392
# execute if score yellowcache pkt_cache matches 2400 run team modify placeholder_1 suffix 2400
# execute if score yellowcache pkt_cache matches 2408 run team modify placeholder_1 suffix 2408
# execute if score yellowcache pkt_cache matches 2416 run team modify placeholder_1 suffix 2416
# execute if score yellowcache pkt_cache matches 2424 run team modify placeholder_1 suffix 2424
# execute if score yellowcache pkt_cache matches 2432 run team modify placeholder_1 suffix 2432
# execute if score yellowcache pkt_cache matches 2440 run team modify placeholder_1 suffix 2440
# execute if score yellowcache pkt_cache matches 2448 run team modify placeholder_1 suffix 2448
# execute if score yellowcache pkt_cache matches 2456 run team modify placeholder_1 suffix 2456
# execute if score yellowcache pkt_cache matches 2464 run team modify placeholder_1 suffix 2464
# execute if score yellowcache pkt_cache matches 2472 run team modify placeholder_1 suffix 2472
# execute if score yellowcache pkt_cache matches 2480 run team modify placeholder_1 suffix 2480
# execute if score yellowcache pkt_cache matches 2488 run team modify placeholder_1 suffix 2488
# execute if score yellowcache pkt_cache matches 2496 run team modify placeholder_1 suffix 2496
# execute if score yellowcache pkt_cache matches 2504 run team modify placeholder_1 suffix 2504
# execute if score yellowcache pkt_cache matches 2512 run team modify placeholder_1 suffix 2512
# execute if score yellowcache pkt_cache matches 2520 run team modify placeholder_1 suffix 2520
# execute if score yellowcache pkt_cache matches 2528 run team modify placeholder_1 suffix 2528
# execute if score yellowcache pkt_cache matches 2536 run team modify placeholder_1 suffix 2536
# execute if score yellowcache pkt_cache matches 2544 run team modify placeholder_1 suffix 2544
# execute if score yellowcache pkt_cache matches 2552 run team modify placeholder_1 suffix 2552
# execute if score yellowcache pkt_cache matches 2560 run team modify placeholder_1 suffix 2560
# execute if score yellowcache pkt_cache matches 2568 run team modify placeholder_1 suffix 2568
# execute if score yellowcache pkt_cache matches 2576 run team modify placeholder_1 suffix 2576
# execute if score yellowcache pkt_cache matches 2584 run team modify placeholder_1 suffix 2584
# execute if score yellowcache pkt_cache matches 2592 run team modify placeholder_1 suffix 2592
# execute if score yellowcache pkt_cache matches 2600 run team modify placeholder_1 suffix 2600
# execute if score yellowcache pkt_cache matches 2608 run team modify placeholder_1 suffix 2608
# execute if score yellowcache pkt_cache matches 2616 run team modify placeholder_1 suffix 2616
# execute if score yellowcache pkt_cache matches 2624 run team modify placeholder_1 suffix 2624
# execute if score yellowcache pkt_cache matches 2632 run team modify placeholder_1 suffix 2632
# execute if score yellowcache pkt_cache matches 2640 run team modify placeholder_1 suffix 2640
# execute if score yellowcache pkt_cache matches 2648 run team modify placeholder_1 suffix 2648
# execute if score yellowcache pkt_cache matches 2656 run team modify placeholder_1 suffix 2656
# execute if score yellowcache pkt_cache matches 2664 run team modify placeholder_1 suffix 2664
# execute if score yellowcache pkt_cache matches 2672 run team modify placeholder_1 suffix 2672
# execute if score yellowcache pkt_cache matches 2680 run team modify placeholder_1 suffix 2680
# execute if score yellowcache pkt_cache matches 2688 run team modify placeholder_1 suffix 2688
# execute if score yellowcache pkt_cache matches 2696 run team modify placeholder_1 suffix 2696
# execute if score yellowcache pkt_cache matches 2704 run team modify placeholder_1 suffix 2704
# execute if score yellowcache pkt_cache matches 2712 run team modify placeholder_1 suffix 2712
# execute if score yellowcache pkt_cache matches 2720 run team modify placeholder_1 suffix 2720
# execute if score yellowcache pkt_cache matches 2728 run team modify placeholder_1 suffix 2728
# execute if score yellowcache pkt_cache matches 2736 run team modify placeholder_1 suffix 2736
# execute if score yellowcache pkt_cache matches 2744 run team modify placeholder_1 suffix 2744
# execute if score yellowcache pkt_cache matches 2752 run team modify placeholder_1 suffix 2752
# execute if score yellowcache pkt_cache matches 2760 run team modify placeholder_1 suffix 2760
# execute if score yellowcache pkt_cache matches 2768 run team modify placeholder_1 suffix 2768
# execute if score yellowcache pkt_cache matches 2776 run team modify placeholder_1 suffix 2776
# execute if score yellowcache pkt_cache matches 2784 run team modify placeholder_1 suffix 2784
# execute if score yellowcache pkt_cache matches 2792 run team modify placeholder_1 suffix 2792
# execute if score yellowcache pkt_cache matches 2800 run team modify placeholder_1 suffix 2800
# execute if score yellowcache pkt_cache matches 2808 run team modify placeholder_1 suffix 2808
# execute if score yellowcache pkt_cache matches 2816 run team modify placeholder_1 suffix 2816
# execute if score yellowcache pkt_cache matches 2824 run team modify placeholder_1 suffix 2824
# execute if score yellowcache pkt_cache matches 2832 run team modify placeholder_1 suffix 2832
# execute if score yellowcache pkt_cache matches 2840 run team modify placeholder_1 suffix 2840
# execute if score yellowcache pkt_cache matches 2848 run team modify placeholder_1 suffix 2848
# execute if score yellowcache pkt_cache matches 2856 run team modify placeholder_1 suffix 2856
# execute if score yellowcache pkt_cache matches 2864 run team modify placeholder_1 suffix 2864
# execute if score yellowcache pkt_cache matches 2872 run team modify placeholder_1 suffix 2872
# execute if score yellowcache pkt_cache matches 2880 run team modify placeholder_1 suffix 2880
# execute if score yellowcache pkt_cache matches 2888 run team modify placeholder_1 suffix 2888
# execute if score yellowcache pkt_cache matches 2896 run team modify placeholder_1 suffix 2896
# execute if score yellowcache pkt_cache matches 2904 run team modify placeholder_1 suffix 2904
# execute if score yellowcache pkt_cache matches 2912 run team modify placeholder_1 suffix 2912
# execute if score yellowcache pkt_cache matches 2920 run team modify placeholder_1 suffix 2920
# execute if score yellowcache pkt_cache matches 2928 run team modify placeholder_1 suffix 2928
# execute if score yellowcache pkt_cache matches 2936 run team modify placeholder_1 suffix 2936
# execute if score yellowcache pkt_cache matches 2944 run team modify placeholder_1 suffix 2944
# execute if score yellowcache pkt_cache matches 2952 run team modify placeholder_1 suffix 2952
# execute if score yellowcache pkt_cache matches 2960 run team modify placeholder_1 suffix 2960
# execute if score yellowcache pkt_cache matches 2968 run team modify placeholder_1 suffix 2968
# execute if score yellowcache pkt_cache matches 2976 run team modify placeholder_1 suffix 2976
# execute if score yellowcache pkt_cache matches 2984 run team modify placeholder_1 suffix 2984
# execute if score yellowcache pkt_cache matches 2992 run team modify placeholder_1 suffix 2992
# #endregion

# #endregion

# #endregion