
echo "Guessing Game"\n
echo "Hello try this game!"\n
echo "This game is about guessing the number of files in the repository"\n
echo  "Try it"\n

function ask {
    echo "How many files do you think there are:"
    read fileguess
}

function check {
        if [[ $guess -gt $numeroffiles ]] 
    then
        echo "this number is too high! "
        echo "Try another number"
    elif [[ $guess -lt $numeroffiles ]] 
    then
        echo "This number is too low!"
        echo "Try another bigger number"
    fi
    ask
}

numeroffiles=$(ls -l |grep "^-"|wc -l)
ask
while [[ $guess -ne $numberoffiles ]]
do
check
done

echo "Thats the number "
echo "Congratulation"
echo "The number of files was $numerooffiles"
