// var arrayExample = [ 2,-5,10,5,4,-10, 0 ]

// var result = arrayExample.reduce(function (result, x, i) {
//   return arrayExample.reduce(function(aux, y, j) {
//     return x + y === 0
//       ? aux.concat('(' + i + ',' + j + ')')
//       : aux
//   }, result)
// }, [])

// console.log(result)


function avarageColon(numbers) {
  return numbers.split(":").reduce(function(sum, item, index, vector) {
    return (parseInt(sum) + parseInt(item)) / vector.length
  })
}

console.log(avarageColon("80:70:90:100"))


function avarageColon(numbers) {
  return numbers.split(':').reduce(function(sum, item, index, vector) {
    return sum + parseInt(item) / vector.length
  })
}