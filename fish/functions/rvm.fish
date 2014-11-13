# Source: https://gist.github.com/eggegg/6077153

function rvm --description "Ruby Version Manager"
	exec bash --login -c "rvm $argv; exec fish"
end
