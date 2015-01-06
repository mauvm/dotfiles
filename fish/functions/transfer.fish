function transfer
	set tmpfile (mktemp -t transfer.XXXXX)
	set filename (basename $argv[1])
	curl --progress-bar --upload-file "$argv[1]" "https://transfer.sh/$filename" >> $tmpfile
	set url (cat $tmpfile)
	rm -f $tmpfile
	echo $url | pbcopy
	echo $url
end
