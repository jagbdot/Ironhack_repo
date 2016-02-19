function getRandomArbitrary(min, max) {
  var aleatorio = Math.random() * (max - min) + min;
  return Math.round(aleatorio)
}

var Vikings = function(v_name) {
  this.v_name = v_name;
  this.health = getRandomArbitrary(1, 20);
  this.strength = getRandomArbitrary(1, 20);

  this.attack = function() {
    console.log(this.v_name + " has attacked!");
    return this.strength;
  }

  this.reduceDamage = function(damage) {
    console.log(this.v_name + " has recieve damage!");
    return this.health -= damage;
  }
};

var Pit = function(figther1, figther2, turns) {
  this.figther1 = figther1;
  this.figther2 = figther2;
  this.turns = 1;

  this.fight = function() { 
    while ((this.figther2.health > this.figther1.strength) || (figther1.strength < this.figther2.health)) {
      this.figther2.reduceDamage(this.figther1.attack());
      this.figther1.reduceDamage(this.figther2.attack());
      this.turns ++;
    }
  }

   this.status_fight = function() {
      console.log('They had fight ' + this.turns + ' rounds!')
      console.log(this.figther1.v_name + ' has ' + this.figther1.health + ' of energy left');
      console.log(this.figther2.v_name + ' has ' + this.figther2.health + ' of energy left');
   }

   this.look_for_a_winner = function(){
      if (this.figther2.health > this.figther1.health) {
        console.log('THE WINNER IS ' + this.figther2.v_name.toUpperCase() + '!')
      }
      else if (this.figther1.health > this.figther2.health) {
        console.log('THE WINNER IS ' + this.figther1.v_name.toUpperCase()  + '!')
      }
      else {
        console.log('There is no winner here!')
      }
   }
};

var Saxon = function() {
  this.health = getRandomArbitrary(1, 10);
  this.strength = getRandomArbitrary(1, 10);

  this.attack = function() {
    console.log("Saxon has attacked!");
    return this.strength;
  }

  this.reduceDamage = function(damage) {
    console.log("Saxon has recieve damage!");
    return this.health -= damage;
  }
};

function Create_SaxonArmy() {
  this.ArraySaxonArmy = [];

  this.createArmy = function() {
    for (i = 0; i < 20; i++){
      this.ArraySaxonArmy.push(new Saxon())
    }
  }
};

var FinalBattle = function(vikings, saxons) {
  this.vikings = vikings
  this.saxons = saxons

  this.figthers = function() {
    while ((this.vikings.length !== 0) || (this.saxons.length !== 0)) {
      var randomViking = this.vikings[Math.random() * (this.vikings.length - min) + min];
      var randomSaxon = this.saxons[Math.random() * (this.saxons.length - min) + min];
    }
  }

  this.battle = function() {
    this.randomViking.reduceDamage(randomSaxon.attack());
    this.randomSaxon.reduceDamage(randomViking.attack());
  }

  this.battle_status = function() {
    
  }
};

// Vikingos
var vikingArmy = [
  viking1 = new Vikings("Micky"),
  viking2 = new Vikings("Munchi"),
  viking3 = new Vikings("Binnie"),
  viking4 = new Vikings("Rowie"),
  viking5 = new Vikings("Zansi")
]

// Saxones
var saxonArmy = new Create_SaxonArmy();

// Entrenamiento de Vikingos
var arena = new Pit(viking1, viking2);

console.log("-------training space-------");
arena.fight()
arena.status_fight()
arena.look_for_a_winner()

// Aldea de saxones
console.log("-------army of saxons!-------");
saxonArmy.createArmy()
console.log(saxonArmy.ArraySaxonArmy)

console.log("-------final battle!-------");
var war = new FinalBattle(vikingArmy, saxonArmy.ArraySaxonArmy)
