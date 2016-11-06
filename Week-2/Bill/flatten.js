var array = [[0, 1], 2, 3, [4, 5, [6, [7], 8], [9]]]
var newArray = [];

function loop(array) {
   array.forEach( (a, i) => {
      if (Array.isArray(a)) {
         loop(a)
      } else if(!Array.isArray()) {
         newArray.push(a)
      } else if (i === array.length) {
         return;
      }
      console.log( newArray )
   })
}
loop(array);
