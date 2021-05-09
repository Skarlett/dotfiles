# dotfiles

To load dot files
```
git clone https://github.com/Skarlett
mv dotfiles/* ~
echo 'source "$HOME/.config/bashrc/load.sh"' >> $HOME/.bashrc
```

### .local/bin


|Binary | pragmatic expression |Description |
--- | --- | ---
|unadfly|`unadfly <url>`|Kind of old, you don't see adfly quite as often, but this takes in an adfly url and pops out the url its redirecting to.|
|myip|`myip`|Just a quick script to show your local network assignment via python.|
 

### .config/bashrc/functions

|function | pragmatic expression |Description |
--- | --- | ---
|mkd|`mkd <dir>`| `mkdir` and `cd` into it.|
|calc|`calc 2+2`| arithmetic |
|ex|`ex <archive file>`| generically decompress archive types `bz2`, `gz`, `rar`, `tar`, `zip`, `z`, `7z`, `jar`|  
|getcertnames|`getcertnames <name.tld> *`|shows cert registration|
|spawn|`spawn <exec>`| Spawns a process with redirection from stdout and stderr to /dev/null|
|transfer|`transfer <file>`|uploads file to https:://transfer.sh|
|sizeof|`sizeof <file/dir>`|grabs the file size of file/dir|
|sizeof_gz|`sizeof_gz <file>`|compares original file to gunzipped size|
|rustdocs|`rustdocs <cargo dir>`| pulls in top level dependency documentation|
