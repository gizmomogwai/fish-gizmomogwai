function copy-lp-name -d "copy lp name"
  if lpass ls | fzf > /tmp/fzf.result
    set lp_account (cat /tmp/fzf.result | cut -d ' ' -f 1)
    set lp_username (lpass show $lp_account | grep 'Username:' | cut -d ' ' -f 2)
    echo -n $lp_username | copy
  end
end
