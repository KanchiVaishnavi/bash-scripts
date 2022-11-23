#!/bin/bash

var1="Apple"
myfun(){
    local var2="Banana"
    var3="Cherry"
    echo "The name of first fruit is $var1"
    echo "The name of second fruit is $var2"
}

myfun

echo "The name of first fruit is $var1"
echo "The name of second fruit is $var2"
echo "The name of third fruit is $var3"