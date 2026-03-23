#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE games,teams")

#Read games.csv

cat ./games.csv | while IFS="," read -r YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  #insert data into teams table
  
  #get winner team name

  #exclude first row

  if [[ $WINNER != "winner" ]]

  then
    #get team name

    TEAM_NAME1=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")

    #if not found
    if [[ -z $TEAM_NAME1 ]]

    then
      #insert new team
      INSERT_TEAM_NAME1=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")

      #insert conformation
      if [[ $INSERT_TEAM_NAME1 == "INSERT 0 1" ]]

      then
        echo Inserted $WINNER
      
      fi

    fi

  fi

  #get opponent team name

  #exclude top row
  if [[ $OPPONENT != "opponent" ]]
  
  then
  #get team name
    TEAM_NAME2=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")

    #if not found
    if [[ -z $TEAM_NAME2 ]]

    then
      #insert new team
      INSERT_TEAM_NAME2=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      
      #insert confirmation
      if [[ $INSERT_TEAM_NAME2 == "INSERT 0 1" ]]

      then
        echo Inserted $OPPONENT

      fi

    fi

  fi

  #INSERT GAMES DATA

  #exclude top row
  if [[ $YEAR != "year" ]]

  then
    #get winner_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

    #get opponent_id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    #insert new game row
    INSERT_GAME=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS,$OPPONENT_GOALS)")

    #insert confirmation
    if [[ $INSERT_GAME == "INSERT 0 1" ]]

    then
      echo Inserted $YEAR, $ROUND ,$WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS

    fi
    
  fi

done
