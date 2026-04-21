return {
    "benlubas/molten-nvim",
    version = "^1.0.0",
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
        vim.g.molten_image_provider = "image.nvim"
        vim.g.molten_wrap_output = true
        vim.keymap.set(
            "n",
            "<localleader>mi",
            ":MoltenInit<CR>",
            { silent = true, desc = "Initialize the plugin." }
        )
        vim.keymap.set(
            "n",
            "<localleader>e",
            ":MoltenEvaluateOperator<CR>",
            { silent = true, desc = "Run the operator selection." }
        )
        vim.keymap.set(
            "n",
            "<localleader>rl",
            ":MoltenEvaluateLine<CR>",
            { silent = true, desc = "Evaluate the line." }
        )
        vim.keymap.set(
            "n",
            "<localleader>rr",
            ":MoltenReevaluateCell<CR>",
            { silent = true, desc = "Re-evaluate the cell." }
        )
        vim.keymap.set(
            "v",
            "<localleader>r",
            ":<C-u>MoltenEvaluateVisual<CR>gv",
            { silent = true, desc = "Evaluate the visual selection." }
        )
        vim.keymap.set(
            "n",
            "<localleader>rd",
            ":MoltenDelete<CR>",
            { silent = true, desc = "Delete the cell." }
        )
        vim.keymap.set(
            "n",
            "<localleader>oh",
            ":MoltenHideOutput<CR>",
            { silent = true, desc = "Hide the output." }
        )
        vim.keymap.set(
            "n",
            "<localleader>os",
            ":noautocmd MoltenEnterOutput<CR>",
            { silent = true, desc = "Show or enter the output." }
        )
        vim.keymap.set(
            "n",
            "<localleader>op",
            ":MoltenImagePopup<CR>",
            { silent = true, desc = "Open image in an external viewer." }
        )
    end,
}
