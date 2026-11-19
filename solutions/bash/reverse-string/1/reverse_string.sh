#!/usr/bin/env bash

main () {
	local word="$1"
	local result=""

	for (( i=${#word}-1; i>=0; i-- )); do
		result+="${word:i:1}"
	done

	echo "$result"
}

main "$@"
