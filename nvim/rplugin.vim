" perl plugins


" node plugins


" python3 plugins
call remote#host#RegisterPlugin('python3', '/root/.local/share/nvim/site/pack/packer/start/denite.nvim/rplugin/python3/denite', [
      \ {'sync': v:true, 'name': '_denite_init', 'type': 'function', 'opts': {}},
     \ ])
call remote#host#RegisterPlugin('python3', '/root/.local/share/nvim/site/pack/packer/start/deoplete.nvim/rplugin/python3/deoplete', [
      \ {'sync': v:false, 'name': '_deoplete_init', 'type': 'function', 'opts': {}},
     \ ])
call remote#host#RegisterPlugin('python3', '/root/.local/share/nvim/site/pack/packer/start/ejdict.nvim/rplugin/python3/ejdict', [
      \ {'sync': v:false, 'name': 'EjdictClear', 'type': 'command', 'opts': {}},
      \ {'sync': v:false, 'name': 'EjdictSearch', 'type': 'command', 'opts': {}},
      \ {'sync': v:false, 'name': 'EjdictToggle', 'type': 'command', 'opts': {}},
     \ ])


" ruby plugins


" python plugins


