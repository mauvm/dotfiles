function o
	set FILES $argv
	test -z "$FILES"; and set FILES "."
	open $FILES
end
