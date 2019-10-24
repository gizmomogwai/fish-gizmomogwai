function rm_on_qnappi -d "rm one thing on qnappi"
  if ssh qnappi find /share/Qmultimedia/_movies | fzf --no-sort --multi > $TMPDIR/fzf.result
    set fzf_result (cat $TMPDIR/fzf.result)
    set h "ssh qnappi rm -rf $fzf_result"
    commandline $h
    commandline -f repaint
  end
end
