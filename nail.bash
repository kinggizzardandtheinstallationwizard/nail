nail() {
	# nail --- "nl plus tail"
	# Equivalent to `wc -l`, excluding empty lines

	if (($# < 1)); then
		local -i i
		i=0
		while read -r l; do
			if [[ -n "$l" ]]; then
				((i++))
			fi
		done

		printf "${i}\n"
	fi
	
	local -i i
	local -i lines
	local -i total
	i=0
	total=0

	for arg in "$@"
	do
		lines=`nl $arg | tail -n1 | awk '{print $1}'`

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
