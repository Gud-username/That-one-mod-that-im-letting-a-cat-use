SMODS.current_mod.extra_tabs = function()
    local credits_tab = {
      n = G.UIT.ROOT,
      config = { align = 'tl', padding = 0.05, emboss = 0.05, r = 0.1, colour = G.C.BLACK },
      nodes = { {
        n = G.UIT.R,
        nodes = {
            {
                n = G.UIT.C,
                config = { padding = 0.5 },
                nodes = {
                  {
                    n = G.UIT.R,
                    nodes = {
                      { n = G.UIT.T, config = { text = "Developer", colour = G.C.PLASMA, scale = 0.75 } },
                    }
                  },
                  {
                    n = G.UIT.R,
                    config = { align = 'cm', minh = 0.25 },
                    nodes = {
                      { n = G.UIT.T, config = { text = "Gud", colour = G.C.PURPLE, scale = 0.4 } }
                    }
                  },
                }
              },
          {
            n = G.UIT.C,
            config = { padding = 0.5 },
            nodes = {
              {
                n = G.UIT.R,
                nodes = {
                  { n = G.UIT.T, config = { text = "Special thanks", colour = G.C.SECONDARY_SET[3], scale = 0.75 } },
                }
              },
              {
                n = G.UIT.R,
                config = { align = 'cm', minh = 0.25 },
                nodes = {
                  { n = G.UIT.T, config = { text = "Lily", colour = G.C.RARITY[3], scale = 0.4 } }
                }
              },
            }
          },
          
        }
      } }
    }
  
    return {
      {
        label = "Credits",
        tab_definition_function = function()
          return credits_tab
        end
      }
    }
  end
