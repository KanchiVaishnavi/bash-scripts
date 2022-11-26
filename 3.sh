if [[ $(ls -l $1 | grep -e "^-r--------.*") ]]; then
    echo "Yes"
fi