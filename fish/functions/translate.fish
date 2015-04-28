function translate
	set LANG $argv[1]
set TEXT $argv[2]
http "https://translate.yandex.net/api/v1.5/tr.json/translate?key=trnsl.1.1.20150427T203709Z.7a5d7163104eacad.3d5aa928f7edd1a5a9647184341025c4869d4a22&lang=$LANG&text=$TEXT" | jq '.text'
end
