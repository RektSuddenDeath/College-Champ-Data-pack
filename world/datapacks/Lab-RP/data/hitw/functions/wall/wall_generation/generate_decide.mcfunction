
execute if score direction hitw_wave_info matches 1 run function hitw:wall/east/generate
execute if score direction hitw_wave_info matches 2 run function hitw:wall/north/generate
execute if score direction hitw_wave_info matches 3 run function hitw:wall/south/generate
execute if score direction hitw_wave_info matches 4 run function hitw:wall/west/generate

# Sike a single
#execute if score direction hitw_wave_info matches 1 if score sike_amount hitw_wave_info matches 1 if score sike_type hitw_wave_info matches 1 run function hitw:wall/east/sike_generate
execute if score direction hitw_wave_info matches 1 if score sike_amount hitw_wave_info matches 1.. if score sike_type hitw_wave_info matches 1 run function hitw:wall/north/sike_generate
execute if score direction hitw_wave_info matches 1 if score sike_amount hitw_wave_info matches 1.. if score sike_type hitw_wave_info matches 2 run function hitw:wall/south/sike_generate
execute if score direction hitw_wave_info matches 1 if score sike_amount hitw_wave_info matches 1.. if score sike_type hitw_wave_info matches 3 run function hitw:wall/west/sike_generate

execute if score direction hitw_wave_info matches 2 if score sike_amount hitw_wave_info matches 1.. if score sike_type hitw_wave_info matches 1 run function hitw:wall/east/sike_generate
#execute if score direction hitw_wave_info matches 2 if score sike_amount hitw_wave_info matches 1 if score sike_type hitw_wave_info matches 2 run function hitw:wall/north/sike_generate
execute if score direction hitw_wave_info matches 2 if score sike_amount hitw_wave_info matches 1.. if score sike_type hitw_wave_info matches 2 run function hitw:wall/south/sike_generate
execute if score direction hitw_wave_info matches 2 if score sike_amount hitw_wave_info matches 1.. if score sike_type hitw_wave_info matches 3 run function hitw:wall/west/sike_generate

execute if score direction hitw_wave_info matches 3 if score sike_amount hitw_wave_info matches 1.. if score sike_type hitw_wave_info matches 1 run function hitw:wall/east/sike_generate
execute if score direction hitw_wave_info matches 3 if score sike_amount hitw_wave_info matches 1.. if score sike_type hitw_wave_info matches 2 run function hitw:wall/north/sike_generate
#execute if score direction hitw_wave_info matches 3 if score sike_amount hitw_wave_info matches 1 if score sike_type hitw_wave_info matches 3 run function hitw:wall/south/sike_generate
execute if score direction hitw_wave_info matches 3 if score sike_amount hitw_wave_info matches 1.. if score sike_type hitw_wave_info matches 3 run function hitw:wall/west/sike_generate

execute if score direction hitw_wave_info matches 4 if score sike_amount hitw_wave_info matches 1.. if score sike_type hitw_wave_info matches 1 run function hitw:wall/east/sike_generate
execute if score direction hitw_wave_info matches 4 if score sike_amount hitw_wave_info matches 1.. if score sike_type hitw_wave_info matches 2 run function hitw:wall/north/sike_generate
execute if score direction hitw_wave_info matches 4 if score sike_amount hitw_wave_info matches 1.. if score sike_type hitw_wave_info matches 3 run function hitw:wall/south/sike_generate
#execute if score direction hitw_wave_info matches 4 if score sike_amount hitw_wave_info matches 1 if score sike_type hitw_wave_info matches 4 run function hitw:wall/west/sike_generate

# Sike Two
#execute if score direction hitw_wave_info matches 1 if score sike_amount hitw_wave_info matches 1 if score sike_type hitw_wave_info matches 1 run function hitw:wall/east/sike_generate
execute if score direction hitw_wave_info matches 1 if score sike_amount hitw_wave_info matches 2.. if score sike_type hitw_wave_info matches 2 run function hitw:wall/north/sike_generate
execute if score direction hitw_wave_info matches 1 if score sike_amount hitw_wave_info matches 2.. if score sike_type hitw_wave_info matches 3 run function hitw:wall/south/sike_generate
execute if score direction hitw_wave_info matches 1 if score sike_amount hitw_wave_info matches 2.. if score sike_type hitw_wave_info matches 1 run function hitw:wall/west/sike_generate

execute if score direction hitw_wave_info matches 2 if score sike_amount hitw_wave_info matches 2.. if score sike_type hitw_wave_info matches 2 run function hitw:wall/east/sike_generate
#execute if score direction hitw_wave_info matches 2 if score sike_amount hitw_wave_info matches 1 if score sike_type hitw_wave_info matches 2 run function hitw:wall/north/sike_generate
execute if score direction hitw_wave_info matches 2 if score sike_amount hitw_wave_info matches 2.. if score sike_type hitw_wave_info matches 3 run function hitw:wall/south/sike_generate
execute if score direction hitw_wave_info matches 2 if score sike_amount hitw_wave_info matches 2.. if score sike_type hitw_wave_info matches 1 run function hitw:wall/west/sike_generate

execute if score direction hitw_wave_info matches 3 if score sike_amount hitw_wave_info matches 2.. if score sike_type hitw_wave_info matches 2 run function hitw:wall/east/sike_generate
execute if score direction hitw_wave_info matches 3 if score sike_amount hitw_wave_info matches 2.. if score sike_type hitw_wave_info matches 3 run function hitw:wall/north/sike_generate
#execute if score direction hitw_wave_info matches 3 if score sike_amount hitw_wave_info matches 1 if score sike_type hitw_wave_info matches 3 run function hitw:wall/south/sike_generate
execute if score direction hitw_wave_info matches 3 if score sike_amount hitw_wave_info matches 2.. if score sike_type hitw_wave_info matches 1 run function hitw:wall/west/sike_generate

execute if score direction hitw_wave_info matches 4 if score sike_amount hitw_wave_info matches 2.. if score sike_type hitw_wave_info matches 2 run function hitw:wall/east/sike_generate
execute if score direction hitw_wave_info matches 4 if score sike_amount hitw_wave_info matches 2.. if score sike_type hitw_wave_info matches 3 run function hitw:wall/north/sike_generate
execute if score direction hitw_wave_info matches 4 if score sike_amount hitw_wave_info matches 2.. if score sike_type hitw_wave_info matches 1 run function hitw:wall/south/sike_generate
#execute if score direction hitw_wave_info matches 4 if score sike_amount hitw_wave_info matches 1 if score sike_type hitw_wave_info matches 4 run function hitw:wall/west/sike_generate
# Sike Three
#execute if score direction hitw_wave_info matches 1 if score sike_amount hitw_wave_info matches 1 if score sike_type hitw_wave_info matches 1 run function hitw:wall/east/sike_generate
execute if score direction hitw_wave_info matches 1 if score sike_amount hitw_wave_info matches 3.. if score sike_type hitw_wave_info matches 3 run function hitw:wall/north/sike_generate
execute if score direction hitw_wave_info matches 1 if score sike_amount hitw_wave_info matches 3.. if score sike_type hitw_wave_info matches 1 run function hitw:wall/south/sike_generate
execute if score direction hitw_wave_info matches 1 if score sike_amount hitw_wave_info matches 3.. if score sike_type hitw_wave_info matches 2 run function hitw:wall/west/sike_generate

execute if score direction hitw_wave_info matches 2 if score sike_amount hitw_wave_info matches 3.. if score sike_type hitw_wave_info matches 3 run function hitw:wall/east/sike_generate
#execute if score direction hitw_wave_info matches 2 if score sike_amount hitw_wave_info matches 1 if score sike_type hitw_wave_info matches 2 run function hitw:wall/north/sike_generate
execute if score direction hitw_wave_info matches 2 if score sike_amount hitw_wave_info matches 3.. if score sike_type hitw_wave_info matches 1 run function hitw:wall/south/sike_generate
execute if score direction hitw_wave_info matches 2 if score sike_amount hitw_wave_info matches 3.. if score sike_type hitw_wave_info matches 2 run function hitw:wall/west/sike_generate

execute if score direction hitw_wave_info matches 3 if score sike_amount hitw_wave_info matches 3.. if score sike_type hitw_wave_info matches 3 run function hitw:wall/east/sike_generate
execute if score direction hitw_wave_info matches 3 if score sike_amount hitw_wave_info matches 3.. if score sike_type hitw_wave_info matches 1 run function hitw:wall/north/sike_generate
#execute if score direction hitw_wave_info matches 3 if score sike_amount hitw_wave_info matches 1 if score sike_type hitw_wave_info matches 3 run function hitw:wall/south/sike_generate
execute if score direction hitw_wave_info matches 3 if score sike_amount hitw_wave_info matches 3.. if score sike_type hitw_wave_info matches 2 run function hitw:wall/west/sike_generate

execute if score direction hitw_wave_info matches 4 if score sike_amount hitw_wave_info matches 3.. if score sike_type hitw_wave_info matches 3 run function hitw:wall/east/sike_generate
execute if score direction hitw_wave_info matches 4 if score sike_amount hitw_wave_info matches 3.. if score sike_type hitw_wave_info matches 1 run function hitw:wall/north/sike_generate
execute if score direction hitw_wave_info matches 4 if score sike_amount hitw_wave_info matches 3.. if score sike_type hitw_wave_info matches 2 run function hitw:wall/south/sike_generate
#execute if score direction hitw_wave_info matches 4 if score sike_amount hitw_wave_info matches 1 if score sike_type hitw_wave_info matches 4 run function hitw:wall/west/sike_generate