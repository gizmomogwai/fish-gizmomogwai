function scp_to_qnappi -d "scp one thing to qnappi-"
  if find Downloads | fzf > $TMPDIR/fzf.result
    echo sending (cat $TMPDIR/fzf.result) to qnappi _movies
    scp -r (cat $TMPDIR/fzf.result) "qnappi:/share/MD0_DATA/Qmultimedia/_movies/"
    and say done
    and rm -rf (cat $TMPDIR/fzf.result)
  end
end
