$data modify storage pigedit:data data.mask[$(i)].neg set value "unless"
$data modify storage pigedit:data data.mask[$(i)].negated set value 1b
$data modify storage pigedit:data data.mask[$(i)].display set value "!$(display)"