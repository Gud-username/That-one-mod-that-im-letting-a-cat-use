--- STEAMODDED HEADER
--- MOD_NAME: Lily card
--- MOD_ID: Lilycard
--- PREFIX: Lily
--- MOD_AUTHOR: [Gud]
--- MOD_DESCRIPTION: feline egocentrism
--- LOADER_VERSION_GEQ: 1.0
--- VERSION: 1.0
--- BADGE_COLOR: FF6368

local atlas_key = "Lily_atlas"

local atlas_path = "Lily.png"

local suits = {"hearts", "clubs", "diamonds", "spades",}
local ranks = {'Jack', 'Queen', "King", "Ace", "10", "9", "8", "7", "6", "5", "4", "3", "2"}

local description = {
    hearts = "Lily",
    clubs = "Lily",
    diamonds = "Lily",
    spades = "Lily",
}

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
		display_ranks = {"King", "Queen", "Jack"},
        lc_atlas = atlas_key..'_lc',
        loc_txt = {
            ['en-us'] = description[suit]},
        posStyle = 'deck'
    }
end
