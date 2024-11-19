
# Tries to find a killer
$execute if entity @s[advancements={utils:id/$(temp_pid)=true}] unless entity @a[limit=1,advancements={utils:killed/$(temp_pid)=true}] run function sg:kill/tagkiller with storage combat_tag


# Fails to get a killer
$execute if entity @s[advancements={utils:id/$(temp_pid)=true}] unless entity @a[limit=1,advancements={utils:killed/$(temp_pid)=true}] run tag @s add sg_nokiller