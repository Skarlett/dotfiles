# dotfiles
# archived: now using https://github.com/Skarlett/nixos-config
Install
```
curl https://raw.githubusercontent.com/Skarlett/dotfiles/master/install.sh | bash
```


-----
## .local/bin
.local/bin is usually apart of `PATH`. These are are my binary files I always tag along

|Binary | pragmatic expression |Description |
--- | --- | ---
|unadfly|`unadfly <url>`|Kind of old, you don't see adfly quite as often, but this takes in an adfly url and pops out the url its redirecting to.|
|myip|`myip`|Just a quick script to show your local network assignment via python.|
 


-----

## .config/bashrc/functions

|function | pragmatic expression |Description |
--- | --- | ---
|mkd|`mkd <dir>`| `mkdir` and `cd` into it.|
|calc|`calc 2+2`| arithmetic |
|ex|`ex <archive file>`| generically decompress archive types `bz2`, `gz`, `rar`, `tar`, `zip`, `z`, `7z`, `jar`|  
|getcertnames|`getcertnames <name.tld> *`|shows cert registration|
|spawn|`spawn <exec>`| Spawns a process with redirection from stdout and stderr to /dev/null|
|transfer|`transfer <file>`|uploads file to https://transfer.sh|
|sizeof|`sizeof <file/dir>`|grabs the file size of file/dir|
|sizeof_gz|`sizeof_gz <file>`|compares original file size to gunzipped size|
|rustdocs|`rustdocs <cargo dir>`| pulls in top level dependency documentation|
|compress|`compress <dir/file>`| produce tarball (`.tar.gz`) using `pigz`, `gzip` or `zopfli`


-----


## .config/bashrc/alias
Theres more, but these are the have the most obfuscated definitions.

|alias | pragmatic expression |Description |
--- | --- | ---
|vol|`vol (+/-) 10%`| control pulseaudio from the terminal|
|glog|`glog`|show commits colorized and piped into less|
|gd|`gd <file_a>`|git diff colorized and piped into less|
|gl|`gl`|`ls` but only shows files tracked by `git`|
