# Helium Profile Switcher for Raycast

Switch between [Helium](https://helium.computer/) browser profiles with global keyboard shortcuts on macOS. Profile names are read automatically from Helium's **Profiles** menu, so nothing is hardcoded.

## Install

1. Download or clone this repository.
2. Make the commands executable:

   ```sh
   chmod +x next-profile.sh previous-profile.sh
   ```

3. Open **Raycast Settings → Extensions → Script Commands**.
4. Click **Add Directories** and choose this repository folder.
5. Assign hotkeys to the commands. Suggested mappings:
   - **Helium: Next Profile:** `Command-Option-Right`
   - **Helium: Previous Profile:** `Command-Option-Left`
6. The first time a command runs, macOS may ask whether Raycast can control System Events. Allow it under **System Settings → Privacy & Security → Automation → Raycast**.

Each Helium profile keeps its own cookies, logins, history, extensions, and tabs. Selecting a profile focuses its existing window or opens one if necessary.

## Requirements

- macOS
- [Helium](https://helium.computer/)
- [Raycast](https://www.raycast.com/)

## Troubleshooting

- If nothing happens, confirm Raycast can control System Events in macOS Automation settings.
- If commands do not appear, confirm both `.sh` files are executable and refresh Raycast.
- The scripts expect the browser app and process to be named `Helium` and its profile menu to be named `Profiles`.

## License

MIT
