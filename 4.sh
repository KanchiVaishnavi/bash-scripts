#myCount.sh

#sed -ne "/^[[:digit:]]/p" input.txt | sed -n "\$="

#grep "\bFAILED LOGIN\b" myauth.log | wc -l

#sed -e '/^[[:digit:]]/s/unix/linux/' sedtext1.txt

{
    if(max<FNR) {
        max=FNR
        f=FILENAME
    }
}
END { 
    print f; 
}

egrep "systemd-logind\[[0-9]+\]" myauth.log | grep user | cut -d " " -f 11 | cut -d "." -f 1 | sort | uniq

max = $1
min = $1
for i in "$@"; do
    if [ $i -ge $max ]; then
        max=$i
    fi
    if [ $i -le $min ]; then
        min=$i
    fi
done;

echo "Maximum=$max | Minimum=$min"

#sed -e "/[[:alnum:]+](.*)[[:space:]]*{/i # START FUNCTION" \
#    -e "/^[[:space:]]*/a # END FUNCTION" functions.sh

sed 's/^\([^:]*\):\([^:]*\)/\2:\1/
s/?$/!/' #question mark (?) at the end of line '$' is replaced by '!'

awk -F, '{print $1}' marks.csv

sed -n '/FROM/,/TO/p' input.txt | sed '/FROM/d' | sed '/TO/d'

BEGIN {
  prev="";
  
}

{
  $0=tolower($0);
  #gsub(/[^A-Za-z0-9 \t]/, "");
  for (i = 1; i <= NF; i++) {
    if ($i == prev) {
      print $i
                
    }
    prev = $i;
  }
}

BEGIN{
  FS = ","
}

{
  if (NR == 1){
    l1997 = 0; c1997 = 0; av1997 = 0;
    l1998 = 0; c1998 = 0; av1998 = 0;
    l1999 = 0; c1999 = 0; av1999 = 0;
    l2000 = 0; c2000 = 0; av2000 = 0;
  }
  EID = $1;
  leave = int($3);
  # to obtain year from employee ID
  year = int(substr(EID, 2, 4));
  if (year == 1997)
  {
    l1997 = l1997 + leave; c1997++;}
  else if (year == 1998)
  {
    l1998 = l1998 + leave; c1998++;}
  else if (year == 1999)
  {
    l1999 = l1999 + leave; c1999++;}
  else if (year == 2000)
  {
    l2000 = l2000 + leave; c2000++;}
}

END{
  if (c1997 != 0)
    {av1997 = l1997/c1997;}
  if (c1998 != 0)
    {av1998 = l1998/c1998;}
  if (c1999 != 0)
    {av1999 = l1999/c1999;}
  if (c2000 != 0)
    {av2000 = l2000/c2000;}
  print (int(av1997))
  print (int(av1998))
  print (int(av1999))
  print (int(av2000))
}
}