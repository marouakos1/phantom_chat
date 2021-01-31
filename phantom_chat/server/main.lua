--[[

  ESX RP Chat

--]]

TriggerEvent('~{:JHJ:Phantom:ny:}~29870-37277-39698-85640', function(obj) ESX = obj end)

function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height']

		}
	else
		return nil
	end
end

 AddEventHandler('chatMessage', function(source, name, message)
      if string.sub(message, 1, string.len("/")) ~= "/" then
          local name = getIdentity(source)

		TriggerClientEvent("sendProximityMessageMe", -1, source, name.firstname, message)
      end
      CancelEvent()
  end)

RegisterCommand('ekab', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    fal2 = playerName
        TriggerEvent("es:getPlayers", function(pl)
            for k,v in pairs(pl) do
                TriggerEvent("es:getPlayerFromId", k, function(user)
                    if(user.getPermissions() > 0) and xPlayer.job.name == 'ambulance'then
                        TriggerClientEvent('chat:addMessage', k, {
                            template = '<div style="padding: 0.5vw; margin: 0.5vw; box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); background: linear-gradient(315deg, #220257 5%, #8d35f2 94%); border-radius: 3px;"><i class=""><img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784221697099563008/ekab-copy-1.png" width="30" height="30"></i> ΕΚΑΒ ( {2} | {3} ) : {1}</div>',

							args = { fal, msg, fal2, source }
                        })
                        if source then
                        TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'ekab','[EKAB]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
                        end
                    elseif (user.getPermissions() > 0)  then
                        if source then
                        TriggerClientEvent('chat:addMessage', source, {args = {'⚠You are not a Doctor⚠'}, color = {255, 255, 0}})
                        end
                    end

                    if user.getPermissions() < 1 and xPlayer.job.name == 'ambulance' then
                        TriggerClientEvent('chat:addMessage', k, {
                            template = '<div style="padding: 0.5vw; margin: 0.5vw; font-weight:bold;  box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); background: linear-gradient(315deg, #220257 5%, #8d35f2 94%); border-radius: 3px;"><i class=""></i><img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784221697099563008/ekab-copy-1.png" width="30" height="30"> ΕΚΑΒ: {1}</div>',
                            args = { fal, msg }
                        })
                        if source then
                        TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'ekab','[EKAB]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
                        end
                    elseif user.getPermissions() < 1  then
                        if source then
                        TriggerClientEvent('chat:addMessage', source, {args = {'⚠ You are not a Doctor ⚠'}, color = {255, 255, 0}})
                        end
                    end
                end)
            end
        end)
end, false)

RegisterCommand('hit', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    fal2 = playerName
        TriggerEvent("es:getPlayers", function(pl)
            for k,v in pairs(pl) do
                TriggerEvent("es:getPlayerFromId", k, function(user)
                    if(user.getPermissions() > 0) and xPlayer.job.name == 'hitman'then
                        TriggerClientEvent('chat:addMessage', k, {
                        template = '<div style="padding: 0.5vw;  margin: 0.5vw; box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); background: linear-gradient(315deg, #210101 0%, #ab312c 74%); border-radius: 3px;"></i><img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784233783262969868/circle-cropped_12.png" width="25" height="25"> - Hitman [{0}]: {1}</div> ',

							args = { fal, msg, fal2, source }
                        })
                        if source then
                        TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'ekab','[EKAB]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
                        end
                    elseif (user.getPermissions() > 0)  then
                        if source then
                        TriggerClientEvent('chat:addMessage', source, {args = {'⚠ ΔΕΝ ΕΙΣΑΙ HITMAN ⚠'}, color = {255, 255, 0}})
                        end
                    end

                    if user.getPermissions() < 1 and xPlayer.job.name == 'hitman' then
                        TriggerClientEvent('chat:addMessage', k, {
                        template = '<div style="padding: 0.5vw;  margin: 0.5vw; box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); background: linear-gradient(315deg, #210101 0%, #ab312c 74%); border-radius: 3px;"></i><img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784233783262969868/circle-cropped_12.png" width="25" height="25"> - Hitman [{0}]: {1}</div> ',
                            args = { fal, msg }
                        })
                        if source then
                        TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'ekab','[EKAB]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
                        end
                    elseif user.getPermissions() < 1  then
                        if source then
                        TriggerClientEvent('chat:addMessage', source, {args = {'⚠ ΔΕΝ ΕΙΣΑΙ HITMAN ⚠'}, color = {255, 255, 0}})
                        end
                    end
                end)
            end
        end)
end, false)

RegisterCommand('arhs', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    fal2 = playerName
        TriggerEvent("es:getPlayers", function(pl)
            for k,v in pairs(pl) do
                TriggerEvent("es:getPlayerFromId", k, function(user)
                    if(user.getPermissions() > 0) and xPlayer.job.name == 'arhs'then
                        TriggerClientEvent('chat:addMessage', k, {
                            template = '<div style="padding: 0.5vw; margin: 0.5vw; margin-bottom:20px; font-weight:bold;  box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); background: linear-gradient(315deg, #333300 5%, #a3a307 64%); color:black;  border-radius: 3px;"><i class=""></i><img <img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784216391297400842/licensing1.png" width="30" height="30"> ΑΡΗΣ ( {2} | {3} ) : {1}</div>',
                            args = { fal, msg, fal2, source }
                        })
                        if source then
                        TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'ekab','[EKAB]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
                        end
                    elseif (user.getPermissions() > 0)  then
                        if source then
                        TriggerClientEvent('chat:addMessage', source, {args = {'⚠ ΔΕΝ ΕΙΣΑΙ ARHS ⚠'}, color = {255, 255, 0}})
                        end
                    end

                    if user.getPermissions() < 1 and xPlayer.job.name == 'arhs' then
                        TriggerClientEvent('chat:addMessage', k, {
                            template = '<div style="padding: 0.5vw; margin: 0.5vw; margin-bottom:20px; font-weight:bold;  box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); background: linear-gradient(315deg, #333300 5%, #a3a307 64%); color:black;  border-radius: 3px;"><i class=""></i><img <img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784216391297400842/licensing1.png" width="30" height="30"> ΑΡΗΣ  : {1}</div>',
                            args = { fal, msg }
                        })
                    elseif user.getPermissions() < 1  then
                        if source then
                        TriggerClientEvent('chat:addMessage', source, {args = {'⚠ ΔΕΝ ΕΙΣΑΙ ARHS ⚠'}, color = {255, 255, 0}})
                        end
                    end
                end)
            end
        end)
end, false)

RegisterCommand('pana', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    fal2 = playerName
        TriggerEvent("es:getPlayers", function(pl)
            for k,v in pairs(pl) do
                TriggerEvent("es:getPlayerFromId", k, function(user)
                    if(user.getPermissions() > 0) and xPlayer.job.name == 'panatha'then
                        TriggerClientEvent('chat:addMessage', k, {
                            template = '<div style="padding: 0.5vw; margin: 0.5vw; margin-bottom:20px; background: linear-gradient(315deg, #166101 5%, #2aad05 64%); color:black;font-weight:bold; box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50);  border-radius: 3px;"><i class=""></i><img <img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784239352544886794/Panathinaikos_FC_logo.svg.png?width=677&height=677" width="30" height="30"> ΠΑΟ ( {2} | {3} ) : {1}</div>',
                            args = { fal, msg, fal2, source }
                        })
                        if source then
                        TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'ekab','[EKAB]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
                        end
                    elseif (user.getPermissions() > 0)  then
                        if source then
                        TriggerClientEvent('chat:addMessage', source, {args = {'⚠ ΔΕΝ ΕΙΣΑΙ PANATHINAIKOS ⚠'}, color = {255, 255, 0}})
                        end
                    end

                    if user.getPermissions() < 1 and xPlayer.job.name == 'panatha' then
                        TriggerClientEvent('chat:addMessage', k, {
                            template = '<div style="padding: 0.5vw; margin: 0.5vw; margin-bottom:20px; background: linear-gradient(315deg, #166101 5%, #2aad05 64%); color:black;font-weight:bold; box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50);  border-radius: 3px;"><i class=""></i><img <img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784239352544886794/Panathinaikos_FC_logo.svg.png?width=677&height=677" width="30" height="30"> ΠΑΟ : {1}</div>',
                            args = { fal, msg }
                        })
                        if source then
                        TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'ekab','[EKAB]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
                        end
                    elseif user.getPermissions() < 1  then
                        if source then
                        TriggerClientEvent('chat:addMessage', source, {args = {'⚠ ΔΕΝ ΕΙΣΑΙ PANATHINAIKOS ⚠'}, color = {255, 255, 0}})
                        end
                    end
                end)
            end
        end)
end, false)

RegisterCommand('osfp', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    fal2 = playerName
        TriggerEvent("es:getPlayers", function(pl)
            for k,v in pairs(pl) do
                TriggerEvent("es:getPlayerFromId", k, function(user)
                    if(user.getPermissions() > 0) and xPlayer.job.name == 'olympiakos'then
                        TriggerClientEvent('chat:addMessage', k, {
                            template = '<div style="padding: 0.5vw;box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50);  margin: 0.5vw;  background: linear-gradient(315deg, #700101 5%, #c41616 64%); color:white; font-weight:bold;  border-radius: 3px;"><i class=""></i><img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784219841660846080/220px-Olympiacos_FC_logo.svg.png" width="30" height="30"> ΟΣΦΠ ( {2} | {3} ) : {1}</div>',
                            args = { fal, msg, fal2, source }
                        })
                        if source then
                        TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'ekab','[EKAB]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
                        end
                    elseif (user.getPermissions() > 0)  then
                        if source then
                        TriggerClientEvent('chat:addMessage', source, {args = {'⚠ ΔΕΝ ΕΙΣΑΙ OLYMPIAKOS ⚠'}, color = {255, 255, 0}})
                        end
                    end

                    if user.getPermissions() < 1 and xPlayer.job.name == 'olympiakos' then
                        TriggerClientEvent('chat:addMessage', k, {
                            template = '<div style="padding: 0.5vw;box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50);  margin: 0.5vw;  background: linear-gradient(315deg, #700101 5%, #c41616 64%); color:white; font-weight:bold;  border-radius: 3px;"><i class=""></i><img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784219841660846080/220px-Olympiacos_FC_logo.svg.png" width="30" height="30"> ΟΣΦΠ  : {1}</div>',
                            args = { fal, msg }
                        })
                        if source then
                        TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'ekab','[EKAB]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
                        end
                    elseif user.getPermissions() < 1  then
                        if source then
                        TriggerClientEvent('chat:addMessage', source, {args = {'⚠ ΔΕΝ ΕΙΣΑΙ OLYMPIAKOS ⚠'}, color = {255, 255, 0}})
                        end
                    end
                end)
            end
        end)
end, false)

RegisterCommand('elas', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    fal2 = playerName
        TriggerEvent("es:getPlayers", function(pl)
            for k,v in pairs(pl) do
                TriggerEvent("es:getPlayerFromId", k, function(user)
                    if(user.getPermissions() > 0) and xPlayer.job.name == 'police' then
                        TriggerClientEvent('chat:addMessage', k, {
                            template = '<div style="padding: 0.5vw; box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); margin: 0.5vw; border:2tpx solid black;  background: linear-gradient(315deg, #032354 0%, #033480 74%); border-radius: 3px;"><i class=""></i><img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784220690316132413/elas_0.png" width="30" height="30"> ΕΛΑΣ ( {2} | {3} ) : {1}</div>',
                            args = { fal, msg, fal2, source }
                        })
                        if source then
                        TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'elas','[ΕΛΑΣ]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
                        end
                    elseif (user.getPermissions() > 0) then
                        if source then
                        TriggerClientEvent('chat:addMessage', source, {args = {'⚠ ΔΕΝ ΕΙΣΑΙ ΑΣΤΥΝΟΜΙΚΟΣ ⚠'}, color = {255, 255, 0}})
                        end
                    end

                    if (user.getPermissions() < 1) and xPlayer.job.name == 'police' then
                        TriggerClientEvent('chat:addMessage', k, {
                            template = '<div style="padding: 0.5vw; box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); margin: 0.5vw; border:2tpx solid black;  background: linear-gradient(315deg, #032354 0%, #033480 74%); border-radius: 3px;"><i class=""></i><img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784220690316132413/elas_0.png" width="30" height="30"> ΕΛΑΣ  : {1}</div>',
                            args = { fal, msg }
                        })
                        if source then
                        TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'elas','[ΕΛΑΣ]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
                        end
                    elseif ( user.getPermissions() < 1 ) then
                        if source then
                        TriggerClientEvent('chat:addMessage', source, {args = {'⚠ ΔΕΝ ΕΙΣΑΙ ΑΣΤΥΝΟΜΙΚΟΣ ⚠'}, color = {255, 255, 0}})
                        end
                    end
                end)
            end
        end)

end, false)

RegisterCommand('twt', function(source, args, rawCommand)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer then
		local findPhone = xPlayer.getInventoryItem('phone').count

		if findPhone < 1 then
			TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~You can\'t use the /twt without phone.')

			return
		end
	end

    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    fal2 = playerName
    TriggerEvent("es:getPlayers", function(pl)
		for k,v in pairs(pl) do
			TriggerEvent("es:getPlayerFromId", k, function(user)
				if(user.getPermissions() > 0)then
                    TriggerClientEvent('chat:addMessage', k, {
                        template = '<div style="padding: 0.5vw;  margin: 0.5vw; box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); background: linear-gradient(315deg, #03265c 0%, #1560d1 74%);  border-radius: 3px;"><i class="fab fa-twitter"> </i> {0} ( {2} | {3} ) : {1}</div>',
                        args = { fal, msg, fal2, source }
                    })

                end

                if user.getPermissions() < 1 then
                    TriggerClientEvent('chat:addMessage', k, {
                        template = '<div style="padding: 0.5vw;  margin: 0.5vw; box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); background: linear-gradient(315deg, #03265c 0%, #1560d1 74%);  border-radius: 3px;"><i class="fab fa-twitter"> </i> {0}  : {1}</div>',
                        args = { fal, msg }
                    })
				end
			end)
		end
	end)
    TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'tweet','[TWEET]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
end, false)

RegisterCommand('rob', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    fal2 = playerName
    TriggerEvent("es:getPlayers", function(pl)
		for k,v in pairs(pl) do
			TriggerEvent("es:getPlayerFromId", k, function(user)
				if(user.getPermissions() > 0)then
                    TriggerClientEvent('chat:addMessage', k, {
                        template = '<div style="padding: 0.5vw;  margin: 0.5vw; box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); background: linear-gradient(315deg, #000000 0%, #414141 74%);  border-radius: 3px;"></i><img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784229222213222420/download_423232.png" width="30" height="30"> {Robbery} ( {2} | {3} ) : {1}</div> ',
                        args = { fal, msg, fal2, source }
                    })

                end

                if user.getPermissions() < 1 then
                    TriggerClientEvent('chat:addMessage', k, {
                        template = '<div style="padding: 0.5vw;  margin: 0.5vw; box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); background: linear-gradient(315deg, #000000 0%, #414141 74%);  border-radius: 3px;"></i><img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784229222213222420/download_423232.png" width="30" height="30"> {Robbery}: {1}</div> ',
                        args = { fal, msg }
                    })
				end
			end)
		end
	end)
    TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'rob','[ROB]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
end, false)

RegisterCommand('anon', function(source, args, rawCommand)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer then
		local findPhone = xPlayer.getInventoryItem('phone').count

		if findPhone < 1 then
			TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~You can\'t use the /anon without phone.')

			return
		end

		if xPlayer.job.name ~= 'police' then
			local playerName = GetPlayerName(source)

			local msg = rawCommand:sub(6)

			local name = getIdentity(source)

			fal = name.firstname .. " " .. name.lastname

			fal2 = playerName

			TriggerEvent("es:getPlayers", function(pl)
				for k, v in pairs(pl) do
					TriggerEvent("es:getPlayerFromId", k, function(user)
						if (user.getPermissions() > 0) then
							TriggerClientEvent('chat:addMessage', k, {
								template = '<div style="padding: 0.5vw; margin: 0.5vw; font-weight:bold;box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); background: linear-gradient(315deg, #4f0202 0%, #ab0202 74%); border-radius: 3px;"><i class=""></i><img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784223061356183592/71zTE0u2iXL._UL1500_.png?width=677&height=677" width="30" height="30"> Anonymous ( {0} | {2} ) : {1}</div>',
								args = { fal2, msg, source }
							})
						end

						local xPlayer = ESX.GetPlayerFromId(k)

						if (user.getPermissions() < 1) and xPlayer and xPlayer.job.name ~= 'police' then
							TriggerClientEvent('chat:addMessage', k, {
								template = '<div style="padding: 0.5vw; margin: 0.5vw; font-weight:bold;box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); background: linear-gradient(315deg, #4f0202 0%, #ab0202 74%); border-radius: 3px;"><i class=""></i><img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784223061356183592/71zTE0u2iXL._UL1500_.png?width=677&height=677" width="30" height="30"> Anonymous  : {1}</div>',
								args = { fal, msg }
							})
						end
					end)
				end
			end)

			TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'anon','[ANON]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~A Policeman can\'t write in /anon chat.')
		end
	end
end, false)

RegisterCommand('ad', function(source, args, rawCommand)
	local xPlayer = ESX.GetPlayerFromId(source)

	local amount = 1500

	if xPlayer then
		local findPhone = xPlayer.getInventoryItem('phone').count

		if findPhone < 1 then
			TriggerClientEvent('esx:showNotification', xPlayer.source, '~r~You can\'t use the /ad without phone.')

			return
		end

		if xPlayer.getAccount('bank').money >= amount then
			xPlayer.removeAccountMoney('bank', amount)

			local playerName = GetPlayerName(source)

			local msg = rawCommand:sub(4)

			local name = getIdentity(source)

			fal = name.firstname .. " " .. name.lastname

			fal2 = playerName

			TriggerEvent("es:getPlayers", function(pl)
				for k, v in pairs(pl) do
					TriggerEvent("es:getPlayerFromId", k, function(user)
						if (user.getPermissions() > 0) then
							TriggerClientEvent('chat:addMessage', k, {
								template = '<div style="padding: 0.5vw;  margin: 0.5vw;box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); background: linear-gradient(315deg, #592d01 0%, #ad5f10 74%); border-radius: 3px;"></i><img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784230974036115456/computer-icons-news-media-athens-flying-week-2018-png-favpng-TCpcJ5SpXFTKWNDzCsniaHjhB.png?width=566&height=676" width="25" height="25"> Advertisement ( {2} | {3} ) : {1}</div>',

								args = { fal, msg, fal2, source }
							})

						end

						if user.getPermissions() < 1 then
							TriggerClientEvent('chat:addMessage', k, {
								template = '<div style="padding: 0.5vw;  margin: 0.5vw;box-shadow: 0px 2px 10px 0px rgb(0, 0, 0), 0px 2px 10px 0px rgba(0, 0, 0, 0.50); background: linear-gradient(315deg, #592d01 0%, #ad5f10 74%); border-radius: 3px;"></i><img style="margin-bottom:-7px;"src="https://media.discordapp.net/attachments/764052466256969740/784230974036115456/computer-icons-news-media-athens-flying-week-2018-png-favpng-TCpcJ5SpXFTKWNDzCsniaHjhB.png?width=566&height=676" width="25" height="25"> Advertisement  : {1}</div>',

								args = { fal, msg }
							})
						end
					end)
				end
			end)

			TriggerEvent('~{:KW:Phantom:MD:}~DiscordBot:ToDiscord', 'ad','[AD]: ' .. playerName .. '', msg, 'https://i.imgur.com/i8ouDH9.png', true)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, string.format('~r~You need %d€ in your bank so you can post a ad.', amount))
		end
	end
end, false)

function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end
