local ADDON_NAME, NAMESPACE = ...

local ART_PATH = NAMESPACE.ThreatPlates.Art
local MEDIA_PATH = NAMESPACE.ThreatPlates.Media
local EMPTY_TEXTURE = EMPTY_TEXTURE

-------------------------------------------------------------------------------------
-- Style: Name-Only for Headline-View
-------------------------------------------------------------------------------------

local function Create(self,name)
  local db = self.db.profile.settings
  local theme = {}

  theme = {

    hitbox = {
      width = 140,
      height = 35,
    },

    frame = {
      emptyTexture = EMPTY_TEXTURE,
      width = 124,
      height = 30,
      x = db.frame.x,
      y = db.frame.y,
      anchor = "CENTER",
    },

    highlight = {
      texture = ART_PATH.."Highlight",
      width = 128,
      height = 64,
      x = 0,
      y = 0,
      anchor = "CENTER",
			show = true,
    },

		target = {
      texture = ART_PATH.."Target",
      width = 128,
      height = 64,
      x = 0,
      y = 0 - 21, -- or: db.name.y, to use offset from options
      anchor = "CENTER",
      show = true,
    },

		healthborder = {
      texture = EMPTY_TEXTURE,
      glowtexture = EMPTY_TEXTURE,
      --elitetexture = EMPTY_TEXTURE,
      width = 128,
      height = 64,
      x = 0,
      y = 0 - 21, -- also used for highlight position, or: db.name.y, to use offset from options,
      anchor = "CENTER",
    },

    healthbar = {
      texture = EMPTY_TEXTURE,
      width = 120,
      height = 10,
      x = 0,
      y = 0,
      anchor = "CENTER",
      orientation = "HORIZONTAL",
    },

    threatborder = {
      texture = EMPTY_TEXTURE,
      width = 128,
      height = 64,
      x = 0,
      y = 0,
      anchor = "CENTER",
    },

    castborder = {
      texture = EMPTY_TEXTURE,
      width = 256,
      height = 64,
      x = db.castborder.x,
      y = db.castborder.y,
      anchor = "CENTER",
      show = false,
    },

    castnostop = {
      texture = EMPTY_TEXTURE,
      width = 256,
      height = 64,
      x = db.castnostop.x,
      y = db.castnostop.y,
      anchor = "CENTER",
      show = false,
    },

    castbar = {
      texture = EMPTY_TEXTURE,
      width = 120,
      height = 10,
      x = db.castbar.x,
      y = db.castbar.y,
      anchor = "CENTER",
      orientation = "HORIZONTAL",
			show = false,
    },

    name = {
      typeface = MEDIA_PATH:Fetch('font', db.name.typeface),
      size = db.name.size + 2,
      width = db.name.width,
      height = db.name.height,
      x = db.name.x,
      y = 4, -- or: db.name.y, to use offset from options
      align = db.name.align,
      anchor = "CENTER",
      vertical = db.name.vertical,
      shadow = db.name.shadow, -- or: true,
      flags = db.name.flags, -- or: true
      show = true,
    },

    level = {
      typeface = MEDIA_PATH:Fetch('font', db.level.typeface),
      size = db.level.size,
      width = db.level.width,
      height = db.level.height,
      x = db.level.x,
      y = db.level.y,
      align = db.level.align,
      anchor = "CENTER",
      vertical = db.level.vertical,
      shadow = false,
      show = false,
    },

    customtext = {
      typeface = MEDIA_PATH:Fetch('font', db.customtext.typeface),
      size = db.name.size-2,
      width = db.customtext.width,
      height = db.customtext.height,
      x = db.customtext.x,
      y = 5 - (db.name.size + 2),
      align = db.customtext.align,
      anchor = "CENTER",
      vertical = db.customtext.vertical,
      shadow = db.customtext.shadow,
      show = true, -- for style NameOnly, type of content is configured in TidyPlatesHub
    },

    spelltext = {
      typeface = MEDIA_PATH:Fetch('font', db.spelltext.typeface),
      size = db.spelltext.size,
      width = db.spelltext.width,
      height = db.spelltext.height,
      x = db.spelltext.x,
      y = db.spelltext.y,
      align = db.spelltext.align,
      anchor = "CENTER",
      vertical = db.spelltext.vertical,
      shadow = true,
      show = false,
    },

    skullicon = {
      -- width = (db.skullicon.scale),
      -- height = (db.skullicon.scale),
      -- x = (db.skullicon.x),
      -- y = (db.skullicon.y),
      -- anchor = (db.skullicon.anchor),
      show = false,
    },

    eliteicon = {
      -- width = db.eliteicon.scale,
      -- height = db.eliteicon.scale,
      -- x = db.eliteicon.x,
      -- y = db.eliteicon.y,
      -- anchor = db.eliteicon.anchor,
      show = false,
    },

    spellicon = {
      -- width = (db.spellicon.scale),
      -- height = (db.spellicon.scale),
      -- x = (db.spellicon.x),
      -- y = (db.spellicon.y),
      -- anchor = (db.spellicon.anchor),
      show = false,
    },

    raidicon = {
      -- width = (db.raidicon.scale),
      -- height = (db.raidicon.scale),
      -- x = (db.raidicon.x),
      -- y = (db.raidicon.y),
      -- anchor = (db.raidicon.anchor),
      show = false,
    },

    customart = { -- Depreciated?
      -- width = (db.customart.scale),
      -- height = (db.customart.scale),
      -- x = (db.customart.x),
      -- y = (db.customart.y),
      -- anchor = (db.customart.anchor),
      show = false,
    },

    threatcolor = {
      LOW = { r = 0, g = 0, b = 0, a = 0 },
      MEDIUM = { r = 0, g = 0, b = 0, a = 0 },
      HIGH = { r = 0, g = 0, b = 0, a = 0 },
    }
  }
  return theme
end

-- Register style in ThreatPlates
NAMESPACE.ThreatPlates.RegisterTheme("NameOnly",Create)
