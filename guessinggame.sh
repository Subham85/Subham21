#file:guessinggame.sh

echo "HOW MANY FILES ARE THERE IN THE CURRENT DIRECTORY ?"
echo "PUT YOUR GUESS"
read b
a=$(ls -1 | wc -l)

function guess {
echo "TRY AGAIN"
if [[ $b -lt $a ]]
then 
echo "TOO LOW TO THE CORRECT ANSWER"
else
echo "TOO HIGH TO THE CORRECT ANSWER"
fi
echo "PUT YOUR GUESS"
read b
}

while [[ $a -ne $b ]] || [[ $a -eq $b ]]
do
if [[ $a -eq $b ]]
then
echo "CONGRATULATIONS !"
break
else
guess
fi
done
