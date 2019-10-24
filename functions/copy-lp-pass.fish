function copy-lp-pass -d "copy lp pass"
  if lpass ls | fzf > /tmp/fzf.result
    set lp_account (cat /tmp/fzf.result | cut -d ' ' -f 1)
    set lp_pass (lpass show $lp_account | grep 'Password:' | cut -d ' ' -f 2)
    echo -n $lp_pass | copy
  end
end
