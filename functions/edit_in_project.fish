function edit_in_project -d "edit one file in the project"
  set -l file (find . | fzf --preview "head -100 {}")
  commandline "emacsclient $file"
  commandline -f repaint
end
