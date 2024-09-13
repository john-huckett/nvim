function Number_switch()
    local num = vim.wo.number
    local rel = vim.wo.relativenumber

    if num == false and rel == false then
        vim.wo.number =false
        vim.wo.relativenumber = true
        print("relative numbers")
        elseif num == false and rel == true then
        vim.wo.number = true
        vim.wo.relativenumber = false
        print("absolute numbers")
        elseif num == true and rel ==false then
        vim.wo.number =true
        vim.wo.relativenumber = true
        print("hybrid numbers ")
        elseif num == true and rel == true then
        vim.wo.number = false
        vim.wo.relativenumber = false
        print("no numbers")
    end
end


