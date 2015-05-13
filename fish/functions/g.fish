function g
	if test (count $argv) -eq 0
		git s
	else
		git $argv
	end
end
