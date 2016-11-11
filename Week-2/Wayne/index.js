module.exports=(a,r)=>{l=(a)=>(Array.isArray(a))?a.map((a)=>(a.length)?l(a):(a++)?r.push(a):null):r.push(a);l(a);return r}
