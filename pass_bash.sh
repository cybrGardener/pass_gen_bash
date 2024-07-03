#!/usr/bin/env bash

#block where functions are defined
random_pass1() {
   < /dev/random tr -dc [:punct:] |
    head -c 20;
    echo
}

random_pass2() {
   < /dev/random tr -dc [:upper:] |
   head -c 20;
   echo
}

random_pass3() {
   < /dev/random tr -dc [:digit:] |
   head -c 20;
   echo
}

random_pass4() {
   < /dev/random tr -dc [:lower:] |
   head -c 20;
   echo
}

date_pass() {
    date +%s | sha256sum | base64 | od -t x1 | tr -d [:space:] | tail -c +8 | head -c 20;
    echo
}

random_number() {
    RANGE1=10
    number1=$RANDOM

    number1=$(($number1 % $RANGE1));
    echo $number1
}

#block where functions are called
random_pass1
random_pass2
random_pass3
random_pass4
date_pass
random_number

#block where variables are set
var1=$random_pass1
var2=$random_pass2
var3=$random_pass3
var4=$random_pass4
var5=$date_pass

number1=$random_number
add="2"
number2=$(($number1 + $add))

echo "$var1"
echo "$var2"
echo "$var3"
echo "$var4"
echo "$var5"
echo "$number1"
echo "$number2"

: <<'dupa'
sub_var1="${var1:number1:number2}"
sub_var2="${var2:number1:number2}"
sub_var3="${var3:number1:number2}"
sub_var4="${var4:number1:number2}"
sub_var5="${var5:number1:number2}"

com_var1="${sub_var1}${sub_var2}${sub_var3}${sub_var4}${sub_var5}"

echo $com_var1
dupa
echo "dupa"