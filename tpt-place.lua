-- ----------------------------------------------------------------------------
-- Teleportation to some place                                   Version 0.0.01
-- ----------------------------------------------------------------------------
-- Filename:          tpt-place.lua
-- Last Modification: 2015-04-05
-- ----------------------------------------------------------------------------
-- Description:
--
-- This plugin is developed for Rust servers with the Oxide Server Mod and 
-- offers the following teleportation methods: TPT place.
-- copy from "m-Teleportation.lua" credit to "Mughisi"
-- ----------------------------------------------------------------------------


PLUGIN.Title       = "Teleportation System to some place"
PLUGIN.Description = "teleportation systems for admins and players."
PLUGIN.Version     = V( 0, 0, 1 )
PLUGIN.HasConfig   = true
PLUGIN.Author      = "franky"
PLUGIN.ResourceId  = 001


function PLUGIN:Init()
    -- Add the chat commands for the TP System:
    command.AddChatCommand( "tpt",       self.Plugin, "cmdTeleportTo" )

end

function PLUGIN: cmdTeleportTo( player, cmd, args )

    -- Determine what the player is trying to do depending on the amount of
    -- arguments that the player has supplied.
    if args.Length == 1 then

        -- The player supplied one argument - teloport to x,y,z

         if string.lower( args[0] ) = "arena" then 
  
	    self:TeleportToPosition( player, 1, 2, 3 )

         else if string.lower( args[0] ) = "town" then

            self:TeleportToPosition( player, 4, 5, 6 )

         else if string.lower( args[0] ) = "god" then

            self:TeleportToPosition( player, 0, 100, 0 )
            -- maybe not in the final version :)
	 else 

          self:SendMessage( player, "try  /tpt arena or town" )

	 endif
       
    else

        self:SendMessage( player, "try  /tpt arena or town" )

    endif

end