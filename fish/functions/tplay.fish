function tplay
	if test ! -f /usr/local/bin/webtorrent
npm install -g webtorrent
end
webtorrent $argv[1] --vlc -q
end
