Welcome to Pokemon On Rails

I will be using PokeAPI for this project - ERD is included at /Docs/Pokemon_on_rails.drawio

Endpoints used
https://pokeapi.co/api/v2/pokemon/* - Used to seed the DB with Pokemon
https://pokeapi.co/api/v2/ability/* - Used to seed the DB with Abilities
https://pokeapi.co/api/v2/move/* - Used to seed the DB with Moves
https://pokeapi.co/api/v2/type/* - Used to seed the DB with types


Tables
* Pokemon
  * name
  * baseExperience
  * hp
  * attack
  * defense
  * specialAttack
  * specialDefense
  * speed
  * weight
  * height

* Sprites - 1 to 1 with Pokemon
  * spriteFront
  * spriteBack
  * spriteShinyFront
  * spriteShinyBack
  * spriteFemaleFront
  * spriteFemaleBack
  * spriteFemaleShinyFront
  * spriteFemaleShinyBack

* Types - Many to Many with Pokemon, connected with joiner table Pokemon_Types
  * name

* Abilities - Many to Many with Pokemon, connected with joiner table Pokemon_Abilities
  * name
  * effect

* Moves - Many to Many with Pokemon, connected with joiner table Pokemon_Moves
  * name
  * accuracy
  * effect
  * power
  * pp


All of these