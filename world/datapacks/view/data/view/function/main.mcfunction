
execute if entity @s[distance=..10] unless block ^ ^ ^0.2 #view:command_blocks positioned ^ ^ ^0.2 run function view:main
execute if block ^ ^ ^0.2 #view:command_blocks run function view:show
execute if block ^ ^ ^0.2 #minecraft:all_signs run function view:showsign