vim.cmd([[
    aunmenu PopUp
    amenu <silent> PopUp.Git\ Stage                     <cmd>Gitsigns stage_hunk<cr>
    amenu <silent> PopUp.Git\ Reset                     <cmd>Gitsigns reset_hunk<cr>
    vmenu <silent> PopUp.Git\ History                   :DiffviewFileHistory<cr>
    amenu <silent> PopUp.Definition                     <cmd>Glance definitions<cr>
    amenu <silent> PopUp.References                     <cmd>Glance references<cr>
    amenu <silent> PopUp.Type                           <cmd>Glance type_definitions<cr>
    amenu <silent> PopUp.Implementation                 <cmd>Glance implementations<cr>
    amenu <silent> PopUp.Run                            <cmd>SnipRun<cr>
    amenu <silent> PopUp.Task                           <cmd>OverseerRun<cr>
    amenu <silent> PopUp.Preview                        <cmd>MarkdownPreviewToggle<cr>
    amenu <silent> PopUp.Goto                           <cmd>lua require('dap').run_to_cursor()<cr>
    amenu disable  PopUp.Goto
    amenu <silent> 10.01 Tools.Exproler                 <cmd>NvimTreeToggle<cr>
    amenu <silent> 10.11 Tools.Git.Status               <cmd>Neogit<cr>
    amenu <silent> 10.12 Tools.Git.Diff                 <cmd>DiffviewOpen<cr>
    amenu <silent> 10.13 Tools.Git.History              <cmd>DiffviewFileHistory %<cr>
    amenu <silent> 10.21 Tools.Runner.Close             <cmd>SnipClose<cr>
    amenu <silent> 10.23 Tools.Runner.Tasks             <cmd>OverseerToggle<cr>
    amenu <silent> 10.31 Tools.DB                       <cmd>DBUIToggle<cr>
    amenu <silent> 10.41 Tools.Docker                   <cmd>DockerToolsToggle<cr>
    amenu <silent> 10.51 Tools.Orgmode                  <cmd>Neorg workspace work<cr>
    amenu <silent> 10.61 Tools.Installer.Packer         <cmd>PackerSync<cr>
    amenu <silent> 10.61 Tools.Installer.Mason          <cmd>Mason<cr>
    amenu <silent> 20.01 Fuzzy\ Finder.Denite           <cmd>Denite source<cr>
    amenu <silent> 20.02 Fuzzy\ Finder.Telescope        <cmd>Telescope<cr>
    amenu <silent> 20.03 Fuzzy\ Finder.Resume.Denite    <cmd>Denite -resume<cr>
    amenu <silent> 20.04 Fuzzy\ Finder.Resume.Telescope <cmd>Telescope resume<cr>
    amenu <silent> 30.01 Debugger.Start\ /\ Continue    <cmd>lua require('dap').continue()<cr>
]])
