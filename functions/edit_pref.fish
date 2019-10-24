function edit_pref -d "edit one preference file via adb"
    set time (date)
    adb pull /data/audi-cgw/prefs/$argv[1].xml $argv[1].$time.xml
    emacsclient $argv[1].$time.xml
    adb push $argv[1].$time.xml /data/audi-cgw/prefs/$argv[1].xml
end
