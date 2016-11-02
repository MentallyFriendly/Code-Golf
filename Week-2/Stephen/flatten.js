function f(a) {
  return JSON.parse('['+a.toString().replace(/^,$/, '')+']')
}
