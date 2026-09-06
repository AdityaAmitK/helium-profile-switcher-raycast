on run argv
  set direction to item 1 of argv
  set browserName to item 2 of argv

  tell application "System Events"
    tell process browserName
      set frontmost to true
      set currentTitle to name of front window
      set profileNames to {}

      repeat with menuEntry in menu items of menu "Profiles" of menu bar item "Profiles" of menu bar 1
        set entryName to name of menuEntry
        if entryName is not missing value and entryName does not end with "…" and entryName does not end with "..." then
          set end of profileNames to entryName
        end if
      end repeat

      if (count profileNames) is 0 then error "No Helium profiles found"

      set currentIndex to 0
      repeat with i from 1 to count profileNames
        if currentTitle contains item i of profileNames then set currentIndex to i
      end repeat

      if direction is "previous" then
        if currentIndex is less than or equal to 1 then
          set targetIndex to count profileNames
        else
          set targetIndex to currentIndex - 1
        end if
      else
        if currentIndex is 0 or currentIndex is count profileNames then
          set targetIndex to 1
        else
          set targetIndex to currentIndex + 1
        end if
      end if

      set targetProfile to item targetIndex of profileNames
      click menu item targetProfile of menu "Profiles" of menu bar item "Profiles" of menu bar 1
    end tell
  end tell
end run
