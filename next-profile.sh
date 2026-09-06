#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Helium: Next Profile
# @raycast.mode silent

# Optional parameters:
# @raycast.packageName Helium Profiles
# @raycast.description Switch to the next Helium profile

script_dir=${0:A:h}
open -a Helium
osascript "$script_dir/switch-profile.applescript" next Helium
