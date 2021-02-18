--data.lua

local pfr = table.deepcopy(data.raw["generator-equipment"]["fusion-reactor-equipment"])

pfr.burner = {
  type = "burner",
  fuel_inventory_size = 10
}

local spider = table.deepcopy(data.raw["spider-vehicle"]["spidertron"])
spider.energy_source = {
  type = "burner",
  fuel_inventory_size = 10
}

data:extend{pfr, spider}
