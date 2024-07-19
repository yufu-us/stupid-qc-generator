/*
    stupid qc generator lol xd lmao 0_o
    just copy all needed smds to table like
    local tbl = {
        'medge_EvadeRollRight.smd',
        'medge_GrabHeaveUp.smd',
        -- and so on
    }
*/
local tbl = {
    
}
local folder = 'medge_anims'
local result = ''
local count = table.Count(tbl)
local writen = 0
for k, v in pairs(tbl) do
    local name = string.Split(v, '.')
    name = name[1]
    local data = [[ 
$sequence "]] .. name .. [[" {
    "]] .. folder .. '/' .. v .. [[" 
    fadein 0.2 
    fadeout 0.2 
    fps ]] .. 30 .. [[ 
    loop
}]]
    result = result .. data
    writen = writen + 1
    if writen == count then
        print(result)
        SetClipboardText(result)
    end
end