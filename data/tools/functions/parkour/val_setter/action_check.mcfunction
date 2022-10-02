
# Checks if you hold shift and executes either the function of the current setting or switches to the next one
execute unless predicate main:is_sneaking run function tools:parkour/val_setter/setting_check
execute if predicate main:is_sneaking run function tools:parkour/val_setter/cycle_settings
