vim.cmd([[
    aunmenu PopUp
    autocmd! nvim_popupmenu
    amenu <silent> PopUp.Lsp                            <cmd>popup! ]Lsp<cr>
    amenu <silent> PopUp.Git                            <cmd>popup! ]Git<cr>
    vmenu <silent> PopUp.Git                            <cmd>popup! ]Git<cr>
    amenu <silent> PopUp.Runner                         <cmd>popup! ]Runner<cr>
    amenu <silent> PopUp.Preview                        <cmd>MarkdownPreviewToggle<cr>
    amenu <silent> PopUp.DAP                            <cmd>popup! ]DAP<cr>
    amenu disable  PopUp.DAP
    amenu <silent> PopUp.Node\ Packages                 <cmd>Telescope package_info<cr>
    amenu <silent> PopUp.Select\ Environment            <cmd>lua require('kulala').set_selected_env()<cr>
    amenu <silent> ]Lsp.Definition                      <cmd>Glance definitions<cr>
    amenu <silent> ]Lsp.References                      <cmd>Glance references<cr>
    amenu <silent> ]Lsp.Type                            <cmd>Glance type_definitions<cr>
    amenu <silent> ]Lsp.Implementation                  <cmd>Glance implementations<cr>
    amenu <silent> ]Lsp.Format                          <cmd>lua vim.lsp.bus.format()<cr>
    amenu <silent> ]Git.Stage                           <cmd>Gitsigns stage_hunk<cr>
    vmenu <silent> ]Git.Stage                           :Gitsigns stage_hunk<cr>
    amenu <silent> ]Git.Undo\ Stage                     <cmd>Gitsigns undo_stage_hunk<cr>
    vmenu <silent> ]Git.Undo\ Stage                     :Gitsigns undo_stage_hunk<cr>
    amenu <silent> ]Git.Reset                           <cmd>Gitsigns reset_hunk<cr>
    vmenu <silent> ]Git.Reset                           :Gitsigns reset_hunk<cr>
    vmenu <silent> ]Git.History                         :DiffviewFileHistory<cr>
    amenu <silent> ]Runner.Task                         <cmd>OverseerRun<cr>
    amenu <silent> ]Runner.REPL                         <cmd>SnipRun<cr>
    vmenu <silent> ]Runner.REPL                         <cmd>SnipRun<cr>
    amenu <silent> ]DAP.Goto                            <cmd>lua require('dap').run_to_cursor()<cr>
    amenu <silent> ]DAP.Eval                            <cmd>lua require('dapui').eval()<cr>
    amenu <silent> 10.01 Tools.Exproler                 <cmd>Neotree toggle<cr>
    amenu <silent> 10.11 Tools.Git.Status               <cmd>Neogit<cr>
    amenu <silent> 10.12 Tools.Git.Diff                 <cmd>DiffviewOpen<cr>
    amenu <silent> 10.13 Tools.Git.History              <cmd>DiffviewFileHistory %<cr>
    amenu <silent> 10.21 Tools.Runner                   <cmd>OverseerToggle<cr>
    amenu <silent> 10.31 Tools.DB                       <cmd>lua require('dbee').toggle()<cr>
    amenu <silent> 10.41 Tools.Debugger                 <cmd>lua require('dap').continue()<cr>
    amenu <silent> 10.51 Tools.Installer.Packer         <cmd>PackerSync<cr>
    amenu <silent> 10.52 Tools.Installer.Mason          <cmd>Mason<cr>
    amenu <silent> 20.01 Fuzzy\ Finder.Telescope        <cmd>Telescope<cr>
    amenu <silent> 20.02 Fuzzy\ Finder.Resume           <cmd>Telescope resume<cr>
    amenu <silent> 30.01 Note.Orgmode                   <cmd>Neorg<cr>
    amenu <silent> 30.11 Note.Zettelkasten.New\ Note    <cmd>ZkNew<cr>
    amenu <silent> 30.11 Note.Zettelkasten.Notes        <cmd>ZkNotes<cr>
    amenu <silent> 30.12 Note.Zettelkasten.Tags         <cmd>ZkTags<cr>
]])
