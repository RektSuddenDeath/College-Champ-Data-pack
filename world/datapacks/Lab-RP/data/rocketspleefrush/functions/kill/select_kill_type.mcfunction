
execute if entity @s[team=red] unless entity @p[team=red,tag=rsr_killed_teammate] run function rocketspleefrush:kill/killmsg
execute if entity @s[team=blue] unless entity @p[team=blue,tag=rsr_killed_teammate] run function rocketspleefrush:kill/killmsg
execute if entity @s[team=green] unless entity @p[team=green,tag=rsr_killed_teammate] run function rocketspleefrush:kill/killmsg
execute if entity @s[team=yellow] unless entity @p[team=yellow,tag=rsr_killed_teammate] run function rocketspleefrush:kill/killmsg
execute if entity @s[team=cyan] unless entity @p[team=cyan,tag=rsr_killed_teammate] run function rocketspleefrush:kill/killmsg
execute if entity @s[team=pink] unless entity @p[team=pink,tag=rsr_killed_teammate] run function rocketspleefrush:kill/killmsg
execute if entity @s[team=orange] unless entity @p[team=orange,tag=rsr_killed_teammate] run function rocketspleefrush:kill/killmsg
execute if entity @s[team=purple] unless entity @p[team=purple,tag=rsr_killed_teammate] run function rocketspleefrush:kill/killmsg

execute if entity @s[team=red] if entity @p[team=red,tag=rsr_killed_teammate] run function rocketspleefrush:kill/friendly_killmsg
execute if entity @s[team=blue] if entity @p[team=blue,tag=rsr_killed_teammate] run function rocketspleefrush:kill/friendly_killmsg
execute if entity @s[team=green] if entity @p[team=green,tag=rsr_killed_teammate] run function rocketspleefrush:kill/friendly_killmsg
execute if entity @s[team=yellow] if entity @p[team=yellow,tag=rsr_killed_teammate] run function rocketspleefrush:kill/friendly_killmsg
execute if entity @s[team=cyan] if entity @p[team=cyan,tag=rsr_killed_teammate] run function rocketspleefrush:kill/friendly_killmsg
execute if entity @s[team=pink] if entity @p[team=pink,tag=rsr_killed_teammate] run function rocketspleefrush:kill/friendly_killmsg
execute if entity @s[team=orange] if entity @p[team=orange,tag=rsr_killed_teammate] run function rocketspleefrush:kill/friendly_killmsg
execute if entity @s[team=purple] if entity @p[team=purple,tag=rsr_killed_teammate] run function rocketspleefrush:kill/friendly_killmsg