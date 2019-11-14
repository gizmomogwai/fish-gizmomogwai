function copy_from_qnappi -d "copy one thing from qnappi to ~/Downloads"
  if ssh qnappi find /share/Qmultimedia/_movies | fzf --no-sort --multi > $TMPDIR/fzf.result
    set fzf_result (cat $TMPDIR/fzf.result)
    set h "scp \"qnappi:'$fzf_result'\" ~/Downloads/"
    commandline $h
    commandline -f repaint
  end
end
