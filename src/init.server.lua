--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_access
--

Access = {}

-- Event is emited after resource is loded
AddEventHandler('onServerResourceStart', function (resource)
    if resource == "ft_access" then
        TriggerEvent('ft_players:onResourceReady')
    end
end)

-- Event before player join
AddEventHandler("playerConnecting", function(name, setCallback, deferrals)

  -- mark this connection as deferred
  deferrals.defer()

  for number, check in pairs(Access) do
    check(deferrals)
  end

  -- accept the client, or reject the connection by passing a reason to `done`
  deferrals.done()

end)

-- Add check
function AddAccessCheck(callback)

  Access.insert(callback)

end
