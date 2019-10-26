function rvm --argument-names "ruby" --description "Ruby Version Manager"
  if test -n "$ruby"
    set parts (string split "@" $ruby)
    set ruby_version $parts[1]
    set ruby_gemset $parts[2]
  else
    set ruby_version (head -1 .ruby-version)
    set ruby_gemset (head -1 .ruby-gemset)
  end

  set total $ruby_version@$ruby_gemset
  set -g -x GEM_HOME /Users/gizmo/.rvm/gems/$total
  set -g -x PATH ~/.rvm/gems/$total/bin ~/.rvm/gems/$ruby_version@global/bin ~/.rvm/rubies/$ruby_version/bin $PATH
  set -g -x GEM_PATH ~/.rvm/gems/$total ~/.rvm/gems/$ruby_version@global
  set -g -x RUBY_VERSION $total
  set -g -x ruby_version $total
end
