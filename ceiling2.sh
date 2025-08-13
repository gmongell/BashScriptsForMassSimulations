#!/bin/bash
integer ceiling_result
ceiling_divide() {
  ceiling_result=$(($1/$2))
  echo $((ceiling_result+1))
}

#fcn called by
#ceiling_divide 1.234 500