

execute if entity @s[name=mituki_doll] run data modify storage minecraft:commandview text set from block ^ ^ ^0.2 Command
execute if entity @s[tag=guestview] run data modify storage minecraft:commandview guest set from block ^ ^ ^0.2 Command
execute if entity @s[name=mituki_doll] positioned ^ ^ ^0.2 align xyz run tp @e[tag=foo,limit=1] ~ ~-0.2 ~
execute if entity @s[tag=guestview] positioned ^ ^ ^0.2 align xyz run tp @e[tag=hoo,limit=1] ~ ~-0.2 ~
execute if entity @s[name=mituki_doll] run data merge entity @e[tag=foo,limit=1] {text:'{"storage":"commandview","nbt":"text"}'}
execute if entity @s[tag=guestview] run data merge entity @e[tag=hoo,limit=1] {text:'{"storage":"commandview","nbt":"guest"}'}
execute align xyz if entity @s[name=mituki_doll] run tp @e[tag=foo] ~0.5 ~0.5 ~0.5
execute align xyz if entity @s[tag=guestview] run tp @e[tag=hoo] ~0.5 ~0.5 ~0.5


execute align xyz if entity @s[name=mituki_doll] as @e[tag=foo] at @s facing entity mituki_doll eyes run tp @s ^ ^ ^1 ~ 0
execute align xyz if entity @s[tag=guestview] as @e[tag=hoo] at @s facing entity @a[tag=guestview] eyes run tp @s ^ ^ ^1 ~ 0

execute as @e[tag=foo,y_rotation=-30..30] at @s run data merge entity @s {Rotation:[0F,0F]}
execute as @e[tag=foo,y_rotation=60..120] at @s run data merge entity @s {Rotation:[90F,0F]}
execute as @e[tag=foo,y_rotation=150..210] at @s run data merge entity @s {Rotation:[180F,0F]}
execute as @e[tag=foo,y_rotation=240..300] at @s run data merge entity @s {Rotation:[270F,0F]}

execute as @e[tag=hoo,y_rotation=-30..30] at @s run data merge entity @s {Rotation:[0F,0F]}
execute as @e[tag=hoo,y_rotation=60..120] at @s run data merge entity @s {Rotation:[90F,0F]}
execute as @e[tag=hoo,y_rotation=150..210] at @s run data merge entity @s {Rotation:[180F,0F]}
execute as @e[tag=hoo,y_rotation=240..300] at @s run data merge entity @s {Rotation:[270F,0F]}