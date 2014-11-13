function update
	echo "Updating.."
	if test (sudo -n uptime 2>&1 | grep 'load' | wc -l ) -eq 0
		echo "Enter password up front."
		sudo -v
	end
	brew update
	brew upgrade
	brew cleanup
	fish_update_completions
	which composer; and composer self-update
	flushcache
	emptytrash
end
