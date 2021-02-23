# TP1 Hello Java (EN)
> On the behalf of [Samuel toubon](http://wikisamuel.github.io/java/#/)'s modification of [Olivier Levitt](https://formations.levitt.fr/poo-java/#/)'s great job.

* Introduction to Java development environment
* Object oriented design of a simple Pokemon application
* Writing a simple application that handles Pokemon fights

## WARNING
This is the version for students working online on [repl.it](https://www.repl.it) platform. If you want to work with Eclipse on school's virtual machines, take a look at [corresponding guidelines](guidelines_for_practical_session_on_virtual_machine.md).

## 1. A first project: Hello Java

* Start a new [repl.it](https://www.repl.it) project by using the <img src="img/GitHub-Mark-32px.png" width="15"> `Import from GitHub` tabulation in the `Create` menu. The GitHub repository to fork is [github.com/gaudel/java_PS1](https://github.com/gaudel/java_PS1).
* Share the project with your co-workers.
* Open project's folders
* What does each file / folder do ?


## 2. Hello world

Make sure to follow the naming conventions listed [here](https://www.javatpoint.com/java-naming-conventions).

* Create a new class `Main` containing a `main()` method
* Within the `main()` method, display `"Hello world"` to the console
* Run the application, check the console, enjoy

> REMARK: if you want the `Run` button to execute another `main()` method: change as required the last line of `run_button.sh` file, or directly type your commands in `Shell` console.


## 3. Let's design

Before programming, it's important to design the classes. Our app will respect the following specifications:

* Each pokemon belongs to a specie (e.g: Bulbasaur, Charmander ...). A specie has the following characteristics: a number, a name and a type (GRASS, FIRE, WATER)
* There can be multiple Pokemon of a same specie (e.g: multiple Bulbasaur). Each Pokemon has it's own set of attributes: a unique identifier (an integer starting from 0 and incrementing by 1 for each pokemon), a surname (immutable), a size (in inches, may be decimal), a level. A Pokemon starts at level 1. The maximum level is set at 5.


<br />
=> Draw the classes diagram corresponding to these specifications


## 4. Let's implement !

* Create a `core` package that will contain the classes corresponding to previous design
* Create the classes
* Within `main` method of `Main` class, instanciates your first pokemon. You are free to give it any characteristics you want
* Display its characteristics to the console

> Sidequest: Within `Pokemon` class, write [`toString()`](https://docs.oracle.com/javase/8/docs/api/java/lang/Object.html) method which returns a `String` representation of the pokemon's state.


## 5. And ... action !

Pokemons are now able to gain experience points (XP)

* Add a `XP` attribute to `Pokemon`
* Build a new constructor: we want to be able to build a pokemon without providing its XP (in which case the default value is 0) or with a specified starting xp
* Write a new `receiveXP()` method inside `Pokemon`. This method requires the amount of XP as a parameter
* Edit the `main()` method to give XP 100 times to your pokemon (100 times 1 point). Display the state of the pokemon between each gain
* Pokemons may now eat sweets in order to gain more experience. The XP boost depends on the sweet that is eaten. A sweet contains both a name and the amount of XP it gives
* Write the `eatSweet()` method. This method requires a `Sweet` as parameter and increases the Pokemon's XP
* Edit the main function to let your pokemon eat some sweet sweets

> Sidequest: A sweet can only be eaten one time. After the first time, it doesn't give XP anymore


## 6. More action

Pokemons are now ready to fight !

* Add an health point (HP) and strength attribute to `Pokemon`. Starting HP and strength are determined only by the `Specie` of the pokemon but may vary afterwards
* Create an `attack()` method. This function takes the pokemon to fight as parameter. When a pokemon attacks, it deals damage equals to its strength to the other pokemon
* Within the `main()` method, run a fight between 2 pokemons. Rules of the fight are simple: each Pokemon attacks the other until one pokemon becomes KO (KO when HP <= 0)
* Whenever a pokemon wins a fight, it receives 5 XP


## 7. Next level

Currently, pokemons get XP but their level never changes.

* Add to the code, wherever you see fit, the following XP requirements:

| Level        |     XP required     |   
|:------------ | -------------: |
| 1        |     0    |  
| 2      |   5    |  
| 3         |     15      |   
| 4         |     30     |  
| 5        |     100     |  
* Write a function that, given an amount of XP, returns the corresponding level
* Whenever a pokemon gains XP, make sure it's level is updated accordingly


## 8. Adding some RNG (Random Number Generation)

The code is currently deterministic which is not the most fun. Let's shake this a little.

* Using the [Random](https://docs.oracle.com/javase/8/docs/api/java/util/Random.html) class, generate some random characteristics to spice combat


## More food for thought

* Using the [Scanner](https://docs.oracle.com/javase/8/docs/api/java/util/Scanner.html) class, allow User to choose it's Pokemons characteristics
* Run the command `bash build_jar.sh` to export a runnable jar file (the script assumes  `main()` method is in `Main` class in `core/Main.java`). Try running it using this command:   
```
java -jar jeanmichel.jar
```  
Congrats, you now have a working Pokemon application \o/ !
