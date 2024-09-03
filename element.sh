#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"


#check for initial argument
if [[ -n $1 ]]; then
    #check if input is number
    if [[ $1 =~ ^[0-9]+$ ]]; then
        #get elements from db
        GET_INFORMATION=$($PSQL "SELECT e.atomic_number, e.name, e.symbol,
    t.type, p.atomic_mass, p.melting_point_celsius, p.boiling_point_celsius 
    FROM elements e JOIN properties p ON e.atomic_number = p.atomic_number 
    JOIN types t ON p.type_id = t.type_id 
    WHERE e.atomic_number='$1'")
        #check if input is valid
        if [[ -z $GET_INFORMATION ]]; then
            echo "I could not find that element in the database."
            exit
        fi
        #get properties from db
        #-GET_PROPERTIES=$($PSQL "SELECT * FROM properties WHERE atomic_number='$1'")
        #format | out of result
        ELEMENT_PROPERTIES_FORMAT=$(echo "$GET_INFORMATION" | sed 's/|/ /g')
        #echo $ELEMENT_PROPERTIES_FORMAT
        echo "$ELEMENT_PROPERTIES_FORMAT" | while read ATOMIC_NUMBER NAME SYMBOL TYPE ATOMIC_MASS MELTING_PC BOILING_PC; do
            echo -e "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_PC celsius and a boiling point of $BOILING_PC celsius."
        done

    #else go by name or symbol
    else
        GET_INFORMATION=$($PSQL "SELECT e.atomic_number, e.name, e.symbol,
    t.type, p.atomic_mass, p.melting_point_celsius, p.boiling_point_celsius 
    FROM elements e JOIN properties p ON e.atomic_number = p.atomic_number 
    JOIN types t ON p.type_id = t.type_id 
    WHERE e.name='$1' OR e.symbol='$1'")
        #check if input is valid
        if [[ -z $GET_INFORMATION ]]; then
            echo "I could not find that element in the database."
            exit
        fi
        #get properties
        #-GET_PROPERTIES=$($PSQL "SELECT properties.* FROM properties JOIN elements ON elements.atomic_number = properties.atomic_number WHERE name='$1' OR symbol='$1'")
        #format | out of result
        ELEMENT_PROPERTIES_FORMAT=$(echo "$GET_INFORMATION" | sed 's/|/ /g')
        #echo $ELEMENT_PROPERTIES_FORMAT
        echo "$ELEMENT_PROPERTIES_FORMAT" | while read ATOMIC_NUMBER NAME SYMBOL TYPE ATOMIC_MASS MELTING_PC BOILING_PC; do
            echo -e "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_PC celsius and a boiling point of $BOILING_PC celsius."
        done

    fi
else
echo "Please provide an element as an argument."
exit
fi
