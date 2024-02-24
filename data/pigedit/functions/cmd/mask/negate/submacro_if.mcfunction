$data modify storage pigedit:data data.mask[$(i)].neg set value "if"
$data remove storage pigedit:data data.mask[$(i)].negated
$data modify storage pigedit:data data.mask[$(i)].display set from storage pigedit:data data.mask[$(i)].base_display