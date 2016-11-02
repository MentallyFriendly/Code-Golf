function f(a) {
  return JSON.parse('['+a.toString().replace(/,?([^\d,.]+),?/g,',"$1",').replace(/,+/g, ',').replace(/^,/, '').replace(/,$/, '')+']')
}
