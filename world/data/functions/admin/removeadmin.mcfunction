scoreboard players reset @s giveop
scoreboard players tag @s remove op
tellraw @a ["",{"text":"\u73fe\u5728\u306e\u7ba1\u7406\u8005\u306f","color":"yellow"},{"selector":"@a[tag=op]","color":"yellow"},{"text":"\u3067\u3059\u3002","color":"yellow"}]