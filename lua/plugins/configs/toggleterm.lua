local ok, toggleterm = pcall(require, "toggleterm")

if not ok then
    return
end

toggleterm.setup {
    -- size can be a number or function which is passed the current terminal
    --size = 20 |
    size = function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<leader>vt]],
    insert_mappings = false,
    --direction = 'vertical' | 'horizontal' | 'tab' | 'float',
    direction = "horizontal",
    close_on_exit = true, -- close the terminal window when the process exits
    shell = "%SystemRoot%/System32/WindowsPowerShell/v1.0/powershell.exe"-- change the default shell
}
