function scp_to_seriez -d "scp one thing to qnappi-"
  if find Downloads | fzf > $TMPDIR/fzf.result
    set fzf_result (cat $TMPDIR/fzf.result)
    set h "scp -r \"$fzf_result\" \"qnappi:/Qmultimedia/_movies/_seriez/\"; and rm -rf \"$fzf_result\""
    commandline $h
    commandline -f repaint
  end
end
