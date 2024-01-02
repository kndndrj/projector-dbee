# Neovim Projector DBee Extension

Extension for [nvim-projector](https://github.com/kndndrj/nvim-projector) that
adds an output with [nvim-dbee](https://github.com/kndndrj/nvim-dbee) support.

## Installation

Install it as any other plugin. and add outputs to `projector`'s setup function.
This extension also needs dbee to be installed and configured properly.

```lua
require("projector").setup {
  outputs = {
    require("projector_dbee").OutputBuilder:new(),
    -- ... your other outputs
  },
  -- ... the rest of your config
}
```

This output adds a task to manage database connections in dbee with projector.

Example task entry:

```lua
{
  name = "Database Conn",
  databases = {
    {
      name = "My local database",
      type = "sqlite",
      url = "~/path/to/local/database.db",
    },
    -- ...
  },
}
```
