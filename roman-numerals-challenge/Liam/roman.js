console.log((a=>{o=0;r={M:1E3,CM:900,D:500,CD:400,C:100,XC:90,L:50,XL:40,X:10,IX:9,V:5,IV:4,I:1};Object.keys(r).forEach(b=>{for(;0==a.search(b);)o+=r[b],a=a.replace(b,'')});return o})(process.argv[2]))

/*

function roman(s) {  
  o = 0;

  r = {
      'M': 1000,
      'CM': 900,
      'D': 500,
      'CD': 400,
      'C': 100,
      'XC': 90,
      'L': 50,
      'XL': 40,
      'X': 10,
      'IX': 9,
      'V': 5,
      'IV': 4,
      'I': 1,
  };

  Object.keys(r).forEach(k => {
    while (s.search(k) == 0) {
      o += r[k];
      s = s.replace(k, '');
    }
  });

  return o;
}

console.log(roman(process.argv.pop()));
*/
