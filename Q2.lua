--[[Original code: 

function printSmallGuildNames(memberCount)
-- this method is supposed to print names of all guilds that have less than memberCount max members
local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;"
local resultId = db.storeQuery(string.format(selectGuildQuery, memberCount))
local guildName = result.getString("name")
print(guildName)
end

]]

function printSmallGuildNames(memberCount)
    -- this method is supposed to print names of all guilds that have less than memberCount max members
    local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;"
    local resultId = db.storeQuery(string.format(selectGuildQuery, memberCount))
    

    -- if the query has results then it shows the guild member's names
    if resultId ~= nil then 
        while db.Row(resultId) do 
             local guildName = result.getString("name")
            print(guildName)
        end 
        -- free the memory
        db.freeResult(resultId)
    -- if the query doesn't have any results it shows an error message
    else 
        print("Error")
    end
end