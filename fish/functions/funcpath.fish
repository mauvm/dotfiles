function funcpath
	set file (readlink -f ~/.config/fish/functions/$argv[1].fish)
	if test ! -f $file
		return 1
	end
	echo $file
end
