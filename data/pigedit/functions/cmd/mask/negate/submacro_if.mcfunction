$data modify storage pigedit:data data.mask[$(i)].neg_cond set value "if"
$data remove storage pigedit:data data.mask[$(i)].neg_bool
$data modify storage pigedit:data data.mask[$(i)].neg_display set value ""