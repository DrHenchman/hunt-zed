# Hunt Zed

This is a fork of https://github.com/DrHenchman/uhc-pack to experiment with a different sort of survival based minigame

## How to build the datapack

To ease maintenance of the configuration book, the books JSON text is separated
into separate files located within the `book/` directory. To generate the
function which gives the book to players, you'll need to execute the following
command:

    bin/generate.sh path/to/minecraft/world/datapacks/hunt-zed.zip

This command will not overwrite an existing zip file if it existings. To
change this default behaviour, you can use the `--overwrite` flag

    bin/generate.sh --overwrite path/to/minecraft/world/datapacks/hunt-zed.zip
