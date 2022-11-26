if [ $# != 2 ]; then
    echo Error
fi
if [ $# == 2 ]; then
    echo $(( $1+$2 ))
fi
