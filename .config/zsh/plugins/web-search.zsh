#!/usr/bin/zsh

# Plugin from https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/web-search/web-search.plugin.zsh

function web_search() {
	emulate -L zsh

	# define search engine URLS
	typeset -A urls
	urls=(
	    google      "https://www.google.com/search?q="
	    duckduckgo  "https://www.duckduckgo.com/?q="
	)

	# check whether the search engine is supported
	if [[ -z "$urls[$1]" ]]; then
	  echo "Search engine '$1' not supported."
	  return 1
	fi

	# search or go to main page depending on number of arguments passed
	if [[ $# -gt 1 ]]; then
	  # build search url:
	  # join arguments passed with '+', then append to search engine URL
	  url="${urls[$1]}${(j:+:)@[2,-1]}"
	else
	  # build main page url:
	  # split by '/', then rejoin protocol (1) and domain (2) parts with '//'
	  url="${(j://:)${(s:/:)urls[$1]}[1,2]}"
	fi
	
	open_command "$url"
}

alias google='web_search google'
alias youtube='web_search duckduckgo \!yt'
