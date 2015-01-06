function gd
	set diff_file /tmp/last-git.diff
g diff $argv > $diff_file
subl $diff_file
end
