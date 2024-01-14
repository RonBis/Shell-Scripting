# simulate the wc command (word count)

# $1 -> flag
# $2 -> source file

exec<$2

case $1 in
"-l")
    nol=0
    while read line # read line is kind of a func
    do
        nol=`expr $nol + 1`
    done
    echo $nol;;
"-w")
    now=0
    while read line
    do
        set $line
        now=`expr $now + $#` # no of args(words) in each line
    done
    echo $now;;
"-c")
    noc=0
    while read line
    do
        set $line
        for word in $@  # '$@ means all args(words) in each line'
        do
            noc=`expr $noc + length $word`
        done
    done
    echo $noc;;
*)
    echo "Invalid argument"
esac
