local M = {}

function M.format_name(input_string)
  local last_slash_index = input_string:match(".*/()")
  local extracted_string = input_string

  if last_slash_index then
    extracted_string = input_string:sub(last_slash_index)
  end

  extracted_string = extracted_string:gsub("%.nvim$", "")

  return extracted_string
end

return M
