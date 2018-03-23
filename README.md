# fullscreen-help.vim

Open help files the same as you usually do with "help example" and they'll open in a new buffer similar to "e file"

Works with "h", "help", or "Help"

This works by opening a blank buffer and setting it's buffer type to 'help'. Now when you run 'help ...' the blank buffer will show the helpfile in fullscreen. The function then adds the buffer to the bufferlist so you can use :bn, :bp, etc.
