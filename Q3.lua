--[[Original code: 

function do_sth_with_PlayerParty(playerId, membername)
player = Player(playerId)
local party = player:getParty()
for k,v in pairs(party:getMembers()) do
if v == Player(membername) then
party:removeMember(Player(membername))
end
end
end

]]

function removePartyMember(playerId, membername)
    --made the player variable local 
    local player = Player(playerId)
    local party = player:getParty()
    --adding a binary variable to keep track if the member has been removed
    local isRemoved = false
    for k,v in pairs(party:getMembers()) do

        if v == Player(membername) then
            party:removeMember(Player(membername))
            isRemoved = true
            break 
        end
    end

    --printing message if the party member was removed or not 
    if isRemoved then 
        print ("The player left the party")
    else 
        print ("The member couldn't be removed from the party")
    end

end