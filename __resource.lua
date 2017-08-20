--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

dependencies {
  "ft_utils",
}

client_scripts {

  -- Requirements
  "@ft_utils/utils.lua", -- Utils

}

server_scripts {

  -- Requirements
  "@ft_utils/utils.lua", -- Utils

  "src/init.server.lua",
  "version.lua",
}

exports {

}

server_exports {
  "AddAccessCheck",
}
