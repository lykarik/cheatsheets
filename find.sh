#Just file names. Recursive search from current dir
find | awk -F '/' '{print $NF;}'

#Move files found by the mask
find /mnt/backup/*site.ru* -type f -exec mv {} /web/sites/ \;

#Find files by the mask then zip them
find /data/1c-bases-backup -type f -name 1Cv8.1CD -exec gzip '{}' \;

#Rename found files
find /backup/sql -type f -name "*.sql.gz" -exec mv {} {}.old \;

#Listed found files greater then 100M with ls
find /data -type f -size +100M -exec ls -lh '{}' \;

#Search by content
find /web/site.ru -type f -exec grep -i -H "file.txt" {} \;

#Count found files
find /home/user -type f | wc -l

#Searh by the time interval (then mv, cp or something can be used by adding to command tail)
find /mnt/zz_archive -type f -newermt '2022-01-01 00:01' ! -newermt '2022-01-31 23:59'

#Ignore letter case
find /data -type f -iname FILE_NAME

#By date, was edit 30 days ago
find /data -type f -mtime +30

#was ebit by 5 last days
find /data -type f -mtime -5

#was edit20-30 min ago
find /data -type f -mmin -20 -mmin +10

#Sort by edit date
find /data -type f -printf '%TY-%Tm-%Td %TT %p\n' | sort -r

#Reverse sort
find /data -type f -printf '%TY-%Tm-%Td %TT %p\n' | sort
