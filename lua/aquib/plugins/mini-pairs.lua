return {
  'echasnovski/mini.pairs',
  version = false,
  event = 'InsertEnter', -- Loads when you start typing
  config = function()
    require('mini.pairs').setup()
  end
}
