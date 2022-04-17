# neovim-config
My personal neovim config for basic latex usage, writing notes and editing config files.

Setting up neovim for coding is a future project.

This project exists mainly to populate my github profile, and perhaps to provide some
inspiration for someone.


This includes some configuration that enable me to use neovim as the editor to my own zettelkasten, 
using [this excelent blog post series][1] as reference. 

Not all features have been implemented 1 to 1 as of yet. 

A notable change is the use of an automatic timestamp at the _end_ of the filename for new notes (zettels).
This way, I can programmatically find and change filenames based on their timestamps, should I need to, 
while still having convenient filename completetion based on their title.

The script for keeping the list of tags I maintain at the end of my `index` zettel is a work in progress.

Currently, no fuzzy finder has been set up as of yet. So for writing links I rely on my own memory and 
filename completion, which is feasible only while the collection of notes is still small. 

[1]: https://www.edwinwenink.xyz/posts/42-vim_notetaking/ "vanilla vim zettelkasten"
