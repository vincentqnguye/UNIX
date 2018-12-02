

#!/bin/bash

# Filename: ex17.sh
#
# Problem: Using awk add two more columns to the table. Calculate the change in currency
# from the table. Then calculate the percentage of the change relative to the low value.
# awk '{ $4+$5 }' ex16.input
cat ex16.input | awk '{
		printf $0" "
		if ( $2 ~ /^[0-9]+/ ) {
			$4 = (($3-$2))
			$5 = (($4/$2*100))
			printf("%0.4f",$4)
			printf " "
			printf("%0.4f\n",$5)
		} else if ( $2 ~ /^[A-z]+/ ) {
			print "Variation VarPercent"
		} else {
			print ""
		}
	}'
