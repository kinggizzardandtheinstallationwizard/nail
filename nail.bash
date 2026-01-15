nail() {
	# nail --- "nl plus tail"
	# Equivalent to `wc -l`, excluding empty lines

	# interactive/pipe mode
	if (($# < 1)); then
		local -i i
		i=0

		# increment only if read line is not blank
		while read -r l; do
			if [[ -n "$l" ]]; then
				((i++))
			fi
		done

		printf "${i}\n"
	fi
	
	# file mode
	local -i i
	local -i lines
	local -i total
	i=0
	total=0

	for arg in "$@"
	do
		lines=`nl $arg | tail -n1 | awk '{print $1}'`

		# when there are multiple files, start each line
		# of output with a space to correctly imitate `wc -l`
		if (($# > 1)); then
			printf " "
		fi

		printf "${lines} ${arg}\n"

		((i++))
		total=${total}+${lines}
	done

	if ((i > 1)); then
		printf " ${total} total\n"
	fi
}
