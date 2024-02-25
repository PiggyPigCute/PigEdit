# With Pattern (set "block")
execute if score .sum pigedit.data matches 1.. run function pigedit:cmd/fill/hard/h__pattern

# All cases
function pigedit:cmd/fill/hard/l__setblock with storage pigedit:data data.var