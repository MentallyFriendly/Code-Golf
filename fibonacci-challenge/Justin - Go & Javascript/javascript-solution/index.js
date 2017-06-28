var bignum = require('bignum');

// var bigFib = bignum(1548008755920)
// var bigFib = bignum(21)
var bigFib = bignum(16130531424904581415797907386349)
// var bigFib = 176023680645013966468226945392411250770384383304492191886725992896575345044216019675

let fibArr = [0,1,1];

for (var i = 1; i < bigFib; i++) {
  var fibLast = fibArr[(fibArr.length - 1)];
  var fibSecLast = fibArr[(fibArr.length - 2)]
  var nextFib = fibLast + fibSecLast

  if (nextFib == bigFib) {
    console.log("Yes!!!!");
    return
  }
  fibArr.push(nextFib)
}
