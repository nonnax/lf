#!/usr/bin/sh
# set -e

e() {
	while true; do
		# selected_file=$(ls -pa | fzf  --reverse --preview='[[ -f {} ]] && (bat --color=always {} || cat {}) || (tree -C {} | less)' --preview-window='80%')
		selected_file=$(CLICOLOR_FORCE=1 ls -G -a -pu | fzf  --ansi --reverse --preview='[[ -f {} ]] && (bat --color=always {} || cat {}) || (tree -C {} | less)' --preview-window=right:80%)
		last_selected_file=$(pwd)

		if test -f "$selected_file"; then
			editext.lua "$selected_file"
		elif test -d "$selected_file"; then
			cd "$selected_file" &> /dev/null
		elif test -z $selected_file; then
			cd $last_selected_file
			return 0
		fi
	done

}

