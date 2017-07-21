o=0;a=process.argv[2];r={M:1E3,CM:900,D:500,CD:400,C:100,XC:90,L:50,XL:40,X:10,IX:9,V:5,IV:4,I:1};for(b in r)for(;!a.search(b);)o+=r[b],a=a.replace(b,'');console.log(o)

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

  for(k in r) {
    while (s.search(k) == 0) {
      o += r[k];
      s = s.replace(k, '');
    }
  }

  return o;
}

console.log(roman(process.argv[2]));
*/
