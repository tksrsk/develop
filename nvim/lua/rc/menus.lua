vim.cmd([[
    aunmenu PopUp
    amenu <silent> PopUp.Git\ Stage                     <cmd>Gitsigns stage_hunk<cr>
    amenu <silent> PopUp.Git\ Reset                     <cmd>Gitsigns reset_hunk<cr>
    vmenu <silent> PopUp.Git\ History                   :DiffviewFileHistory<cr>
    amenu <silent> PopUp.Definition                     <cmd>lua require('goto-preview').goto_preview_definition()<cr>
    amenu <silent> PopUp.References                     <cmd>lua require('goto-preview').goto_preview_references()<cr>
    amenu <silent> PopUp.Type                           <cmd>lua require('goto-preview').goto_preview_type_definition()<cr>
    amenu <silent> PopUp.Implementation                 <cmd>lua require('goto-preview').goto_preview_implementation()<cr>
    amenu <silent> PopUp.Breakpoint                     <cmd>lua require('dap').toggle_breakpoint()<cr>
    amenu <silent> PopUp.Edit\ Block                    <cmd>FeMaco<cr>
    amenu <silent> PopUp.Run                            <cmd>SnipRun<cr>
    amenu <silent> 10.01 Tools.Exproler                 <cmd>NvimTreeToggle<cr>
    amenu <silent> 10.11 Tools.Git.Status               <cmd>Neogit<cr>
    amenu <silent> 10.12 Tools.Git.Diff                 <cmd>DiffviewOpen<cr>
    amenu <silent> 10.13 Tools.Git.History              <cmd>DiffviewFileHistory %<cr>
    amenu <silent> 10.31 Tools.Runner.Close             <cmd>SnipClose<cr>
    amenu <silent> 10.32 Tools.Runner.Reset             <cmd>SnipReset<cr>
    amenu <silent> 10.41 Tools.Orgmode                  <cmd>Neorg gtd views<cr>
    amenu <silent> 10.51 Tools.Installer.Packer         <cmd>PackerSync<cr>
    amenu <silent> 10.61 Tools.Installer.Mason          <cmd>Mason<cr>
    amenu <silent> 20.01 Fuzzy\ Finder.Open             <cmd>Denite source<cr>
    amenu <silent> 20.02 Fuzzy\ Finder.Resume.Open      <cmd>Denite -resume<cr>
    amenu <silent> 20.03 Fuzzy\ Finder.Resume.Next      <cmd>Denite -resume -cursor-pos=+1 -immediately<cr>
    amenu <silent> 20.04 Fuzzy\ Finder.Resume.Prev      <cmd>Denite -resume -cursor-pos=-1 -immediately<cr>
    amenu <silent> 30.01 Debugger.Start\ /\ Continue    <cmd>lua require('dap').continue()<cr>
]])
