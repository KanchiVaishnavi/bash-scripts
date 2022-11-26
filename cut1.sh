#cat state.txt | cut -d " " -f 1 | head -n 3 
#sort -r = reverse

grep "\bsession opened for user guest\b" myauth.log | tail -1 | cut -d " " -f 1-3