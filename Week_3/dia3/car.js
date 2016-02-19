var Car = function(model, noise) {
  model = model;
  noise = noise;
  number_of_wheels = 4

  this.prototype.printNoise = function() {
    console.log(noise);
  }
};

var super_car = new Car("FJ", "Brrum!")
var another_car = new Car("FJ", "mmmm!")

super_car.printNoise()
another_car.printNoise()