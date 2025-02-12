local md_colors = require "md_colors"
local fmt = {}

function fmt.bold(str)
    return "<b>"..str.."</b>"
end

function fmt.italic(str)
    return "<i>"..str.."</i>"
end

function fmt.underline(str)
    return "<u>"..str.."</u>"
end

function fmt.primary(str)
    return fmt.colored(str, ui:get_colors().primary_text)
end

function fmt.secondary(str)
    return fmt.colored(str, ui:get_colors().secondary_text)
end

function fmt.colored(str, color)
    return "<font color=\""..color.."\">"..str.."</font>"
end

function fmt.bg_colored(str, color)
    return "<span style=\"background-color: "..color.."\">"..str.."</span>"
end

function fmt.red(str)
    return fmt.colored(str, md_colors.red_500)
end

function fmt.green(str)
    return fmt.colored(str, md_colors.green_500)
end

function fmt.blue(str)
    return fmt.colored(str, md_colors.blue_500)
end

function fmt.space(str)
    return "&nbsp;"
end

function fmt.escape(str)
    return (string.gsub(str, "[}{\">/<'&]", {
        ["&"] = "&amp;",
        ["<"] = "&lt;",
        [">"] = "&gt;",
        ['"'] = "&quot;",
        ["'"] = "&#39;",
        ["/"] = "&#47;"
    }))
end

return fmt
