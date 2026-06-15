

execute if entity @s[name=mituki_doll] unless entity @e[tag=foo] run tag mituki_doll add presummon
execute if entity @s[name=mituki_doll] if entity @e[tag=foo] run kill @e[tag=foo]
execute if entity @s[tag=presummon] run summon text_display ~ ~ ~ {Tags:["foo"]}
tag mituki_doll remove presummon

execute if entity @s[tag=guestview] unless entity @e[tag=hoo] run tag @a[tag=guestview] add presummon
execute if entity @s[tag=guestview] if entity @e[tag=hoo] run kill @e[tag=hoo]
execute if entity @s[tag=presummon] run summon text_display ~ ~ ~ {Tags:["hoo"]}
tag @s[tag=guestview] remove presummon