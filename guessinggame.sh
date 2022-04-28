
echo "Guessing Game "
echo "Hello try this game!"
echo "This game is about guessing the number of files in the repository "
echo  "Try it "

function ask {
    echo "How many files do you think there are:"
    read fileguess
}

function check {
        if [[ $fileguess -gt $numeroffiles ]]
    then
        echo "this number is too high! "
        echo "Try another number"
    elif [[ $fileguess -lt $numeroffiles ]]
    then
        echo "This number is too low!"
        echo "Try another bigger number"
    fi
    ask
}

numeroffiles=$(ls -l |grep "^-"|wc -l)
ask
while [[ $fileguess -ne $numeroffiles ]]
do
check
done

echo "Thats the number "
echo "Congratulation"
echo "The number of files was" $numeroffiles
