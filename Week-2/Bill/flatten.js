var golf = [[0, 1], 2, 3, [4, 5, [6, [7], 8], [9]]]

// a = array
// p = temp progress array
// r = results array

l=(a,p)=>{p?r=p:r=[];a.forEach((e)=>{Array.isArray(e)?l(e,r):r.push(e)});return r}

console.log(l(golf));
