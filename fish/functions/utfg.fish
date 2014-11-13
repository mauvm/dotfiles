function utfg
	echo "http://lmgtfy.com/?q=$argv" | tr ' ' '+' | tr -d '\n' | pbcopy
end
