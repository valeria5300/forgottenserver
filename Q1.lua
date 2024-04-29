--[[Original code: 

local function releaseStorage(player)
player:setStorageValue(1000, -1)
end
function onLogout(player)
if player:getStorageValue(1000) == 1 then
addEvent(releaseStorage, 1000, player)
end
return true
end

]]


local function releaseStorage(player)
    player:setStorageValue(1000, -1)
    end
    
    function onLogout(player)
        if player:getStorageValue(1000) == 1 then --[[ using the control structure 
        //“if” to release the storage without using an event, and using recursion instead]]
            releaseStorage (1000, player)
        end
        return true
    end
    