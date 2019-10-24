function scp_to_wohnzimmer -d "scp one thing to wohnzimmer"
  if find Downloads | fzf > $TMPDIR/fzf.result
    echo sending (cat $TMPDIR/fzf.result) to wohnzimmer
    scp -r (cat $TMPDIR/fzf.result) "wohnzimmer:./Movies/"
    and rm -rf (cat $TMPDIR/fzf.result)
  end
end
