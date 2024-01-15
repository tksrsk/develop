vim.cmd([[
    aunmenu PopUp
    amenu <silent> PopUp.Git\ Reset                     <cmd>Gitsigns reset_hunk<cr>
    vmenu <silent> PopUp.Git\ History                   :DiffviewFileHistory<cr>
    amenu <silent> PopUp.Definition                     <cmd>Glance definitions<cr>
    amenu <silent> PopUp.References                     <cmd>Glance references<cr>
    amenu <silent> PopUp.Type                           <cmd>Glance type_definitions<cr>
    amenu <silent> PopUp.Implementation                 <cmd>Glance implementations<cr>
    amenu <silent> PopUp.Run                            <cmd>SnipRun<cr>
    vmenu <silent> PopUp.Run                            :SnipRun<cr>
    amenu <silent> PopUp.Task                           <cmd>OverseerRun<cr>
    amenu <silent> PopUp.Preview                        <cmd>MarkdownPreviewToggle<cr>
    amenu <silent> PopUp.Goto                           <cmd>lua require('dap').run_to_cursor()<cr>
    amenu disable  PopUp.Goto
    amenu <silent> PopUp.Node\ Packages                 <cmd>Telescope package_info<cr>
    amenu <silent> 10.01 Tools.Exproler                 <cmd>Neotree toggle<cr>
    amenu <silent> 10.11 Tools.Git.Status               <cmd>Neogit<cr>
    amenu <silent> 10.12 Tools.Git.Diff                 <cmd>DiffviewOpen<cr>
    amenu <silent> 10.13 Tools.Git.History              <cmd>DiffviewFileHistory %<cr>
    amenu <silent> 10.21 Tools.Runner                   <cmd>OverseerToggle<cr>
    amenu <silent> 10.31 Tools.DB                       <cmd>DBUIToggle<cr>
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
