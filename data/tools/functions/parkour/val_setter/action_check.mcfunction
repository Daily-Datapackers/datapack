
advancement revoke @s only tools:val_setter

execute unless predicate main:is_sneaking run function tools:parkour/val_setter/setting_check
execute if predicate main:is_sneaking run function tools:parkour/val_setter/cycle_settings
