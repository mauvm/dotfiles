function transfer
	# TODO: If STDIN has data, read and write to textfile, then transfer that
	# TODO: Add option -z to zip given folder/files

	if test $argv[1] = "-z"
		set filename (basename (readlink -f $argv[2]))
		set zipfile (mktemp -t $filename.XXX.zip)
		rm $zipfile
		zip -r $zipfile $argv[2..-1]
		set file $zipfile
	else
		set file $argv[1]
		set filename (basename $argv[1])
	end

	set tmpfile (mktemp -t transfer.XXXXX)
	curl --progress-bar --upload-file "$file" "https://transfer.sh/$filename" >> $tmpfile
	set url (cat $tmpfile)
	rm -f $tmpfile

	echo -n $url | pbcopy
	echo $url
end
