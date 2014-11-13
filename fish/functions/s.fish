function s
	set FILES $argv
	test -z "$FILES"; and set FILES "."
	subl $FILES
end
