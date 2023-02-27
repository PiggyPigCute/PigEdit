
#as: player

scoreboard players remove pz pigedit.data 128

fill ~128 ~ ~128 ~ ~ ~ air replace barrel{CustomName:'{"italic":false,"text":"pigedit.fill.air"}'}

execute if score pz pigedit.data matches 0.. positioned ~ ~ ~1 run function pigedit:cmd/fill/pre_z