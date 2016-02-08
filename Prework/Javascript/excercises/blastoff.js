function blastOff(number) {
    var i;
    
    for (i = number; i > -1; i = i - 1) {
        console.log(i);
    }
    
    return "Blast off!"
}

var test;

test = blastOff(3);

console.log(test)