recipient="gfm12@case.edu"
for file in *.mdp
do
    mutt -s "subject" -a "$file" -t $recipient < message.txt --
    # uuencode "$file" "$file" | mail -s "subject" $recipient  #using uuencode
done