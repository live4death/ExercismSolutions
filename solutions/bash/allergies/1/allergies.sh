#!/usr/bin/env bash

main () {
	local score=$1

	local allergens=(
		"eggs"
		"peanuts"
		"shellfish"
		"strawberries"
		"tomatoes"
		"chocolates"
		"pollen"
		"cats"
	)

	for i in "${!allergens[@]}"; do
		if ((score & (1 << i) )); then
			echo "${allergens[i]}"
		fi
	done
}

main "$@"





















