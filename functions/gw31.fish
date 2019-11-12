function gw31_deactivate --description "deativate gw31"
  set -e Target
  set -e Debug
  functions -e fish_prompt
  functions -c _old_gw31_fish_prompt fish_prompt
  functions -e _old_gw31_fish_prompt
end

function gw31 --description "GW31 Project setup"

  cd "/media/more/audi/master-clean"
  rvm ruby-2.0.0-p648@cgw3
  
  set -gx Target audi-cgw-mid
  set -gx Debug true

  functions -c fish_prompt _old_gw31_fish_prompt
  function fish_prompt
    set -l bg 333
    set -l standout 0f0
    
    set_color $standout --background $bg
    echo -n "GW31 "
    set_color $fish_color_normal --background $bg
    echo -n Target=
    set_color $standout --background $bg
    echo -n "$Target "
    set_color $fish_color_normal --background $bg
    echo -n Debug=
    set_color $standout --background $bg
    echo $Debug
    _old_gw31_fish_prompt
  end
end
