var myRover = {
  position: [0,0], 
  direction: 'N'
};

// dibujo de grilla

var myArray = new Array(10);

for (var i = 0; i < 10; i++) {
  myArray[i] = new Array(10);
}

myArray[0][0] = "00";
myArray[0][1] = "01";
myArray[0][2] = "02";
myArray[0][3] = "03";
myArray[0][4] = "04";
myArray[0][5] = "05";
myArray[0][6] = "06";
myArray[0][7] = "07";
myArray[0][8] = "08";
myArray[0][9] = "09";

myArray[1][0] = "10";
myArray[1][1] = "11";
myArray[1][2] = "12";
myArray[1][3] = "13";
myArray[1][4] = "14";
myArray[1][5] = "15";
myArray[1][6] = "16";
myArray[1][7] = "17";
myArray[1][8] = "18";
myArray[1][9] = "19";

myArray[2][0] = "20";
myArray[2][1] = "21";
myArray[2][2] = "22";
myArray[2][3] = "23";
myArray[2][4] = "24";
myArray[2][5] = "25";
myArray[2][6] = "26";
myArray[2][7] = "27";
myArray[2][8] = "28";
myArray[2][9] = "29";

myArray[3][0] = "30";
myArray[3][1] = "31";
myArray[3][2] = "32";
myArray[3][3] = "33";
myArray[3][4] = "34";
myArray[3][5] = "35";
myArray[3][6] = "36";
myArray[3][7] = "37";
myArray[3][8] = "38";
myArray[3][9] = "39";

myArray[4][0] = "40";
myArray[4][1] = "41";
myArray[4][2] = "42";
myArray[4][3] = "43";
myArray[4][4] = "44";
myArray[4][5] = "45";
myArray[4][6] = "46";
myArray[4][7] = "47";
myArray[4][8] = "48";
myArray[4][9] = "49";

myArray[5][0] = "50";
myArray[5][1] = "51";
myArray[5][2] = "52";
myArray[5][3] = "53";
myArray[5][4] = "54";
myArray[5][5] = "55";
myArray[5][6] = "56";
myArray[5][7] = "57";
myArray[5][8] = "58";
myArray[5][9] = "59";

myArray[6][0] = "60";
myArray[6][1] = "61";
myArray[6][2] = "62";
myArray[6][3] = "63";
myArray[6][4] = "64";
myArray[6][5] = "65";
myArray[6][6] = "66";
myArray[6][7] = "67";
myArray[6][8] = "68";
myArray[6][9] = "69";

myArray[7][0] = "70";
myArray[7][1] = "71";
myArray[7][2] = "72";
myArray[7][3] = "73";
myArray[7][4] = "74";
myArray[7][5] = "75";
myArray[7][6] = "76";
myArray[7][7] = "77";
myArray[7][8] = "78";
myArray[7][9] = "79";

myArray[8][0] = "80";
myArray[8][1] = "81";
myArray[8][2] = "82";
myArray[8][3] = "83";
myArray[8][4] = "84";
myArray[8][5] = "85";
myArray[8][6] = "86";
myArray[8][7] = "87";
myArray[8][8] = "88";
myArray[8][9] = "89";

myArray[9][0] = "90";
myArray[9][1] = "91";
myArray[9][2] = "92";
myArray[9][3] = "93";
myArray[9][4] = "94";
myArray[9][5] = "95";
myArray[9][6] = "96";
myArray[9][7] = "97";
myArray[9][8] = "98";
myArray[9][9] = "99";

// Imprime la grilla

for (var i = 0; i < 10; i++) {
  for (var j = 0; j < 10; j++) {
    document.write (myArray[i][j] + '&emsp;');
  }
  document.write("<br/>");
}

// Ve hacia adelante

function goForward(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[0]++
      break;
    case 'E':
      rover.position[1]++
      break;
    case 'S':
      rover.position[0]--
      break;
    case 'W':
      rover.position[1]--
      break;
  };

  console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
}

goForward(myRover);

// Ve hacia atrás

function goBack(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[0]--
      break;
    case 'E':
      rover.position[1]--
      break;
    case 'S':
      rover.position[0]++
      break;
    case 'W':
      rover.position[1]++
      break;
  };

  console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
}

goBack(myRover);

// Torna a la izquierda

function turnLeft(rover) {
  switch(rover.direction) {
    case 'N':
      rover.direction['N']
      break;
    case 'E':
      rover.direction['E']
      break;
    case 'S':
      rover.direction['S']
      break;
    case 'W':
      rover.direction['W']
      break;
  };

  console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
}

turnLeft(myRover);

// Los comandos

var theCommands = [""]
for (var index = 0; index < theCommands.length; index++) {
  var command = theCommands[index];
  if (command === 'f') {
    goForward();
  }
  else if (command === 'b') {
    goBack(); 
  }
  else if (command === 'r') {
    turnRigth(); 
  }
  else if (command === 'l') {
    turnLeft(); 
  }

}


