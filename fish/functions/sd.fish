function sd
	set diff_file ~/.tmp/last-svn.diff
	svn diff $argv > $diff_file
	subl $diff_file
end
