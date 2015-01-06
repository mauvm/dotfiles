function slog
	touch ~/.tmp
	set log_file ~/.tmp/log-svn.txt
	svn log $argv > $log_file
	subl $log_file
end
