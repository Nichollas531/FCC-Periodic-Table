<p align="center">
</p>

<h3 align="center">Periodic Table</h3>

<div align="center">

</div>

---

<p align="center"> A FreeCodeCamp project from the Relational Database Certificate
    <br> 
</p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Authors](#authors)
- [Acknowledgments](#acknowledgement)
- [Git Tree](#git_tree)

## 🧐 About <a name = "about"></a>

This is one of the required projects to earn my certification.

For this project, I will create Bash a script to get information about chemical elements from a periodic table database.

## 🏁 Getting Started <a name = "getting_started"></a>

I was faced with the following steps:

### Part 1: Fix the database

There are some mistakes in the database that need to be fixed or changed.

### Part 2: Create your git repository

You need to make a small bash program. The code needs to be version controlled with git, so you will need to turn the suggested folder into a git repository.

### Part 3: Create the script

Lastly, you need to make a script that accepts an argument in the form of an atomic number, symbol, or name of an element and outputs some information about the given element.

### Tasks to be Completed

<ul>
<li>You should rename the weight column to atomic_mass</li>
<br>
<li>You should rename the melting_point column to melting_point_celsius and the boiling_point column to boiling_point_celsius</li>
<br>

<li>Your melting_point_celsius and boiling_point_celsius columns should not accept null values</li>
<br>

<li>You should add the UNIQUE constraint to the symbol and name columns from the elements table</li>
<br>

<li>Your symbol and name columns should have the NOT NULL constraint</li>
<br>

<li>You should set the atomic_number column from the properties table as a foreign key that references the column of the same name in the elements table</li>
<br>

<li>You should create a types table that will store the three types of elements</li>
<br>

<li>Your types table should have a type_id column that is an integer and the primary key</li>
<br>

<li>Your types table should have a type column that's a VARCHAR and cannot be null. It will store the different types from the type column in the properties table</li>
<br>

<li>You should add three rows to your types table whose values are the three different types from the properties table</li>
<br>

<li>Your properties table should have a type_id foreign key column that references the type_id column from the types table. It should be an INT with the NOT NULL constraint</li>
<br>

<li>Each row in your properties table should have a type_id value that links to the correct type from the types table</li>
<br>

<li>You should capitalize the first letter of all the symbol values in the elements table. Be careful to only capitalize the letter and not change any others</li>
<br>

<li>You should remove all the trailing zeros after the decimals from each row of the atomic_mass column. You may need to adjust a data type to DECIMAL for this. The final values they should be are in the atomic_mass.txt file</li>
<br>

<li>You should add the element with atomic number 9 to your database. Its name is Fluorine, symbol is F, mass is 18.998, melting point is -220, boiling point is -188.1, and it's a nonmetal</li>
<br>

<li>You should add the element with atomic number 10 to your database. Its name is Neon, symbol is Ne, mass is 20.18, melting point is -248.6, boiling point is -246.1, and it's a nonmetal</li>
<br>

<li>You should create a periodic_table folder in the project folder and turn it into a git repository with git init</li>
<br>

<li>Your repository should have a main branch with all your commits</li>
<br>

<li>Your periodic_table repo should have at least five commits</li>
<br>

<li>You should create an element.sh file in your repo folder for the program I want you to make</li>
<br>

<li>Your script (.sh) file should have executable permissions</li>
<br>

<li>If you run ./element.sh, it should output only Please provide an element as an argument. and finish running.</li>
<br>

<li>If you run ./element.sh 1, ./element.sh H, or ./element.sh Hydrogen, it should output only The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.</li>
<br>

<li>If you run ./element.sh script with another element as input, you should get the same output but with information associated with the given element.</li>
<br>

<li>If the argument input to your element.sh script doesn't exist as an atomic_number, symbol, or name in the database, the only output should be I could not find that element in the database.</li>
<br>

<li>The message for the first commit in your repo should be Initial commit</li>
<br>

<li>The rest of the commit messages should start with fix:, feat:, refactor:, chore:, or test:</li>
<br>

<li>You should delete the non existent element, whose atomic_number is 1000, from the two tables</li>
<br>

<li>Your properties table should not have a type column</li>
<br>

<li>You should finish your project while on the main branch. Your working tree should be clean and you should not have any uncommitted changes</li>
</ul>

## 🌲 Git Tree <a name = "git_tree"></a>

Here is a screenshot showing the git tree resulting of the work done

<img source="git-tree.png" alt="Git Tree">

## ⛏️ Built Using <a name = "built_using"></a>

- [Git](https://www.mongodb.com/) - Distributed Version Control System
- [Bash](https://expressjs.com/) - Script Language
- [PreSQL](https://vuejs.org/) - Database
- [Ubuntu](https://nodejs.org/en/) - Operational System

## ✍️ Authors <a name = "authors"></a>

- [@Nichollas531](https://www.linkedin.com/in/nichollas-garcia-7ba8601b5/) - Reposiroty creator and developer


## 🎉 Acknowledgements <a name = "acknowledgement"></a>

- Better understanding of PreSQL functionalities
- Git conventional procedures
- Bash scripting 
