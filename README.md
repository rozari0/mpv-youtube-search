
# Mpv Youtube Search

This lua script for [mpv media player](https://mpv.io/) will use zenity and youtube-dl for search youtube video.

Based on [mpv-zenity-open-files](https://github.com/alifarazz/mpv-zenity-open-files) by alifarazz.

## Keybindings
- `CTRL+SHIFT+s`: search youtube videos.
### Coutom Keybindings
Change bottom of **youtube-search.lua** file.

## Coustom Result Number
Change value of **`rNumber`** variable in **youtube-search.lua** file.

### How to install
### For lua version 5.3 or older
```bash
cd 
wget -O ~/.config/mpv/scripts/youtube-search.lua https://github.com/rozari0/mpv-youtube-search/raw/master/youtube-search.lua
```
### For lua version newer than 5.3
```bash
wget -O ~/.config/mpv/scripts/youtube-search-new.lua https://github.com/rozari0/mpv-youtube-search/raw/master/youtube-search-for-newer-lua.lua
```

## Warning & Suggestion
May not work on windows.
Using with [mpv-gallery-view](https://github.com/occivink/mpv-gallery-view/) recommended.

