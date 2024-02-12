#!/bin/sh

# directory of this script
DIR=$(dirname "$0")
# file containing accounts
ACCOUNTS="$DIR/../.accounts"

# loop on all lines of accounts file (including last line -n)
while read -a acc || [ -n "$acc" ]
do
    # print balance of acc (if not empty -n)
    if [ -n "$acc" ]; then

        if [ $# -eq 1 ]; then
            bal=$(cast balance -e --rpc-url $1 ${acc[1]})
        else
            bal=$(cast call $2 "balanceOf(address)(uint256)" --rpc-url $1 ${acc[1]})
        fi
        printf '%s %-3s %s\n' ${acc[1]}  ${acc[0]} "$bal"
    fi
done < $ACCOUNTS