# Weather Fixer for FiveM

A lightweight client-side script for FiveM that automatically replaces unwanted weather types with a preferred alternative.

---

## 🌤 Features

- Automatically changes foggy, overcast, or thunder weather to `EXTRASUNNY` (configurable).
- Client-side only, no server sync required.
- Fully configurable and open-source.

---

## ⚙️ Configuration

Modify `client.lua`:

```lua
local badWeathers = {
    ["FOGGY"] = true,
    ["OVERCAST"] = true,
    ["THUNDER"] = true
}

local replacementWeather = "EXTRASUNNY"
