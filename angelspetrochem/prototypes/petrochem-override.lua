local OV = angelsmods.functions.OV

--PREPARATIONS
OV.remove_output("gas-sulfur-dioxide-calcium-sulfate", "angels-void")

--OVERRIDE FOR BASE
data.raw["resource"]["crude-oil"]["minable"].results = {
  {type = "fluid", name = "liquid-multi-phase-oil", amount_min = 10, amount_max = 10, probability = 1}
}
table.insert(data.raw["assembling-machine"]["chemical-plant"].crafting_categories, "liquifying")

--ROCKET FUEL
OV.patch_recipes(
  {
    {
      name = "rocket-fuel",
      ingredients = {
        {"!!"},
        {"rocket-fuel-capsule", 10},
        {"rocket-oxidizer-capsule", 10}
      },
      category = "chemistry",
      subgroup = "petrochem-fuel",
      order = "hc"
    }
  }
)
OV.add_prereq("rocketry", "rocket-booster-1")
OV.remove_prereq("rocketry", "rocket-fuel")
data.raw["item"]["rocket-fuel"].icon = "__angelspetrochem__/graphics/icons/rocket-fuel.png"
data.raw["item"]["rocket-fuel"].icon_size = 32
data.raw["item"]["rocket-fuel"].icon_mipmaps = 1
data.raw["item"]["rocket-fuel"].subgroup = "petrochem-fuel"
data.raw["item"]["rocket-fuel"].order = "b[rocket-fuel]-c"

data.raw["item"]["nuclear-fuel"].subgroup = "petrochem-fuel"
data.raw["item"]["nuclear-fuel"].order = "d[nuclear-fuel]"
OV.patch_recipes({{name = "nuclear-fuel", subgroup = "petrochem-fuel", order = "j"}})

data.raw["item"]["solid-fuel"].subgroup = "petrochem-fuel"
data.raw["item"]["solid-fuel"].order = "a[solid-fuel]-a"

data.raw["item"]["sulfur"].subgroup = "petrochem-sulfur"
data.raw["item"]["sulfur"].order = "a[sulfer]-a[sulfer]"
data.raw["item"]["plastic-bar"].subgroup = "petrochem-solids"
data.raw["item"]["plastic-bar"].order = "a[petrochem-solids]-a[plastic]"
data.raw["item"]["explosives"].subgroup = "petrochem-solids"
data.raw["item"]["explosives"].order = "b[petrochem-solids-2]-a[explosives]"
if angelsmods.smelting then
  data.raw["item"]["coal"].subgroup = "petrochem-coal"
  data.raw["item"]["coal"].order = "a[carbon]-a"
end
data.raw["fluid"]["steam"].subgroup = "petrochem-basic-fluids"
data.raw["fluid"]["steam"].order = "a"
data.raw["fluid"]["crude-oil"].subgroup = "petrochem-raw-fluids"
data.raw["fluid"]["crude-oil"].order = "bb"
data.raw["fluid"]["petroleum-gas"].subgroup = "petrochem-carbon-fluids"
data.raw["fluid"]["petroleum-gas"].order = "a"
data.raw["fluid"]["light-oil"].subgroup = "petrochem-carbon-fluids"
data.raw["fluid"]["light-oil"].order = "dab"
data.raw["fluid"]["heavy-oil"].subgroup = "petrochem-carbon-fluids"
data.raw["fluid"]["heavy-oil"].order = "dbb"
data.raw["fluid"]["lubricant"].subgroup = "petrochem-carbon-fluids"
data.raw["fluid"]["lubricant"].order = "dcb"
data.raw["fluid"]["sulfuric-acid"].subgroup = "petrochem-sulfer-fluids"
data.raw["fluid"]["sulfuric-acid"].order = "cb"

--OVERRIDE FOR ANGELS
--REFINING
if angelsmods.refining then
  --MOVE LIQUIFIER AND ADD CATEGORY
  table.insert(data.raw["assembling-machine"]["advanced-chemical-plant"].crafting_categories, "liquifying")
  table.insert(data.raw["assembling-machine"]["advanced-chemical-plant-2"].crafting_categories, "liquifying")
  data.raw["item"]["liquifier"].subgroup = "petrochem-buildings-electrolyser"
  data.raw["item"]["liquifier"].order = "c[liquifier]-a"
  data.raw["item"]["liquifier"].icons[2].tint = angelsmods.petrochem.number_tint
  data.raw["item"]["liquifier-2"].subgroup = "petrochem-buildings-electrolyser"
  data.raw["item"]["liquifier-2"].order = "c[liquifier]-b"
  data.raw["item"]["liquifier-2"].icons[2].tint = angelsmods.petrochem.number_tint
  data.raw["item"]["liquifier-3"].subgroup = "petrochem-buildings-electrolyser"
  data.raw["item"]["liquifier-3"].order = "c[liquifier]-c"
  data.raw["item"]["liquifier-3"].icons[2].tint = angelsmods.petrochem.number_tint
  data.raw["item"]["liquifier-4"].subgroup = "petrochem-buildings-electrolyser"
  data.raw["item"]["liquifier-4"].order = "c[liquifier]-d"
  data.raw["item"]["liquifier-4"].icons[2].tint = angelsmods.petrochem.number_tint
  OV.patch_recipes(
    {
      {name = "carbon-separation-1", category = "liquifying"},
      {name = "carbon-separation-2", category = "liquifying"},
      {name = "liquifier", subgroup = "petrochem-buildings-electrolyser", order = "b[liquifier]-a"},
      {name = "liquifier-2", subgroup = "petrochem-buildings-electrolyser", order = "b[liquifier]-b"},
      {name = "liquifier-3", subgroup = "petrochem-buildings-electrolyser", order = "b[liquifier]-c"},
      {name = "liquifier-4", subgroup = "petrochem-buildings-electrolyser", order = "b[liquifier]-d"},
      {name = "angelsore8-dust", ingredients = {{name = "solid-sodium-hydroxide", 2}}},
      {name = "angelsore9-dust", ingredients = {{name = "solid-sodium-hydroxide", 2}}},
      {
        name = "angelsore8-anode-sludge",
        ingredients = {{name = "liquid-ferric-chloride-solution", type = "fluid", amount = 10}}
      },
      {
        name = "angelsore9-anode-sludge",
        ingredients = {{name = "liquid-cupric-chloride-solution", type = "fluid", amount = 10}}
      }
    }
  )

  OV.remove_unlock("slag-processing-1", "liquifier")
  OV.add_unlock("basic-chemistry", "liquifier")
  OV.remove_unlock("slag-processing-2", "liquifier-2")
  OV.add_unlock("angels-advanced-chemistry-1", "liquifier-2")
  OV.add_unlock("angels-advanced-chemistry-2", "liquifier-3")
  OV.add_unlock("angels-advanced-chemistry-3", "liquifier-4")
  if angelsmods or bobmods then
    OV.add_unlock("chlorine-processing-1", "liquid-ferric-chloride-solution")
    OV.add_unlock("chlorine-processing-1", "liquid-cupric-chloride-solution")
  end
  data.raw["fluid"]["liquid-ferric-chloride-solution"].subgroup = "ore-processing-fluid"
  data.raw["fluid"]["liquid-ferric-chloride-solution"].order = "a[ferrous]-e"
  data.raw["fluid"]["liquid-cupric-chloride-solution"].subgroup = "ore-processing-fluid"
  data.raw["fluid"]["liquid-cupric-chloride-solution"].order = "b[cupric]-e"
end

--SMELTING
if not angelsmods.smelting then
  OV.disable_recipe({"solid-sodium-cyanide", "solid-sodium-carbonate", "solid-sodium-sulfate-separation"})
end

--UPDATE ENTITY RECIPES
require("prototypes.recipes.petrochem-entity-angels")

if angelsmods.industries and angelsmods.industries.overhaul then
  data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"
  data.raw["assembling-machine"]["oil-refinery"].fast_replaceable_group = "oil-refinery"

  OV.patch_recipes(
    {
      {
        name = "catalyst-metal-red",
        ingredients = {
          {"iron-ore", 1},
          {"copper-ore", 1}
        }
      },
      {
        name = "catalyst-metal-green",
        ingredients = {
          {"bauxite-ore", 1},
          {"silver-ore", 1}
        }
      },
      {
        name = "catalyst-metal-blue",
        ingredients = {
          {"rutile-ore", 1},
          {"gold-ore", 1}
        }
      },
      {
        name = "catalyst-metal-yellow",
        ingredients = {
          {"tungsten-ore", 1},
          {"platinum-ore", 1}
        }
      }
    }
  )
else
  if bobmods then
    if bobmods.plates then
      if bobmods.greenhouse then
        OV.patch_recipes(
          {
            {
              name = "bob-resin-wood",
              energy_required = 5,
              ingredients = {{name = "wood", type = "item", amount = "+4"}}
            }
          }
        )
      end

      OV.patch_recipes(
        {
          {
            name = "catalyst-metal-red",
            ingredients = {
              {"iron-ore", 1},
              {"copper-ore", 1}
            }
          },
          {
            name = "catalyst-metal-green",
            ingredients = {
              {"bauxite-ore", 1},
              {"silver-ore", 1}
            }
          },
          {
            name = "catalyst-metal-blue",
            ingredients = {
              {"rutile-ore", 1},
              {"cobalt-ore", 1}
            }
          },
          {
            name = "catalyst-metal-yellow",
            ingredients = {
              {"tungsten-ore", 1},
              {"nickel-ore", 1}
            }
          }
        }
      )
      OV.disable_recipe({"bob-resin-oil"})

      if bobmods.assembly then
        if data.raw["assembling-machine"]["chemical-plant-2"] then
          data.raw["assembling-machine"]["chemical-plant-2"].energy_usage = "300kW"
          data.raw["assembling-machine"]["chemical-plant-2"].crafting_speed = 2
          data.raw["assembling-machine"]["chemical-plant-2"].module_specification = {module_slots = 4}
        end
        if data.raw["assembling-machine"]["chemical-plant-3"] then
          data.raw["assembling-machine"]["chemical-plant-3"].energy_usage = "390kW"
          data.raw["assembling-machine"]["chemical-plant-3"].crafting_speed = 2.75
          data.raw["assembling-machine"]["chemical-plant-3"].module_specification = {module_slots = 5}
        end
        if data.raw["assembling-machine"]["chemical-plant-4"] then
          data.raw["assembling-machine"]["chemical-plant-4"].energy_usage = "480kW"
          data.raw["assembling-machine"]["chemical-plant-4"].crafting_speed = 3.5
          data.raw["assembling-machine"]["chemical-plant-4"].module_specification = {module_slots = 6}
        end

        if data.raw["assembling-machine"]["oil-refinery-2"] then
          data.raw["assembling-machine"]["oil-refinery-2"].energy_usage = "720kW"
          data.raw["assembling-machine"]["oil-refinery-2"].crafting_speed = 1.75
          data.raw["assembling-machine"]["oil-refinery-2"].module_specification = {module_slots = 3}
        end
        if data.raw["assembling-machine"]["oil-refinery-3"] then
          data.raw["assembling-machine"]["oil-refinery-3"].energy_usage = "1MW"
          data.raw["assembling-machine"]["oil-refinery-3"].crafting_speed = 2.5
          data.raw["assembling-machine"]["oil-refinery-3"].module_specification = {module_slots = 4}
        end
        if data.raw["assembling-machine"]["oil-refinery-4"] then
          data.raw["assembling-machine"]["oil-refinery-4"].energy_usage = "1.35MW"
          data.raw["assembling-machine"]["oil-refinery-4"].crafting_speed = 3.5
          data.raw["assembling-machine"]["oil-refinery-4"].module_specification = {module_slots = 5}
        end
      end
    end
  else
    OV.disable_recipe(
      {
        "solid-calcium-chloride",
        "gas-chlor-methane",
        "gas-allylchlorid",
        "gas-epichlorhydrin",
        "gas-glycerol",
        "solid-sodium-chlorate",
        "solid-sodium-perchlorate",
        "liquid-perchloric-acid"
      }
    )
    OV.disable_recipe({"gas-ammonium-chloride", "gas-urea", "gas-melamine"})
    OV.disable_recipe(
      {
        "catalyst-steam-cracking-butane",
        "gas-styrene-catalyst",
        "gas-ethylbenzene-catalyst",
        "cumene-process",
        "gas-bisphenol-a",
        "gas-phosgene",
        "solid-resin",
        "liquid-resin-1",
        "liquid-resin-2",
        "liquid-resin-3",
        "liquid-rubber-1",
        "solid-rubber",
        "liquid-rubber-1"
      }
    )
    OV.patch_recipes(
      {
        {
          name = "catalyst-metal-red",
          ingredients = {
            {"angels-ore1", 1},
            {"angels-ore3", 1}
          }
        },
        {
          name = "catalyst-metal-green",
          ingredients = {
            {"angels-ore1", 1},
            {"angels-ore2", 1}
          }
        },
        {
          name = "catalyst-metal-blue",
          ingredients = {
            {"angels-ore3", 1},
            {"angels-ore4", 1}
          }
        },
        {
          name = "catalyst-metal-yellow",
          ingredients = {
            {"angels-ore2", 1},
            {"angels-ore4", 1}
          }
        }
      }
    )
  end
end
--hide bobs fluids if converter recipes setting not active
if not angelsmods.trigger.enableconverter and mods.bobplates then
  data.raw["fluid"]["sulfur-dioxide"].hidden = true
  data.raw["fluid"]["oxygen"].hidden = true
  data.raw["fluid"]["nitrogen"].hidden = true
  data.raw["fluid"]["nitrogen-dioxide"].hidden = true
  data.raw["fluid"]["nitric-acid"].hidden = true
  data.raw["fluid"]["liquid-air"].hidden = true
  data.raw["fluid"]["hydrogen"].hidden = true
  data.raw["fluid"]["hydrogen-sulfide"].hidden = true
  data.raw["fluid"]["hydrogen-chloride"].hidden = true
  data.raw["fluid"]["ferric-chloride-solution"].hidden = true
  data.raw["fluid"]["chlorine"].hidden = true
  data.raw["fluid"]["pure-water"].hidden = true
  if mods.bobrevamp then
    data.raw["fluid"]["ammonia"].hidden = true
    data.raw["fluid"]["dinitrogen-tetroxide"].hidden = true
    data.raw["fluid"]["hydrazine"].hidden = true
    data.raw["fluid"]["hydrogen-peroxide"].hidden = true
    data.raw["fluid"]["nitric-oxide"].hidden = true
  end
end
--if bobs is active, add fuel values to fluids
--Do this regardless of settings
--base fluid is methane, all others are based on relative real values
--==BASED ON VOULMETRIC NUMBERS divided by 10, using methane as the base
if mods.bobplates then
  --liquid Naphtha (heavy oil), bobs value is 1MJ (Heavy fuel oil 38.2 MJ/L)(39 MJ/kg)
  data.raw.fluid["liquid-naphtha"].fuel_value = "244.7kJ"
  data.raw.fluid["liquid-naphtha"].emissions_multiplier = 3
  --liquid Fuel oil (light oil), bobs value 1.5MJ (light fuel oil 39 MJ/L)(40.6 MJ/kg)
  data.raw.fluid["liquid-fuel-oil"].fuel_value = "24.99kJ"
  data.raw.fluid["liquid-fuel-oil"].emissions_multiplier = 2
  --gas methane (petrogas), bobs value 2.3MJ (methane 35.9 MJ/L)(49.85 MJ/kg)
  data.raw.fluid["gas-methane"].fuel_value = "230.0kJ"
  --gas ethane (), - (ethane 60.7 MJ/L)(47.2 MJ/kg)
  data.raw.fluid["gas-ethane"].fuel_value = "388.9kJ"
  data.raw.fluid["gas-ethane"].emissions_multiplier = 1.5
  --gas butane (), - (butane 110.9 MJ/L)(46.46 MJ/kg)
  data.raw.fluid["gas-butane"].fuel_value = "710.5kJ"
  data.raw.fluid["gas-butane"].emissions_multiplier = 1.8
  --gas propene (), - (propylene 81.4 MJ/L)(45.8 MJ/kg)
  data.raw.fluid["gas-propene"].fuel_value = "521.5kJ"
  data.raw.fluid["gas-propene"].emissions_multiplier = 5
  --gas methanol (), - (methanol(L) 15.8 MJ/L)(19.9 MJ/kg)
  data.raw.fluid["gas-methanol"].fuel_value = "101.2kJ"
  --gas ethylene (), - (ethylene 57.0 MJ/L)(47.7 MJ/kg)
  data.raw.fluid["gas-ethylene"].fuel_value = "365.2kJ"
  --gas benzene (), - (benzene 133.8 MJ/L)(40.5 MJ/kg)
  data.raw.fluid["gas-benzene"].fuel_value = "857.2kJ"
  --gas hydrogen (), bobs value is 45kJ (hydrogen 10.3 MJ/L)(120.1 MJ/kg)
  -->>(may need to go much lower) meant to be 66kJ, but dropped to 33 for reasons.
  data.raw.fluid["gas-hydrogen"].fuel_value = "33kJ"
  data.raw.fluid["gas-hydrogen"].emissions_multiplier = 0.2
  --gas hydrazine (), bobs value is 340kJ (hydrazine 19.8 MJ/L)(19.4 MJ/kg)
  data.raw.fluid["gas-hydrazine"].fuel_value = "126.9kJ"
  data.raw.fluid["gas-hydrazine"].emissions_multiplier = 0.1
  if mods["angelsbioprocessing"] then
    --liquid ethanol (), - (ethanol(L) 21.1 MJ/L)(26.7 MJ/kg)
    data.raw.fluid["gas-ethanol"].fuel_value = "135.2kJ"
  end
end
--ENABLE PRODUCTIVITY
angelsmods.functions.allow_productivity("liquid-plastic-1")
angelsmods.functions.allow_productivity("liquid-plastic-2")
angelsmods.functions.allow_productivity("liquid-plastic-3")

angelsmods.functions.allow_productivity("liquid-resin-1")
angelsmods.functions.allow_productivity("liquid-resin-2")
angelsmods.functions.allow_productivity("liquid-resin-3")

angelsmods.functions.allow_productivity("solid-rubber")
