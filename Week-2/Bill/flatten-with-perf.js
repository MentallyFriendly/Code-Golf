var golf = [[0, 1], 2, 3, [4, 5, [6, [7], 8], [9]]];

// a = array
// p = temp progress array
// r = results array
l=(a,p)=>{p?r=p:r=[];a.forEach((e)=>{Array.isArray(e)?l(e,r):r.push(e)});return r}

var t0 = performance.now()
var result = l(golf)
var t1 = performance.now()
console.log('Took', (t1 - t0).toFixed(4), 'milliseconds to generate: ', result);

console.log( l(golf) );
