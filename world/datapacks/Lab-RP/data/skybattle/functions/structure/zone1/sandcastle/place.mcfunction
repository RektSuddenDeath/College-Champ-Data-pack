
forceload add 21900 21900 22100 22100

# CLEAR OUT WATER
fill 21978 15 21957 21977 0 21956 air replace bubble_column
fill 22001 14 21949 21999 0 21951 air replace bubble_column
fill 22023 15 21956 22022 0 21957 air replace bubble_column
fill 22044 15 21977 22043 0 21978 air replace bubble_column
fill 22051 14 22001 22049 0 21999 air replace bubble_column
fill 22044 15 22023 22043 0 22022 air replace bubble_column
fill 22023 15 22044 22022 0 22043 air replace bubble_column
fill 22001 14 22049 21999 0 22051 air replace bubble_column
fill 21978 15 22043 21977 0 22044 air replace bubble_column
fill 21956 15 22023 21957 0 22022 air replace bubble_column
fill 21949 14 22001 21951 0 21999 air replace bubble_column
fill 21956 15 21977 21957 0 21978 air replace bubble_column
fill 21983 19 21983 21983 0 21983 air replace bubble_column
fill 22000 19 21977 22000 0 21977 air replace bubble_column
fill 22017 19 21983 22017 0 21983 air replace bubble_column
fill 22023 19 22000 22023 0 22000 air replace bubble_column
fill 22017 19 22017 22017 0 22017 air replace bubble_column
fill 22000 19 22023 22000 0 22023 air replace bubble_column
fill 21983 19 22017 21983 0 22017 air replace bubble_column
fill 21977 19 22000 21977 0 22000 air replace bubble_column
# QUEUE EACH ZONE
schedule function skybattle:structure/zone1/sandcastle/1 10t
schedule function skybattle:structure/zone1/sandcastle/2 30t
schedule function skybattle:structure/zone1/sandcastle/3 50t
schedule function skybattle:structure/zone1/sandcastle/4 70t
schedule function skybattle:structure/zone1/sandcastle/5 90t
schedule function skybattle:structure/zone1/sandcastle/6 110t
schedule function skybattle:structure/zone1/sandcastle/7 130t
schedule function skybattle:structure/zone1/sandcastle/8 150t
schedule function skybattle:structure/zone1/sandcastle/9 170t
schedule function skybattle:structure/zone1/sandcastle/10 190t
schedule function skybattle:structure/zone1/sandcastle/reset 195t