-- Project
require('project_nvim').setup({
    detection_methods = { "pattern" },
    silent_chdir = false,
    scope_chdir = 'tab',
})

-- Package Info
require('package-info').setup({
    package_manager = 'npm'
})
