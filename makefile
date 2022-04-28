all: README.md

README.md: guessinggame.sh
    echo "# Guessing Game " > README.md
    echo "\n This is the README.md file needed for the project " >> README.md
    echo -n "\n**Date**" >> README.md
    echo -n "\n" >> README.md
    date >> README.md
    echo -n "\n" >> README.md
    echo -n "**The number of lines**" >> README.md
    echo -n "\n" >> README.md
    wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
    rm README.md