local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["platinum"].ingot = true
  angelsmods.trigger.smelting_products["platinum"].plate = true
  angelsmods.trigger.smelting_products["platinum"].wire = true
  angelsmods.trigger.smelting_products["platinum"].powder = true
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["platinum"].ingot then
  if angelsmods.trigger.smelting_products["platinum"].plate or
     angelsmods.trigger.smelting_products["platinum"].wire then
  else
    -- no need for molten recipe
    data.raw.fluid["liquid-molten-platinum"].hidden = true
    OV.disable_recipe({"molten-platinum-smelting"})
  end
else
  angelsmods.functions.add_flag("processed-platinum", "hidden")
  angelsmods.functions.add_flag("pellet-platinum", "hidden")
  data.raw.fluid["liquid-hexachloroplatinic-acid"].hidden = true
  angelsmods.functions.add_flag("solid-ammonium-chloroplatinate", "hidden")
  angelsmods.functions.add_flag("ingot-platinum", "hidden")
  data.raw.fluid["liquid-molten-platinum"].hidden = true
  OV.disable_recipe({"platinum-ore-processing", "platinum-processed-processing"})
  OV.disable_recipe({"pellet-platinum-smelting", "liquid-hexachloroplatinic-acid-smelting"})
  OV.disable_recipe({"platinum-ore-smelting", "processed-platinum-smelting", "solid-ammonium-chloroplatinate-smelting"})
  OV.disable_recipe({"molten-platinum-smelting"})
  OV.disable_technology({"angels-platinum-smelting-1", "angels-platinum-smelting-2", "angels-platinum-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["platinum"].plate then
else
  angelsmods.functions.add_flag("angels-plate-platinum", "hidden")
  angelsmods.functions.add_flag("angels-roll-platinum", "hidden")
  OV.disable_recipe({"roll-platinum-casting", "roll-platinum-casting-fast"})
  OV.disable_recipe({"angels-plate-platinum", "angels-roll-platinum-converting"})
end

-------------------------------------------------------------------------------
-- WIRE -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["platinum"].wire then
  if data.raw.item["gilded-copper-cable"] then -- bob electronics
    OV.patch_recipes({ { name = "angels-wire-coil-platinum-converting", category = "electronics-machine" } })
  end
else
  angelsmods.functions.add_flag("angels-wire-platinum", "hidden")
  angelsmods.functions.add_flag("angels-wire-coil-platinum", "hidden")
  OV.disable_recipe({"angels-wire-coil-platinum-casting", "angels-wire-coil-platinum-casting-fast"})
  OV.disable_recipe({"basic-platinated-copper-wire", "angels-wire-coil-platinum-converting"})
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["platinum"].powder then
else
  angelsmods.functions.add_flag("powder-platinum", "hidden")
  OV.disable_recipe({ "powder-platinum" })
end