function cl -d "clear screen and scrollback in terminal"
  clear; and printf '\e[3J'
end
