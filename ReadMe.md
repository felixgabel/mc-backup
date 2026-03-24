## How it works

On Mac, the important data to copy for a minecraft backup are located in `~/Library/Application Support/minecraft/` :

`config/`: This stores the specific settings for every mod you've installed.

`mods/`: All your .jar mod files.

`instances/`: optional, if you want to have individual instances.

`options.txt`: Your vanilla game settings (FOV, keybinds, etc.).

`resourcepacks/`: Your texture and resource packs.

`saves/`: Your actual worlds.

`screenshots/`: If you want to backup your screenshots.

`shaderpacks/`: Your shader files.

## How to use

To be able te execute the script you have to run `chmod +x path-to-script-directory/mc_backup.sh` in your terminal. This is only needed once.



To execute, run `bash path-to-script-directory/mc_backup.sh` in your terminal.
