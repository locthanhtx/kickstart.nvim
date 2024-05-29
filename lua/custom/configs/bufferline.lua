local bufferline = require 'bufferline'

bufferline.setup {
  options = {
    offsets = {
      {
        -- đoạn cài đặt này cho phép Tab
        -- tự động thụt vào khi Nvim-tree được mở ra
        filetype = 'NvimTree',
        text = 'File Explorer',
        text_align = 'center',
        separator = true,
      },
    },
    buffer_close_icon = '×',
  },
}

