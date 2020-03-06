data:extend(
  {
    {
      type = "recipe",
      name = "liquid-fish-atmosphere",
      category = "advanced-chemistry",
      subgroup = "bio-fish",
      enabled = "false",
      energy_required = 30,
      ingredients = {
        {type = "fluid", name = "water", amount = 20},
        {type = "fluid", name = "water-saline", amount = 20}
      },
      results = {
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 40}
      },
      main_product = "liquid-fish-atmosphere",
      --icon = "__angelsbioprocessing__/graphics/icons/puffer-1-icon.png",
      --icon_size = 32,
      order = "b"
    },
    -- KEEPING
    {
      type = "recipe",
      name = "fish-keeping-0",
      category = "bio-refugium-fish",
      subgroup = "bio-fish",
      enabled = "false",
      energy_required = 30,
      ingredients = {
        {type = "item", name = "raw-fish", amount = 20},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 100},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "raw-fish", amount = 10},
        {type = "item", name = "raw-fish", amount = 5, probability = 0.75, show_details_in_recipe_tooltip = false},
        {type = "item", name = "raw-fish", amount = 5, probability = 0.50, show_details_in_recipe_tooltip = false},
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      icon = "__base__/graphics/icons/fish.png",
      icon_size = 64,
      order = "aa"
    },
    {
      type = "recipe",
      name = "fish-keeping-1",
      category = "bio-refugium-fish",
      subgroup = "bio-fish",
      enabled = "false",
      energy_required = 30,
      ingredients = {
        {type = "item", name = "alien-fish-1-raw", amount = 20},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 100},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "alien-fish-1-raw", amount = 15},
        {
          type = "item",
          name = "alien-fish-1-raw",
          amount = 5,
          probability = 0.85,
          show_details_in_recipe_tooltip = false
        },
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      icon = "__angelsbioprocessing__/graphics/icons/alien-fish-1.png",
      icon_size = 32,
      order = "ab"
    },
    {
      type = "recipe",
      name = "fish-keeping-2",
      category = "bio-refugium-fish",
      subgroup = "bio-fish",
      enabled = "false",
      energy_required = 30,
      ingredients = {
        {type = "item", name = "alien-fish-2-raw", amount = 20},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 100},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "alien-fish-2-raw", amount = 15},
        {
          type = "item",
          name = "alien-fish-2-raw",
          amount = 5,
          probability = 0.85,
          show_details_in_recipe_tooltip = false
        },
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      icon = "__angelsbioprocessing__/graphics/icons/alien-fish-2.png",
      icon_size = 32,
      order = "ac"
    },
    {
      type = "recipe",
      name = "fish-keeping-3",
      category = "bio-refugium-fish",
      subgroup = "bio-fish",
      enabled = "false",
      energy_required = 30,
      ingredients = {
        {type = "item", name = "alien-fish-3-raw", amount = 20},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 100},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "alien-fish-3-raw", amount = 15},
        {
          type = "item",
          name = "alien-fish-3-raw",
          amount = 5,
          probability = 0.85,
          show_details_in_recipe_tooltip = false
        },
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      icon = "__angelsbioprocessing__/graphics/icons/alien-fish-3.png",
      icon_size = 32,
      order = "ad"
    },
    -- BREEDING
    {
      type = "recipe",
      name = "fish-breeding-0",
      category = "bio-refugium-fish",
      subgroup = "bio-fish-breeding",
      enabled = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "raw-fish", amount = 10},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 100},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "raw-fish", amount_min = 10, amount_max = 20},
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
        --{type="fluid", name="water-yellow-waste", amount=100},
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png",
          icon_size = 32
        },
        {
          icon = "__base__/graphics/icons/fish.png",
          icon_size = 64
        }
      },
      --icon_size = 32,
      order = "aa"
    },
    {
      type = "recipe",
      name = "fish-breeding-1",
      category = "bio-refugium-fish",
      subgroup = "bio-fish-breeding",
      enabled = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "algae-brown", amount = 10},
        {type = "item", name = "alien-fish-1-raw", amount = 10},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 100},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "alien-fish-1-raw", amount_min = 25, amount_max = 50},
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/alien-fish-1.png"
        }
      },
      icon_size = 32,
      order = "ab"
    },
    {
      type = "recipe",
      name = "fish-breeding-2",
      category = "bio-refugium-fish",
      subgroup = "bio-fish-breeding",
      enabled = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "algae-green", amount = 10},
        {type = "item", name = "alien-fish-2-raw", amount =10},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 100},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "alien-fish-2-raw", amount_min = 25, amount_max = 50},
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/alien-fish-2.png"
        }
      },
      icon_size = 32,
      order = "ac"
    },
    {
      type = "recipe",
      name = "fish-breeding-3",
      category = "bio-refugium-fish",
      subgroup = "bio-fish-breeding",
      enabled = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "bio-raw-meat", amount = 10},
        {type = "item", name = "alien-fish-3-raw", amount = 10},
        {type = "fluid", name = "liquid-nutrient-pulp", amount = 100},
        {type = "fluid", name = "liquid-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "item", name = "alien-fish-3-raw", amount_min = 25, amount_max = 50},
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/breeding.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/alien-fish-3.png"
        }
      },
      icon_size = 32,
      order = "ad"
    },
    --BUTCHERY
    {
      type = "recipe",
      name = "fish-butchery-0",
      category = "bio-butchery",
      subgroup = "bio-fish-butchery",
      enabled = "false",
      hidden = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "raw-fish", amount = 1}
      },
      results = {
        {type = "item", name = "bio-raw-meat", amount = 1, probability = 0.5}
      },
      icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
      icon_size = 32,
      order = "aa"
    },
    {
      type = "recipe",
      name = "fish-butchery-1",
      category = "bio-butchery",
      subgroup = "bio-fish-butchery",
      enabled = "false",
      hidden = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "alien-fish-1-raw", amount = 1}
      },
      results = {
        {type = "item", name = "bio-raw-meat", amount = 1}
      },
      icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
      icon_size = 32,
      order = "ab"
    },
    {
      type = "recipe",
      name = "fish-butchery-2",
      category = "bio-butchery",
      subgroup = "bio-fish-butchery",
      enabled = "false",
      hidden = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "alien-fish-2-raw", amount = 1}
      },
      results = {
        {type = "item", name = "bio-raw-meat", amount = 1}
      },
      icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
      icon_size = 32,
      order = "ac"
    },
    {
      type = "recipe",
      name = "fish-butchery-3",
      category = "bio-butchery",
      subgroup = "bio-fish-butchery",
      enabled = "false",
      hidden = "false",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "alien-fish-3-raw", amount = 1}
      },
      results = {
        {type = "item", name = "bio-raw-meat", amount = 2}
      },
      icon = "__angelsbioprocessing__/graphics/icons/raw-meat.png",
      icon_size = 32,
      order = "ad"
    }
  }
)
