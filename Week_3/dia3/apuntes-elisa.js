var Car = function(model, noise) { //Las variables de las funciones constructoras se marcan en mayúscula por convención.
​
  this.model = model;
  this.noise = noise;
  this.wheels = 4;
​
  this.makeNoise = function () {
    console.log(this.noise);
  }
​
};
​
var lancia = new Car("Dedra", "Broooomm!!");
var ford = new Car("Mondeo", "Pumpumpum!!");
​
lancia.makeNoise();
ford.makeNoise();
​
​
​
//WITH PROTOTYPES (so you won't duplicate the function every time you create a new object)
​
var Car = function(model, noise) {
  this.model = model;
  this.noise = noise;
  this.wheels = 4;
​
  console.log('Just created a ' + model);
};
​
Car.prototype.makeNoise = function () {
  console.log(this.noise);
};
​
var lancia = new Car("Dedra", "Broooomm!!");
lancia.makeNoise();
​
​
//SCOPE (without 'this', the number of wheels is not accesible outside var Car. But we can make it accesible again thanks to the function this.howManyWheels)
​
var Car = function(model, noise) {
  this.model = model;
  this.noise = noise;
  wheels = 4;
​
  this.howManyWheels = function (){
    console.log(wheels);
  }
};
​
Car.prototype.makeNoise = function () {
  console.log(this.noise);
};
​
var lancia = new Car("Dedra", "Broooomm!!");
lancia.makeNoise();
lancia.howManyWheels();
​
​
//ALTERNATIVES TO THIS-NEW
​
var carBuilder = function(model, noise){
  var that = {};
​
  function makeNoise(){
    console.log(that.noise);
  };
​
  that.model = model; //'that' se escribe por convención (en contraposición a 'this') pero es simplemente el nombre de una variable.
  that.noise = noise;
  that.makeNoise = makeNoise;
​
  return that;
}
​
var ferrari = carBuilder('Ferrari', 'Brooom!!');
ferrari.makeNoise();
​
​
//USE STRICT
//Para controlar el scope de 'this'
​
'use stric' //Al inicio del documento