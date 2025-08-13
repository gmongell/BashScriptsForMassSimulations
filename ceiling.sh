#!/bin/bash
number="$1"
divisor="$2"
ceiling() {
    awk -vnumber="$number" -vdiv="$divisor" '
    function ceiling(x){return (x == int(x)) ? x : int(x)+1 }
    BEGIN{ print ceiling(number/div) }'
}
ceiling


#called by
#./ceiling.sh 1 2

#in my version of this function.  the function I need
#does not have a divisor, therefore divisor and -vdiv
#can be eliminated