


$execute if score back chaos_multi matches 0..9 run data modify storage master:event_status multi_uniform set value "$(front).0$(back)"
$execute if score back chaos_multi matches 10.. run data modify storage master:event_status multi_uniform set value "$(front).$(back)"