
# COMP2041
# 
#================================
# 
Lecture Notes, notes taken
Bash command flags (sort, grep, uniq ...)
Past lab work, bash
Prac exam, tut13
Hard question, DP, BFS, Dijkstra, isprime


Question and answer 



bash    grep, egrep, sort, tr, cut, uniq, expr (expected result)
perl 	last, next
python 	findall, match
CGI		

# REVIEW
#===========================
# Lab 2

#---------------------------
# Tut 2
# Good: 

# Unsolved: 


# Unattempted: 

#===========================
# Lab 3



for file in test/*		# Multiple elements
for file in 'test/*'	# Single string


declare MediumFiles
for f in *
line=`wc -l<$f`
if [ $line -lt 10 ]
MediumFiles="$MediumFiles $f"
for ((i=0;i < $1;i++)) do done


echo "$undergraduate" "$postgraduate" |sort| uniq|egrep ^$1


#---------------------------
# Tut 3
# Good: 

2 cat $1 |rev|sort -t' ' -k3.2
3 if [ ! -r "$f"]

6 Exam question
	
7 if ! [[ $num =~ '[0-9]+' ]]

11 Exam question
   tr -d ' '|wc -w

13 Exam question
14 Exam question

# Unsolved: 


# Unattempted: 

#===========================
# Lab 4



SAVEIFS=$IFS
IFS=''
IFS=$SAVEIFS


# ./fix_id3_tags.sh 'music/Triple J Hottest 100, 2006'
find $@ -name '*.mp3' | while read filename; 


Title=`echo $filename|sed 's/\(.*\) - \(.*\) - \(.*\)/\2/'`
Artist=`echo $filename|sed 's/\(.*\) - \(.*\) - \(.*\)/\3/'|sed 's/.mp3//'`
Title=`echo $filename|cut -d'/' -f3|sed 's/'-'/'#'/'|rev|sed 's/'-'/'#'/'|rev|cut -d'#' -f2|sed s/' '//`
Artist=`echo $filename|cut -d'/' -f3|sed 's/'-'/'#'/'|rev|sed 's/'-'/'#'/'|rev|cut -d'#' -f3|sed s/' '//|sed s/'.mp3'//g`

i=`expr $i + 1`


#---------------------------
# Tut 4
# Good: 

3 for file in `find "$@" -type f`
6 Exam question

# Unsolved: 

# Unattempted: 


#===========================
# Lab 5

ord($byte) >= ord('0')
chr(0x30)


for($i=0;$i<$n;$i++) #do


use POSIX;
$index= floor(rand($num-$i));
splice(@array, $index, 1);		# delete element at index


seek F,0,0;



#---------------------------
# Tut 5

# Good: 
1 Git exam question
2 difference between "", '' "$2.50", '$2.50'

# Unsolved: 
# Unattempted: 
All python version


#===========================
# Lab 6

#---------------------------
# Tut 6

# Good: 
3 Exam question, what does program print

6 if($mark !~ /^\d+$/)
  $err = ($grade ne "??") ? "" : " ($mark)";

7 $phones{"$id:$type"} = $number;
  foreach $type ('mobile', 'home', 'work') {
  my $key = "$id:$type";
  if (defined($phones{$key})


# Unsolved: 
# Unattempted: 
All python version




#===========================
# Lab 7

#---------------------------
# Tut 7

# Good: 
1 @words = $line =~ /\w+/g;


3 shortest path
5 2D Hash
  foreach $word2 (sort keys %{$count{$word1}})


# Unsolved: 
# Unattempted: 
All python version

#===========================
# Lab 8 



#---------------------------
# Tut 8

# Good: 
10 read and write files
15, 16 map and grep

# Unsolved: 
8 error on find files

# Unattempted: 
11
12
13


#===========================
# Lab 9

#---------------------------
# Tut 9
# Good: 

$username = substr $username, 0, 256;
$username =~ s/\W//g;


<form method="GET" action="">
x=`echo $parameters|sed '
    s/.*x=//
    s/&.*//
    s/[^0-9\-\.\+]//g
    '`



# Unsolved: 


# Unattempted: 



#===========================
# Lab 10

#---------------------------
# Tut 10
# Good: 

# Unsolved: 


# Unattempted: 


#===========================
# Lab 11

#---------------------------
# Tut 11
# Good: 

# Unsolved: 


# Unattempted: 



#===========================
# Lab 12

#---------------------------
# Tut 12
# Good: 


# Unsolved: 

# Unattempted: 



#===========================
# Lab 13

#---------------------------
# Tut 13
# Good: 
8.c write test data, correctness and reliability


# Unsolved: 

# Unattempted: 
12
18
19
20


#===========================
