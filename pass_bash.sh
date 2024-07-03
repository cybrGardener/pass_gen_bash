#!/usr/bin/env bash

random_pass1() {
   < /dev/random tr -dc [:punct:] |
    head -c 10;
    echo
}

random_pass2() {
   < /dev/random tr -dc [:upper:] |
   head -c 10;
   echo
}

random_pass3() {
   < /dev/random tr -dc [:digit:] |
   head -c 10;
   echo
}

random_pass4() {
   < /dev/random tr -dc [:lower:] |
   head -c 10;
   echo
}

random_pass1
random_pass2
random_pass3
random_pass4

var1=$random_pass1
var2=$random_pass2
var3=$random_pass3
var4=$random_pass4

echo "$var1"
echo "$var2"
echo "$var3"
echo "$var4"