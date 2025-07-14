--- STEAMODDED HEADER
--- MOD_NAME: Card skin template
--- MOD_ID: template
--- PREFIX: main
--- MOD_AUTHOR: [Your name here, please credit me]
--- MOD_DESCRIPTION: Put mod decription here
--- LOADER_VERSION_GEQ: 1.0
--- VERSION: 1.0
--- BADGE_COLOR: FF6368

local atlas_key = "main_atlas" -- Format: "PREFIX"_atlas
-- See end of file for notes
local atlas_path = "main_lc.png" -- Filename for the image in the asset folder
local atlas_path_hc = "main_hc.png" -- Filename for thef high-contrast version of the texture, if existing

local suits = {"hearts", "clubs", "diamonds", "spades",} -- These are the suits which you will give a skin to
local ranks = {'Jack', 'Queen', "King", "Ace", "10", "9", "8", "7", "6", "5", "4", "3", "2"} -- These are the ranks affected <for all suits>

local description = {
    hearts = "Hearts skin name",
    clubs = "Clubs skin name",
    diamonds = "Diamonds skin name",
    spades = "Spades skin name",
}
-----------------------------------------------------------
-- You should only need to change things above this line --
-----------------------------------------------------------

SMODS.Atlas{  
    key = atlas_key..'_lc',
    px = 71,
    py = 95,
    path = atlas_path,
    prefix_config = {key = false},
}

if atlas_path_hc then
    SMODS.Atlas{  
        key = atlas_key..'_hc',
        px = 71,
        py = 95,
        path = atlas_path_hc,
        prefix_config = {key = false},
    }
end

for _, suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = suit.."_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
		display_ranks = {"King", "Queen", "Jack"}, -- These are the ranks preveiwed For
        lc_atlas = atlas_key..'_lc',
        hc_atlas = (atlas_path_hc and atlas_key..'_hc') or atlas_key..'_lc',
        loc_txt = {
            ['en-us'] = description[suit]},
        posStyle = 'deck'
    }
end
