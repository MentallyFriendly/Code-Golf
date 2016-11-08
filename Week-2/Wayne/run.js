var flatten = require('./index')

let array = [[0, 1], 2, {}, [4, 5, [['two'], [], []], [9]]]

console.log(flatten(array, []))
