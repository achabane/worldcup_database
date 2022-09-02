#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games, teams;")
echo -e "\n -----------Team adding ----------------\n"
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  #verify if it the first line
  if [[ $YEAR != "year" ]]
  then

    #get winner id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'") 
    #If not found, add the team
    if [[ -z $WINNER_ID ]]
    then
      echo $($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")             
    fi

    #get opponent id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'") 
    #If not found, add the team
    if [[ -z $OPPONENT_ID ]]
    then
      echo $($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")             
    fi
  fi
done

echo -e "\n -----------Games adding ----------------\n"
#For inserting all values in the game table
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    #get the winner id 
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'") 
    #get the opponent id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'") 

    #insertion into games
    echo $($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) VALUES($YEAR, '$ROUND',$WINNER_GOALS,$OPPONENT_GOALS,$WINNER_ID,$OPPONENT_ID)")             

  fi

done
