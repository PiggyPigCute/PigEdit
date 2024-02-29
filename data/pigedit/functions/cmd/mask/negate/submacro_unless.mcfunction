$data modify storage pigedit:data data.mask[$(i)].neg_cond set value "unless"
$data modify storage pigedit:data data.mask[$(i)].neg_bool set value 1b
$data modify storage pigedit:data data.mask[$(i)].neg_display set value "!"